/// Every asset path in one place — no raw asset strings in widgets.
class AppImages {
  const AppImages._();

  static const String profile = 'assets/images/profile.png';
  static const String cvPdf = 'assets/cv/marco_nagy_cv.pdf';

  static const String _projects = 'assets/projects';

  static const List<String> floweryStoreShots = <String>[
    '$_projects/flowery_store_1.png',
    '$_projects/flowery_store_2.png',
    '$_projects/flowery_store_3.png',
  ];

  static const List<String> floweryDeliveryShots = <String>[
    '$_projects/flowery_delivery_1.png',
    '$_projects/flowery_delivery_2.png',
    '$_projects/flowery_delivery_3.png',
  ];

  static const List<String> fitnessAppShots = <String>[
    '$_projects/fitness_app_1.png',
    '$_projects/fitness_app_2.png',
    '$_projects/fitness_app_3.png',
  ];
}
