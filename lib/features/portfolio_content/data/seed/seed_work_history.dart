import '../../domain/entities/work_history_entry.dart';

class SeedWorkHistory {
  const SeedWorkHistory._();

  static List<WorkHistoryEntry> get all => const <WorkHistoryEntry>[
    WorkHistoryEntry(
      id: 'vetanoia',
      company: 'Vetanoia',
      role: 'Flutter Developer',
      roleAr: 'مطوّر تطبيقات Flutter',
      startDate: '03/2022',
      location: 'Alexandria, Egypt',
      locationAr: 'الإسكندرية، مصر',
      bullets: <String>[
        'Built and shipped GARAS ERP (accounting, admin, reporting) used by 3+ companies',
        'Implemented role-based access control and financial workflows',
        'Delivered Royal Tents (3D tent measurement and quotation app) on Google Play and the App Store',
        'Built apps on Clean Architecture + Bloc, with REST API integration and offline persistence',
        'Reduced production crashes through unit testing and structured error handling',
      ],
      bulletsAr: <String>[
        'بناء وإطلاق نظام GARAS ERP المستخدم في أكثر من 3 شركات، يغطي المحاسبة والإدارة والتقارير',
        'تنفيذ صلاحيات الوصول حسب الدور وسير العمل المالي',
        'تطوير تطبيق Royal Tents لقياس وتسعير الخيام ثلاثي الأبعاد، منشور على Google Play وApp Store',
        'بناء التطبيقات باستخدام Clean Architecture وBloc، مع ربط REST APIs والتخزين المحلي دون اتصال',
        'تقليل الأعطال الإنتاجية عبر الاختبارات الوحدوية ومعالجة الأخطاء المنظمة',
      ],
      order: 0,
    ),
  ];
}
