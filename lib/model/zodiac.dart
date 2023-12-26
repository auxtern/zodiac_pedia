class Zodiac {
  String name;
  String avatar;
  String rangeDate;
  String overview;
  String description;
  String predictionFinance;
  String predictionCareer;
  String predictionLove;

  Zodiac({
    required this.name,
    required this.avatar,
    required this.rangeDate,
    required this.overview,
    required this.description,
    required this.predictionFinance,
    required this.predictionCareer,
    required this.predictionLove,
  });
}

var zodiacList = [
  Zodiac(
    name: 'Aries',
    avatar: 'assets/images/aries.png',
    rangeDate: '21 Maret - 19 April',
    overview: 'Aries dikenal sebagai individu yang berani, energetik, dan penuh semangat.',
    description: 'Orang yang lahir di bawah tanda Aries dikenal sebagai individu yang berani, energetik, dan penuh semangat. Mereka suka tantangan dan memiliki sifat kepemimpinan yang kuat.',
    predictionFinance: 'Fokus pada pengelolaan keuangan yang bijak. Hindari pengeluaran impulsif dan tetapkan tujuan tabungan jangka panjang.',
    predictionCareer: 'Tahun ini, fokus pada proyek-proyek yang menantang dan dapat meningkatkan keterampilan kepemimpinan Anda. Ambil inisiatif dalam pekerjaan dan pertimbangkan untuk mengambil tanggung jawab lebih besar.',
    predictionLove: 'Penuh gairah dalam cinta. Cari pasangan yang sejalan dengan energi dan ambisi Anda. Buka komunikasi secara jujur untuk membangun hubungan yang kokoh.',
  ),
  Zodiac(
    name: 'Taurus',
    avatar: 'assets/images/taurus.png',
    rangeDate: '20 April - 20 Mei',
    overview: 'Taurus dikenal sebagai individu yang stabil dan praktis.',
    description: 'Taurus dikenal sebagai zodiak yang stabil dan praktis. Mereka cenderung memiliki kestabilan emosional, keuletan, dan selera seni yang baik.',
    predictionFinance: 'Keuangan Anda stabil, tetapi pertimbangkan untuk berinvestasi dalam aset jangka panjang. Rencanakan anggaran dengan hati-hati untuk memastikan kestabilan finansial Anda.',
    predictionCareer: 'Pertimbangkan untuk mengembangkan keterampilan baru yang dapat meningkatkan efisiensi kerja Anda. Jangan ragu untuk mencari promosi atau proyek-proyek yang menantang.',
    predictionLove: 'Kepercayaan dan stabilitas penting dalam hubungan Anda. Berinvestasi dalam waktu dan perhatian untuk memperkuat ikatan emosional dengan pasangan Anda.',
  ),
  Zodiac(
    name: 'Gemini',
    avatar: 'assets/images/gemini.png',
    rangeDate: '21 Mei - 20 Juni',
    overview: 'Gemini dikenal sebagai individu yang suka berkomunikasi dan memiliki sifat ganda.',
    description: 'Gemini adalah zodiak yang suka berkomunikasi dan memiliki sifat ganda. Mereka cerdas, lincah, dan dapat beradaptasi dengan berbagai situasi.',
    predictionFinance: 'Waspada terhadap pengeluaran yang tidak perlu. Ambil langkah untuk diversifikasi portofolio investasi Anda dan pertimbangkan peluang baru untuk meningkatkan penghasilan.',
    predictionCareer: 'Jelajahi peluang karier baru dan pertimbangkan untuk mengikuti kursus atau pelatihan untuk meningkatkan keterampilan Anda. Manfaatkan keahlian komunikasi Anda dalam proyek tim.',
    predictionLove: 'Komunikatif dan dinamis dalam hubungan. Jaga keberagaman dan keseruan dalam hubungan Anda. Diskusikan ide-ide dan impian bersama pasangan Anda.',
  ),
  Zodiac(
    name: 'Cancer',
    avatar: 'assets/images/cancer.png',
    rangeDate: '21 Juni - 22 Juli',
    overview: 'Cancer dikenal sebagai individu yang penuh perhatian dan emosional.',
    description: 'Individu yang lahir di bawah tanda Cancer dikenal sebagai orang yang penuh perhatian dan emosional. Mereka memiliki rasa keamanan yang kuat dan cenderung peduli terhadap keluarga.',
    predictionFinance: 'Berhati-hatilah dalam membuat keputusan keuangan besar. Simpan sebagian dari penghasilan Anda untuk masa depan. Hindari risiko yang tidak perlu dalam investasi.',
    predictionCareer: 'Ambil peran aktif dalam membangun hubungan profesional. Pertimbangkan untuk meningkatkan keterampilan interpersonal dan networking untuk mendukung perkembangan karier Anda.',
    predictionLove: 'Penuh perhatian dan romantis. Ciptakan keamanan emosional dan tunjukkan rasa kasih sayang Anda secara terbuka. Bangun hubungan yang mendalam dan memahami.',
  ),
  Zodiac(
    name: 'Leo',
    avatar: 'assets/images/leo.png',
    rangeDate: '23 Juli - 22 Agustus',
    overview: 'Leo dikenala sebagai individu yang bersemangat, percaya diri, dan penuh kebanggaan.',
    description: 'Leo adalah pribadi yang bersemangat, percaya diri, dan penuh kebanggaan. Mereka suka menjadi pusat perhatian dan memiliki bakat artistik.',
    predictionFinance: 'Manfaatkan peluang keuangan yang muncul. Berinvestasi dalam pengembangan diri Anda dapat membawa hasil positif. Tetapkan rencana keuangan jangka panjang untuk mencapai tujuan finansial Anda.',
    predictionCareer: 'Tahun ini, pertimbangkan untuk fokus pada proyek-proyek kreatif dan pemimpinannya. Tunjukkan dedikasi Anda dan jangan ragu untuk mengemukakan ide-ide inovatif dalam rapat tim.',
    predictionLove: 'Penuh kasih sayang dan memerlukan pengakuan. Berikan perhatian dan pujian kepada pasangan Anda. Bangun hubungan yang membanggakan dan penuh kebahagiaan.',
  ),
  Zodiac(
    name: 'Virgo',
    avatar: 'assets/images/virgo.png',
    rangeDate: '23 Agustus - 22 September',
    overview: 'Virgo dikenal sebagai individu yang praktis, analitis, dan terorganisir.',
    description: 'Virgo dikenal sebagai zodiak yang praktis, analitis, dan terorganisir. Mereka suka menyempurnakan detail dan memiliki standar tinggi terhadap diri mereka sendiri.',
    predictionFinance: 'Rencanakan anggaran dengan cermat dan hindari risiko yang tidak perlu. Pertimbangkan pengembangan keterampilan baru yang dapat meningkatkan potensi penghasilan Anda.',
    predictionCareer: 'Perhatikan detail dalam pekerjaan Anda dan pertimbangkan untuk memberikan kontribusi lebih dalam proyek-proyek tim. Tingkatkan keterampilan analitis Anda untuk mendukung pertumbuhan karier.',
    predictionLove: 'Setia dan membantu. Berikan dukungan dan perhatian kepada pasangan Anda. Bekerjasama dalam menyelesaikan masalah untuk memperkuat ikatan emosional.',
  ),
  Zodiac(
    name: 'Libra',
    avatar: 'assets/images/libra.png',
    rangeDate: '23 September - 22 Oktober',
    overview: 'Libra dikenal sebagai individu yang seimbang dan suka keadilan.',
    description: 'Libra dikenal sebagai zodiak yang seimbang dan suka keadilan. Mereka menyukai keindahan, diplomasi, dan memiliki kemampuan sosial yang baik.',
    predictionFinance: 'Jaga keseimbangan antara pengeluaran dan tabungan. Hindari utang berlebihan dan pertimbangkan investasi yang dapat meningkatkan kekayaan Anda. Fokus pada pertumbuhan finansial jangka panjang.',
    predictionCareer: 'Jaga keseimbangan antara tugas individu dan kerja tim. Manfaatkan kemampuan diplomasi Anda untuk menyelesaikan konflik. Pertimbangkan untuk mencari proyek kolaboratif.',
    predictionLove: 'Romantis dan mencari keseimbangan. Ciptakan harmoni dalam hubungan Anda dan hadapi konflik dengan kepala dingin. Jaga keindahan dalam hubungan Anda.',
  ),
  Zodiac(
    name: 'Scorpio',
    avatar: 'assets/images/scorpio.png',
    rangeDate: '23 Oktober - 21 November',
    overview: 'Scorpio dikenal sebagai individu yang penuh gairah, misterius, dan intens.',
    description: 'Scorpio adalah individu yang penuh gairah, misterius, dan intens. Mereka cenderung memiliki intuisi yang kuat dan memiliki hasrat yang mendalam.',
    predictionFinance: 'Kelola keuangan Anda dengan bijak. Pertimbangkan strategi investasi yang matang dan hindari spekulasi berlebihan. Perhatikan secara rutin perkembangan portofolio investasi Anda.',
    predictionCareer: 'Fokus pada pekerjaan yang memanfaatkan keahlian analitis dan intuisi Anda. Ambil langkah untuk meningkatkan keahlian teknis dan terus berinovasi dalam pekerjaan Anda.',
    predictionLove: 'Intens dan penuh gairah. Bangun kepercayaan dan keterbukaan dalam hubungan. Jangan ragu untuk mengungkapkan perasaan Anda dengan tulus.',
  ),
  Zodiac(
    name: 'Sagittarius',
    avatar: 'assets/images/sagitarius.png',
    rangeDate: '22 November - 21 Desember',
    overview: 'Sagitarius dikenal sebagai individu yang petualang, optimis, dan suka kebebasan.',
    description: 'Sagitarius adalah zodiak yang petualang, optimis, dan suka kebebasan. Mereka menyukai pengetahuan dan memiliki hasrat untuk menjelajahi dunia.',
    predictionFinance: 'Pertimbangkan investasi jangka panjang yang dapat memberikan hasil yang menguntungkan. Tetapkan tujuan keuangan yang realistis dan pertimbangkan diversifikasi investasi.',
    predictionCareer: 'Jelajahi peluang untuk proyek-proyek yang melibatkan eksplorasi dan kebebasan. Pertimbangkan untuk mencari proyek internasional atau mengembangkan keterampilan multibahasa.',
    predictionLove: 'Bebas dan suka petualangan. Berbagi petualangan dan mimpi bersama pasangan Anda. Jaga kebebasan dalam hubungan Anda.',
  ),
  Zodiac(
    name: 'Capricorn',
    avatar: 'assets/images/capricon.png',
    rangeDate: '22 Desember - 19 Januari',
    overview: 'Capricorn dikenal sebagai individu yang ambisius, praktis, dan bertanggung jawab.',
    description: 'Capricorn dikenal sebagai zodiak yang ambisius, praktis, dan bertanggung jawab. Mereka memiliki ketekunan tinggi dalam mencapai tujuan mereka.',
    predictionFinance: 'Pertimbangkan opsi investasi inovatif. Monitor pengeluaran secara rutin dan pertahankan fleksibilitas keuangan. Pertimbangkan diversifikasi portofolio investasi Anda.',
    predictionCareer: 'Pertimbangkan untuk mengambil tanggung jawab kepemimpinan yang lebih besar dalam pekerjaan Anda. Fokus pada pencapaian jangka panjang dan pertimbangkan untuk mengembangkan tim Anda.',
    predictionLove: 'Stabil dan berkomitmen. Bangun fondasi kuat untuk hubungan jangka panjang. Tunjukkan keandalan dan dedikasi kepada pasangan Anda.',
  ),
  Zodiac(
    name: 'Aquarius',
    avatar: 'assets/images/aquarius.png',
    rangeDate: '20 Januari - 18 Februari',
    overview: 'Aquarius dikenal sebagai individu yang inovatif, mandiri, dan suka berkontribusi pada masyarakat.',
    description: 'Aquarius adalah individu yang inovatif, mandiri, dan suka berkontribusi pada masyarakat. Mereka memiliki pemikiran yang unik dan cenderung bersikap progresif.',
    predictionFinance: 'Waspadai godaan pengeluaran emosional. Prioritaskan tabungan darurat dan rencanakan keuangan dengan hati-hati. Pertimbangkan konsultasi dengan profesional keuangan untuk mengoptimalkan portofolio Anda.',
    predictionCareer: 'Tahun ini, pertimbangkan untuk fokus pada proyek-proyek inovatif dan berkontribusi pada perubahan sosial. Tingkatkan keterampilan teknologi untuk mendukung perkembangan karier Anda.',
    predictionLove: 'Inovatif dan sosial. Cari pasangan yang mendukung visi dan ide-ide Anda. Terlibat dalam aktivitas sosial bersama untuk memperkuat ikatan Anda.',
  ),
  Zodiac(
    name: 'Pisces',
    avatar: 'assets/images/pisces.png',
    rangeDate: '19 Februari - 20 Maret',
    overview: 'Pisces dikenal sebagai individu yang sensitif, kreatif, dan emosional.',
    description: 'Pisces adalah zodiak yang sensitif, kreatif, dan emosional. Mereka cenderung memiliki intuisi yang kuat dan dapat merasakan perasaan orang lain.',
    predictionFinance: 'Waspadai godaan pengeluaran emosional. Prioritaskan tabungan darurat dan rencanakan keuangan dengan hati-hati. Pertimbangkan konsultasi dengan profesional keuangan untuk mengoptimalkan portofolio Anda.',
    predictionCareer: 'Manfaatkan kreativitas Anda dalam proyek-proyek seni atau pelayanan. Pertimbangkan untuk mengembangkan keterampilan kepemimpinan dan terlibat dalam proyek-proyek amal.',
    predictionLove: 'Kreatif dan empatik. Tunjukkan perhatian dan kelembutan kepada pasangan Anda. Bagikan impian dan fantasi bersama untuk memperdalam koneksi emosional.',
  ),
];