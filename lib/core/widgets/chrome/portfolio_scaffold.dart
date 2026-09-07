import 'package:flutter/material.dart';

import '../../utils/responsive/app_breakpoints.dart';
import '../common/page_background.dart';
import '../motion/reveal_scope.dart';
import 'mobile_nav_drawer.dart';
import 'site_footer.dart';
import 'top_nav_bar.dart';

/// Shared chrome for every screen: pinned nav, the scrolling section body,
/// and the one site-wide footer.
class PortfolioScaffold extends StatefulWidget {
  const PortfolioScaffold({
    required this.children,
    required this.activeSectionId,
    super.key,
  });

  final List<Widget> children;

  /// Which nav link reads as current while this page is open.
  final String activeSectionId;

  @override
  State<PortfolioScaffold> createState() => _PortfolioScaffoldState();
}

class _PortfolioScaffoldState extends State<PortfolioScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final RevealTicker _revealTicker = RevealTicker();

  @override
  void dispose() {
    _revealTicker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.transparent,
      drawer: context.isDesktop
          ? null
          : MobileNavDrawer(currentSectionId: widget.activeSectionId),
      body: PageBackground(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              TopNavBar(
                activeSectionId: widget.activeSectionId,
                onOpenMenu: () => _scaffoldKey.currentState?.openDrawer(),
              ),
              Expanded(
                child: RevealScope(
                  ticker: _revealTicker,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (_) {
                      _revealTicker.tick();
                      return false;
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ...widget.children,
                          const SiteFooter(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
