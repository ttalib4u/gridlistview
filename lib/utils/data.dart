import '../models/product.dart';

class FakeData {
  List<Product> _productsList = <Product>[
    Product(id:1, title:"iPhone 9", description:"An apple mobile which is nothing like apple", price:549, thumbnail:"assets/images/1.jpg"),

    Product(id:2, title:"iPhone X", description:"SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...", price:899, thumbnail:"assets/images/2.jpg"),

    Product(id:3, title:"Samsung Universe 9", description:"Samsung's new variant which goes beyond Galaxy to the Universe", price:1249, thumbnail:"assets/images/3.jpg"),

    Product(id:4, title:"OPPOF19", description:"OPPO F19 is officially announced on April 2021.", price:280, thumbnail:"assets/images/4.jpg"),

    Product(id:5, title:"Huawei P30", description:"Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.", price:499, thumbnail:"assets/images/5.jpg"),

    Product(id:6, title:"MacBook Pro", description:"MacBook Pro 2021 with mini-LED display may launch between September, November", price:1749, thumbnail:"assets/images/6.jpg"),

    Product(id:7, title:"Samsung Galaxy Book", description:"Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched", price:1499, thumbnail:"assets/images/7.jpg"),

    Product(id:8, title:"Microsoft Surface Laptop 4", description:"Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.", price:1499, thumbnail:"assets/images/8.jpg"),

    Product(id:9, title:"Infinix INBOOK", description:"Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty", price:1099, thumbnail:"assets/images/9.jpg"),

    Product(id:10, title:"HP Pavilion 15-DK1056WM", description:"HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10", price:1099, thumbnail:"assets/images/10.jpg"),

    Product(id:11, title:"perfume Oil", description:"Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil", price:13, thumbnail:"assets/images/11.jpg"),

    Product(id:12, title:"Brown Perfume", description:"Royal_Mirage Sport Brown Perfume for Men & Women - 120ml", price:40, thumbnail:"assets/images/12.jpg"),

    Product(id:13, title:"Fog Scent Xpressio Perfume", description:"product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men", price:13, thumbnail:"assets/images/13.jpg"),

    Product(id:14, title:"Non-Alcoholic Concentrated Perfume Oil", description:"Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil", price:120, thumbnail:"assets/images/14.jpg"),

    /*Product(name: "", image: 'assets/images/1.png'),
    Product(name: 'بورس و بازار سهام', image: 'assets/images/2.png'),
    Product(name: 'برنامه نویسی وب', image: 'assets/images/3.png'),
    Product(name: 'رباتیک', image: 'assets/images/4.png'),
    Product(name: 'ریاضیات', image: 'assets/images/5.png'),
    Product(name: 'علوم انسانی', image: 'assets/images/6.png'),
    Product(name: 'کسب و کار', image: 'assets/images/7.png'),
    Product(name: 'دروس آکادمیک', image: 'assets/images/8.png'),
    Product(name: 'مهندسی برق', image: 'assets/images/9.png'),
    Product(name: 'مهندسی صنایع', image: 'assets/images/10.png'),
    Product(name: 'مهندسی عمران', image: 'assets/images/11.png'),
    Product(name: 'مهندسی نرم افزار', image: 'assets/images/12.png'),
    Product(name: 'مهندسی مکانیک', image: 'assets/images/13.png'),
    Product(name: 'هنر', image: 'assets/images/14.png'),*/
  ];
  List<Product> get productsList => _productsList;
}