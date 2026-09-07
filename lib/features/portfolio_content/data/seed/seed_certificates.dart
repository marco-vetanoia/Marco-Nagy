import '../../domain/entities/certificate.dart';

/// Education + courses from the CV. None ship with a scan image, so each renders
/// as a generated certificate-styled card until a real scan is dropped in.
class SeedCertificates {
  const SeedCertificates._();

  static List<Certificate> get all => const <Certificate>[
    Certificate(
      id: 'bsc_commerce',
      title: 'Bachelor of Commerce',
      titleAr: 'بكالوريوس تجارة',
      provider: 'Alexandria University',
      providerAr: 'جامعة الإسكندرية',
      location: 'Alexandria, Egypt',
      locationAr: 'الإسكندرية، مصر',
      order: 0,
    ),
    Certificate(
      id: 'elevate_bootcamp_c1',
      title: 'Flutter Advanced Bootcamp C1',
      titleAr: 'معسكر Flutter المتقدم C1',
      provider: 'Elevate',
      providerAr: 'Elevate',
      year: '2024',
      location: 'Egypt',
      locationAr: 'مصر',
      order: 1,
    ),
    Certificate(
      id: 'udemy_bloc_mvvm',
      title: 'Flutter Advanced Course: Bloc and MVVM Pattern (Arabic)',
      titleAr: 'دورة Flutter المتقدمة: نمط Bloc وMVVM (بالعربية)',
      provider: 'Udemy',
      providerAr: 'Udemy',
      year: '2023',
      order: 2,
    ),
    Certificate(
      id: 'route_cs_diploma',
      title: 'Computer Science Programming Fundamentals Diploma (C++)',
      titleAr: 'دبلومة أساسيات البرمجة وعلوم الحاسب (C++)',
      provider: 'Route IT Training Center',
      providerAr: 'مركز Route لتدريب تكنولوجيا المعلومات',
      year: '2023',
      location: 'Alexandria, Egypt',
      locationAr: 'الإسكندرية، مصر',
      order: 3,
    ),
    Certificate(
      id: 'udemy_clean_arch',
      title: 'Clean Architecture in Flutter 3 (Arabic)',
      titleAr: 'Clean Architecture في Flutter 3 (بالعربية)',
      provider: 'Udemy',
      providerAr: 'Udemy',
      year: '2022',
      order: 4,
    ),
    Certificate(
      id: 'udemy_complete_2022',
      title: 'The Complete 2022 Flutter & Dart Development Course (Arabic)',
      titleAr: 'الدورة الشاملة لتطوير Flutter وDart 2022 (بالعربية)',
      provider: 'Udemy',
      providerAr: 'Udemy',
      year: '2022',
      order: 5,
    ),
    Certificate(
      id: 'senior_steps_android',
      title: 'Android Native Diploma',
      titleAr: 'دبلومة Android Native',
      provider: 'Senior Steps IT Training Center',
      providerAr: 'مركز Senior Steps لتدريب تكنولوجيا المعلومات',
      year: '2021',
      order: 6,
    ),
    Certificate(
      id: 'udacity_android_nanodegree',
      title: 'Android Basic Nanodegree',
      titleAr: 'Android Basic Nanodegree',
      provider: 'Udacity (Google)',
      providerAr: 'Udacity (Google)',
      year: '2021',
      order: 7,
    ),
    Certificate(
      id: 'reload_android',
      title: 'Android Native Diploma',
      titleAr: 'دبلومة Android Native',
      provider: 'Reload Academy',
      providerAr: 'أكاديمية Reload',
      year: '2020',
      order: 8,
    ),
  ];
}
