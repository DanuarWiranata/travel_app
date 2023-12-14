class places {
  String title;
  String location;
  String description;
  String image;
  String price;
  String rating;
  String duration;

  places({
    required this.title,
    required this.location,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.duration,
  });
}

var placesList = [
  places(
    title: 'Rinjani National Park',
    location: 'East Lombok, West Nusa Tenggara',
    description: 'Rinjani National Park is a pristine and awe-inspiring natural wonder located on the island of Lombok, Indonesia. It is renowned for its breathtaking landscapes, including the iconic Mount Rinjani, a massive volcano that soars to 3,726 meters (12,224 feet) above sea level, making it the second-highest peak in Indonesia.',
    image: 'assets/images/rinjani.jpg',
    price: '\$259.58',
    rating: '5.0',
    duration: '3 days'
  ),
  places(
    title: 'Bromo Tengger Semeru National Park',
    location: 'Lumajang, East Java',
    description: 'Bromo Tengger Semeru National Park, located in East Java, Indonesia, is a breathtaking natural wonder characterized by a mesmerizing landscape of active volcanoes, vast calderas, and stunning vistas. At its heart stands Mount Bromo, an active volcano with an otherworldly beauty, surrounded by the ancient Tengger Caldera. The park\'s diverse topography includes the dramatic Mount Semeru, the highest peak in Java, and the whispering Sands of Bromo, a vast expanse of volcanic sand. Visitors are treated to an immersive experience, where the ethereal beauty of sunrise over Mount Bromo and the surrounding volcanic terrain creates an unforgettable and mystical atmosphere. Bromo National Park is a testament to the raw, awe-inspiring forces of nature, making it a destination that beckons adventure seekers and nature enthusiasts alike.',
    image: 'assets/images/bromo.jpg',
    price: '\$19.45',
    rating: '4.9',
    duration: '1 day'
  ),
  places(
    title: 'Way Kambas National Park',
    location: 'East Lampung, Lampung',
    description: 'Way Kambas National Park in Lampung, Indonesia, is a biodiversity haven and refuge for endangered species, including the critically endangered Sumatran rhinoceros, elephants, tigers, and various bird species. With dense forests, tranquil rivers, and open grasslands, the park offers an ideal habitat for these majestic creatures. Focused on wildlife protection and rehabilitation, Way Kambas is a crucial center for research and education. Its dedication to wildlife preservation, paired with its natural beauty, makes it an essential destination for conservationists and nature enthusiasts.',
    image: 'assets/images/way_kambas.jpg',
    price: '\$49',
    rating: '4.9',
    duration: '3 days'
  ),
  places(
    title: 'Ujung Kulon National Park',
    location: 'Ujungjaya, Banten',
    description: 'Ujung Kulon National Park in West Java, Indonesia, is a pristine UNESCO World Heritage site renowned for its untamed wilderness. Home to the critically endangered Javan rhinoceros, it\'s a vital conservation area with lush rainforests, idyllic beaches, and the iconic Krakatoa volcano. Boasting diverse flora and fauna, including endemic species, Ujung Kulon offers a unique experience for nature enthusiasts. Its commitment to preserving endangered species and stunning natural beauty make it a captivating destination for ecotourism and conservation.',
    image: 'assets/images/ujung_kulon.jpg',
    price: '\$48.62',
    rating: '4.7',
    duration: '2 days'
  ),
  places(
    title: 'Karimun Jawa National Park',
    location: 'Jepara, Central Java',
    description: 'Karimunjawa National Park, off Central Java\'s coast, is a pristine island paradise with vibrant coral reefs and diverse marine life. Crystal-clear waters, white sandy beaches, and flourishing coral gardens create an idyllic tropical escape. Home to fish species, sea turtles, and colorful coral, Karimunjawa offers a captivating underwater experience. Lush vegetation and mangrove forests enhance its natural charm, making it an ideal destination for a serene escape and a glimpse into Indonesia\'s marine biodiversity.',
    image: 'assets/images/karimun_jawa.jpg',
    price: '\$50.57',
    rating: '4.9',
    duration: '3 days'
  ),
  places(
    title: 'Leuser National Park',
    location: 'North Sumatra, Sumatra',
    description: 'Leuser National Park in Sumatra, Indonesia, is a UNESCO World Heritage site and biodiversity hotspot, boasting vast rainforests, rugged mountains, and pristine rivers. It serves as a crucial refuge for endangered species like Sumatran orangutans, tigers, and rhinoceros. The park\'s rich ecosystem, diverse flora and fauna, and lush landscapes make it a haven for nature enthusiasts and conservationists.',
    image: 'assets/images/leuser.jpg',
    price: '\$116.70',
    rating: '4.8',
    duration: '4 days'
  ),
  places(
    title: 'Komodo National Park',
    location: 'East Nusa Tenggara',
    description: 'Komodo National Park, located in the Indonesian archipelago, is a UNESCO World Heritage site renowned for its unique biodiversity and the iconic Komodo dragon, the world\'s largest lizard. Encompassing several islands, the park features rugged landscapes, volcanic hills, and pristine beaches. Home to not only the formidable Komodo dragons but also diverse marine life, including vibrant coral reefs and rare marine species, the park offers a captivating blend of terrestrial and marine wonders',
    image: 'assets/images/komodo.jpg',
    price: '\$112',
    rating: '5.0',
    duration: '5 days'
  ),
  places(
    title: 'Wakatobi National Park',
    location: 'Lentea, South East Sulawesi',
    description: 'Wakatobi National Park, at the heart of Indonesia\'s Coral Triangle, is a renowned marine paradise with pristine coral reefs and vibrant biodiversity. Comprising four main islands—Wangi-Wangi, Kaledupa, Tomia, and Binongko—it\'s a haven for divers and nature enthusiasts. The crystal-clear waters showcase rare marine species and diverse coral formations.',
    image: 'assets/images/wakatobi.jpg',
    price: '\$180.40',
    rating: '5.0',
    duration: '3 days'
  ),
  places(
    title: 'Baluran National Park',
    location: 'Situbondo, East Java',
    description: 'Baluran National Park in East Java, Indonesia, often called the "Little Africa of Java," is a captivating natural reserve known for its savannah landscapes, mangrove forests, and diverse ecosystems. The park offers a unique safari experience with Javanese water buffalo, deer, and various bird species. Mount Baluran adds grandeur to the picturesque scenery.',
    image: 'assets/images/baluran.jpg',
    price: '\$60.21',
    rating: '4.9',
    duration: '1 day'
  ),
  places(
    title: 'Bunaken National Park',
    location: 'Manado, North Sulawesi',
    description: 'Bunaken National Park, off the coast of North Sulawesi, Indonesia, is a marine wonderland celebrated for its stunning coral reefs and rich biodiversity. With crystal-clear waters surrounding islands like Bunaken, Manado Tua, and Siladen, the park is a haven for divers and snorkelers. Its underwater paradise features vibrant coral formations, sharks, and turtles, showcasing Indonesia\'s dedication to marine conservation.',
    image: 'assets/images/bunaken.jpg',
    price: '\$35.66',
    rating: '4.8',
    duration: '1 day'
  ),
  places(
    title: 'Banda Neira',
    location: 'Central Maluku, Maluku',
    description: 'Banda Neira, part of Indonesia\'s Maluku archipelago, is a historical gem with Dutch colonial charm. Steeped in spice trade history, the island boasts well-preserved architecture and a picturesque waterfront. The old fort, vibrant markets, and nutmeg plantation remnants narrate a rich past. Surrounded by azure waters, Banda Neira invites travelers to explore its cultural heritage and indulge in the natural beauty of this historically significant destination.',
    image: 'assets/images/banda_neira.jpg',
    price: '\$88.54',
    rating: '5.0',
    duration: '3 days'
  ),
];