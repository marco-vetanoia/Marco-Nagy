import '../../domain/entities/pricing_add_on.dart';
import '../../domain/entities/pricing_package.dart';

class SeedPricing {
  const SeedPricing._();

  static const String _core = 'Core features';
  static const String _coreAr = 'المميزات الأساسية';
  static const String _advanced = 'Advanced';
  static const String _advancedAr = 'مميزات متقدمة';
  static const String _custom = 'Customization';
  static const String _customAr = 'التخصيص';
  static const String _launch = 'Launch';
  static const String _launchAr = 'الإطلاق';

  static List<PricingPackage> get packages => const <PricingPackage>[
    PricingPackage(
      id: 'mvp',
      name: 'MVP / Simple App',
      nameAr: 'تطبيق مبدئي / بسيط',
      basePrice: 400,
      timelineLabel: '~2 weeks',
      timelineLabelAr: 'حوالي أسبوعين',
      description:
          'A focused first version: a handful of screens, one core flow, ready '
          'to put in front of real users.',
      descriptionAr:
          'نسخة أولى مركّزة: عدد محدود من الشاشات ومسار أساسي واحد، جاهزة '
          'لعرضها على مستخدمين حقيقيين.',
      order: 0,
    ),
    PricingPackage(
      id: 'medium',
      name: 'Medium App',
      nameAr: 'تطبيق متوسط',
      basePrice: 900,
      timelineLabel: '~4 weeks',
      timelineLabelAr: 'حوالي 4 أسابيع',
      description:
          'A full product: multiple flows, API integration, state management '
          'and a polished, responsive UI.',
      descriptionAr:
          'منتج متكامل: مسارات متعددة وربط APIs وإدارة حالة وواجهة متجاوبة '
          'ومصقولة.',
      order: 1,
    ),
    PricingPackage(
      id: 'advanced',
      name: 'Advanced / ERP-style App',
      nameAr: 'تطبيق متقدم / بنمط ERP',
      basePrice: 1800,
      timelineLabel: '~6–8 weeks',
      timelineLabelAr: 'حوالي 6–8 أسابيع',
      description:
          'Complex business logic: roles and permissions, reporting, offline '
          'support and Clean Architecture built to be maintained for years.',
      descriptionAr:
          'منطق أعمال معقّد: أدوار وصلاحيات وتقارير ودعم العمل بدون إنترنت، '
          'مبني على Clean Architecture ليُصان لسنوات.',
      order: 2,
    ),
  ];

  static List<PricingAddOn> get addOns => const <PricingAddOn>[
    PricingAddOn(
      id: 'auth',
      name: 'User Authentication',
      nameAr: 'تسجيل الدخول والمصادقة',
      unitPrice: 60,
      unitTimeDays: 2,
      category: _core,
      categoryAr: _coreAr,
      order: 0,
    ),
    PricingAddOn(
      id: 'push_notifications',
      name: 'Push Notifications',
      nameAr: 'الإشعارات الفورية',
      unitPrice: 50,
      unitTimeDays: 1,
      category: _core,
      categoryAr: _coreAr,
      order: 1,
    ),
    PricingAddOn(
      id: 'maps_tracking',
      name: 'Real-time Maps & Live Tracking',
      nameAr: 'الخرائط والتتبع المباشر',
      unitPrice: 150,
      unitTimeDays: 4,
      category: _core,
      categoryAr: _coreAr,
      order: 2,
    ),
    PricingAddOn(
      id: 'payment_gateway',
      name: 'Payment Gateway',
      nameAr: 'بوابة الدفع',
      unitPrice: 120,
      unitTimeDays: 3,
      category: _core,
      categoryAr: _coreAr,
      order: 3,
    ),
    PricingAddOn(
      id: 'offline_mode',
      name: 'Offline Mode (Local DB)',
      nameAr: 'وضع العمل بدون إنترنت (قاعدة بيانات محلية)',
      unitPrice: 80,
      unitTimeDays: 2,
      category: _core,
      categoryAr: _coreAr,
      order: 4,
    ),
    PricingAddOn(
      id: 'admin_dashboard',
      name: 'Admin Web Dashboard',
      nameAr: 'لوحة تحكم ويب للإدارة',
      unitPrice: 250,
      unitTimeDays: 5,
      category: _advanced,
      categoryAr: _advancedAr,
      order: 5,
    ),
    PricingAddOn(
      id: 'chat',
      name: 'Chat / Messaging',
      nameAr: 'المحادثات والرسائل',
      unitPrice: 150,
      unitTimeDays: 4,
      category: _advanced,
      categoryAr: _advancedAr,
      order: 6,
    ),
    PricingAddOn(
      id: 'ai_chatbot',
      name: 'AI Chatbot Integration',
      nameAr: 'دمج شات بوت ذكاء اصطناعي',
      unitPrice: 200,
      unitTimeDays: 4,
      category: _advanced,
      categoryAr: _advancedAr,
      order: 7,
    ),
    PricingAddOn(
      id: 'multi_language',
      name: 'Multi-language Support',
      nameAr: 'دعم تعدد اللغات',
      unitPrice: 40,
      unitTimeDays: 1,
      hasCounter: true,
      category: _custom,
      categoryAr: _customAr,
      order: 8,
    ),
    PricingAddOn(
      id: 'custom_api',
      name: 'Custom API Integration',
      nameAr: 'ربط APIs مخصصة',
      unitPrice: 70,
      unitTimeDays: 2,
      hasCounter: true,
      category: _custom,
      categoryAr: _customAr,
      order: 9,
    ),
    PricingAddOn(
      id: 'extra_screen',
      name: 'Extra Screen',
      nameAr: 'شاشة إضافية',
      unitPrice: 30,
      unitTimeDays: 1,
      hasCounter: true,
      category: _custom,
      categoryAr: _customAr,
      order: 10,
    ),
    PricingAddOn(
      id: 'theme_support',
      name: 'Dark/Light Theme Support',
      nameAr: 'دعم الوضع الليلي والنهاري',
      unitPrice: 40,
      unitTimeDays: 1,
      category: _custom,
      categoryAr: _customAr,
      order: 11,
    ),
    PricingAddOn(
      id: 'analytics',
      name: 'Analytics & Reporting',
      nameAr: 'التحليلات والتقارير',
      unitPrice: 100,
      unitTimeDays: 2,
      category: _launch,
      categoryAr: _launchAr,
      order: 12,
    ),
    PricingAddOn(
      id: 'publishing',
      name: 'App Store + Google Play Publishing',
      nameAr: 'النشر على App Store وGoogle Play',
      unitPrice: 80,
      unitTimeDays: 1,
      category: _launch,
      categoryAr: _launchAr,
      order: 13,
    ),
  ];
}
