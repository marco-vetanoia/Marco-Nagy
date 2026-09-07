import 'package:flutter/foundation.dart' show immutable;

import '../../../portfolio_content/domain/entities/certificate.dart';

@immutable
sealed class CertificatesState {
  const CertificatesState();
}

class CertificatesInitial extends CertificatesState {
  const CertificatesInitial();
}

class CertificatesLoading extends CertificatesState {
  const CertificatesLoading();
}

class CertificatesSuccess extends CertificatesState {
  const CertificatesSuccess(this.certificates);
  final List<Certificate> certificates;
}

class CertificatesError extends CertificatesState {
  const CertificatesError(this.message);
  final String message;
}
