import '../../../../core/styles/app_images.dart';
import '../../domain/entities/image_ref.dart';
import '../../domain/entities/site_content.dart';

/// Default site copy, seeded on first launch and restorable from the admin
/// screen. Everything here is editable in debug once seeded.
class SeedSiteContent {
  const SeedSiteContent._();

  static SiteContent get value => SiteContent(
    fullNameEn: 'Marco Nagy Louka',
    fullNameAr: 'ماركو ناجي لوقا',
    roleEn: 'Flutter Developer',
    roleAr: 'مطوّر تطبيقات Flutter',
    monogram: 'MN',
    locationEn: 'Alexandria, Egypt',
    locationAr: 'الإسكندرية، مصر',
    profileImage: ImageRef.asset(AppImages.profile),

    email: 'marconbishay@gmail.com',
    phone: '01220407005',
    gitHubUrl: 'https://github.com/Marco-Nagy',
    linkedInUrl: 'https://linkedin.com/in/marco-nagy',

    heroGreetingEn: "Hi, I'm",
    heroGreetingAr: 'أهلًا، أنا',
    heroNameEn: 'Marco.',
    heroNameAr: 'ماركو.',
    heroRoleEn: 'Flutter Developer.',
    heroRoleAr: 'مطوّر تطبيقات Flutter.',
    roleTagsEn: const <String>[
      'Flutter Developer',
      'Mobile Engineer',
      'Clean Architecture',
    ],
    roleTagsAr: const <String>[
      'مطوّر Flutter',
      'مهندس تطبيقات موبايل',
      'Clean Architecture',
    ],

    summaryEn:
        'Flutter Developer with 4+ years of experience building and maintaining '
        'production mobile applications, including ERP and e-commerce systems. '
        'Hands-on experience managing application state with Bloc, integrating '
        'REST APIs, and implementing local data persistence for offline usage. '
        'Open to remote, hybrid, or on-site Flutter roles within product-driven '
        'teams.',
    summaryAr:
        'مطوّر تطبيقات Flutter بخبرة تتجاوز 4 سنوات في بناء وصيانة تطبيقات موبايل '
        'حية، منها أنظمة ERP ومنصات تجارة إلكترونية. خبرة عملية في إدارة الحالة '
        'باستخدام Bloc، وربط REST APIs، وتنفيذ التخزين المحلي لدعم العمل بدون '
        'إنترنت. متاح للعمل عن بُعد أو هجين أو حضوري ضمن فرق منتج.',

    aboutLeadEn: 'I build production Flutter apps that people use every day.',
    aboutLeadAr: 'أبني تطبيقات Flutter حية يستخدمها الناس كل يوم.',
    aboutStatementsEn: const <String>[
      'I build and maintain production Flutter apps — ERP systems, e-commerce '
          'platforms, and real-time delivery tracking — with 4+ years of '
          'shipping to real users.',
      'I specialize in Clean Architecture and Bloc, integrating REST APIs and '
          'implementing local persistence so apps stay useful offline.',
      'I also have a strong passion for reliability — unit testing, structured '
          'error handling, and CI/CD pipelines that keep releases boring.',
    ],
    aboutStatementsAr: const <String>[
      'أبني وأصون تطبيقات Flutter حية — أنظمة ERP ومنصات تجارة إلكترونية وتتبع '
          'توصيل في الوقت الفعلي — بخبرة تتجاوز 4 سنوات من الإطلاق لمستخدمين '
          'حقيقيين.',
      'أتخصص في Clean Architecture وBloc، مع ربط REST APIs وتنفيذ التخزين المحلي '
          'ليظل التطبيق مفيدًا بدون إنترنت.',
      'ولديّ شغف كبير بالاعتمادية — الاختبارات الوحدوية ومعالجة الأخطاء المنظمة '
          'وخطوط CI/CD التي تجعل الإصدارات هادئة وخالية من المفاجآت.',
    ],

    footerHeadlineEn: "Let's work together.",
    footerHeadlineAr: 'لنعمل معًا.',
    footerAvailabilityEn:
        "I'm available for full-time roles and freelance Flutter projects — "
        'remote, hybrid, or on-site.',
    footerAvailabilityAr:
        'متاح لوظائف بدوام كامل ومشاريع Flutter حرة — عن بُعد أو هجين أو حضوري.',

    contactTitleEn: 'Get in touch.',
    contactTitleAr: 'تواصل معي.',
    contactSubtitleEn:
        'Have a project in mind, or a role you think fits? Send me a message — '
        'I reply quickly.',
    contactSubtitleAr:
        'لديك مشروع في ذهنك أو وظيفة تراها مناسبة؟ أرسل لي رسالة — أرد سريعًا.',
  );
}
