class CoffeeModel {
  CoffeeModel({
    required this.name,
    required this.topping,
    required this.price,
    required this.rating,
    required this.imageUrl,
    required this.description,
  });
  String name;
  String topping;
  int price;
  double rating;
  String imageUrl;
  String description;
}

final List<CoffeeModel> demoCoffee = [
  CoffeeModel(
    name: 'Caramel Cappuccino',
    topping: 'Chocolate',
    price: 32000,
    rating: 4.8,
    imageUrl:
        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Hazelnut Cappuccino',
    topping: 'Ice Cream',
    price: 30000,
    rating: 4.8,
    imageUrl:
        'https://images.pexels.com/photos/15023064/pexels-photo-15023064.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Vanilla Cappuccino',
    topping: 'Original',
    price: 28000,
    rating: 4.9,
    imageUrl:
        'https://images.pexels.com/photos/15023078/pexels-photo-15023078.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Choco Cappuccino',
    topping: 'Marshmallow',
    price: 40000,
    rating: 4.9,
    imageUrl:
        'https://images.pexels.com/photos/3551717/pexels-photo-3551717.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
];

// DEMO ICE COFFEE
final List<CoffeeModel> demoIceCoffee = [
  CoffeeModel(
    name: 'Vanilla Cold Brew',
    topping: 'Chocolate',
    price: 34000,
    rating: 4.8,
    imageUrl:
        'https://images.pexels.com/photos/13294518/pexels-photo-13294518.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Original Cold Brew',
    topping: 'Ice Cream',
    price: 38000,
    rating: 4.8,
    imageUrl:
        'https://images.pexels.com/photos/13926594/pexels-photo-13926594.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Cold Brew Latte',
    topping: 'Original',
    price: 25000,
    rating: 4.9,
    imageUrl:
        'https://images.pexels.com/photos/2615323/pexels-photo-2615323.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Caramel Cold Brew',
    topping: 'Marshmallow',
    price: 27000,
    rating: 4.9,
    imageUrl:
        'https://images.pexels.com/photos/13425800/pexels-photo-13425800.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
];

// DEMO ESPRESSO
final List<CoffeeModel> demoEspressoCoffee = [
  CoffeeModel(
    name: 'Latte',
    topping: 'Chocolate',
    price: 42000,
    rating: 4.8,
    imageUrl:
        'https://images.pexels.com/photos/437716/pexels-photo-437716.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Mocha',
    topping: 'Original',
    price: 37000,
    rating: 4.8,
    imageUrl:
        'https://images.pexels.com/photos/3704460/pexels-photo-3704460.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Espresso',
    topping: 'Original',
    price: 34000,
    rating: 4.9,
    imageUrl:
        'https://images.pexels.com/photos/977846/pexels-photo-977846.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
  CoffeeModel(
    name: 'Americano',
    topping: 'Original',
    price: 45000,
    rating: 4.9,
    imageUrl:
        'https://images.pexels.com/photos/997656/pexels-photo-997656.jpeg?auto=compress&cs=tinysrgb&w=800',
    description:
        'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun.',
  ),
];
