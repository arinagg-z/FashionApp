import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/utils/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

Size size = Utils().getscreenSize();

List<String> scrollimage = [
  "assests/images/models/frontscreenmodel/frontscreendisplaymodel2.png",
  "assests/images/models/frontscreenmodel/frontscreendisplaymodel3.png",
  "assests/images/models/frontscreenmodel/frontscreendisplaymodel4.png",
];

List<String> itemimage = [
  "assests/images/models/Screenshot 2023-06-26 195122.png",
  "assests/images/models/Screenshot 2023-06-26 195122.png",
  "assests/images/models/Screenshot 2023-06-26 195122.png",
  "assests/images/models/Screenshot 2023-06-26 195122.png",
];

List<String> accessoryimagemain = [
  "assests/images/accesories/access1.png",
  "assests/images/accesories/access1.png",
  "assests/images/accesories/access1.png"
];
List<String> bottomaccessoryimage = [
  "assests/images/accesories/baccess1.png",
  "assests/images/accesories/baccess2.png",
  "assests/images/accesories/baccess3.png",
  "assests/images/accesories/baccess4.png",
];
List<String> accessoryimage = [
  "assests/images/accesories/access2.png",
  "assests/images/accesories/access3.png",
  "assests/images/accesories/access4.png",
];

List<String> profilename = [
  "mia",
  "_jihyn",
  "mia",
  "_jihyn",
];

String lorem =
    "lorem ipsum dolor sit amet, consectet ,  nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sedlorem ipsum dolor sit amet, consectet , nunc   sed";

class mystyle {
  static TextStyle primaryfont = GoogleFonts.tenorSans();
  static TextStyle title = TextStyle(fontSize: 28, letterSpacing: 5);
  static TextStyle subtitle = TextStyle(fontSize: 25, letterSpacing: 3);
  static TextStyle subtitle2 = TextStyle(fontSize: 22, letterSpacing: 2);
  static TextStyle bodylarge = TextStyle(
    fontSize: 20,
  );
  static TextStyle bodymedium = TextStyle(fontSize: 16);
  static TextStyle bodysmall = TextStyle(fontSize: 12);
}

class mycolor {
  static Color titleactivecolor = Color(0xff000000);
  static Color bodycolor = Color(0xff333333);
  static Color labelcolor = Color(0xffd6d6d6);
  static Color placeholdercolor = Color(0xff888888);
  static Color linecolor = Color(0xffe0cfba);
  static Color inputbackgroundcolor = Color(0xfff9f9f9);
  static Color backgroundcolor = Color(0xfff8f0e7);
  static Color offwhitecolor = Color(0xfffcfcfc);
  static Color primarycolor = Color(0xffa8715a);
  static Color secondarycolor = Color(0xffdd8560);
  static Color appbarcolor = Color(0xffe6e9ee);
  static Color dividercolor = Color(0xffdcdcdc);
}

class ksizebox extends StatelessWidget {
  double h;
  double w;
  ksizebox({super.key, this.h = 0.01, this.w = 0.01});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size.height * h, width: size.width * w);
  }
}

class Utils {
  Size getscreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  }

  static List<productmodel> OctoberCollectionModels = [
    productmodel(
        imageurl:
            "assests/images/models/OctoberCollectionModel/octobercollection1.png",
        price: "01",
        description: "Black Collection",
        title: ""),
    productmodel(
        imageurl:
            "assests/images/models/OctoberCollectionModel/octobercollection2.png",
        price: "02",
        description: "Black Collection",
        title: ""),
    productmodel(
        imageurl:
            "assests/images/models/OctoberCollectionModel/octobercollection3.png",
        price: "03",
        description: "Black Collection",
        title: ""),
  ];
  static List<productmodel> DressProductDisplay = [
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230519.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230527.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230535.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230539.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230547.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230602.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230608.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/models/ModelDressDisplayScreen/Screenshot 2023-06-28 230608.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
  ];
  static List<productmodel> OctoberCollectionProductDisplay = [
    productmodel(
        imageurl:
            "assests/images/content/items/Screenshot 2023-06-28 230430.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl:
            "assests/images/content/items/Screenshot 2023-06-28 230436.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/accesories/displayaccess1.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/accesories/displayaccess2.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/accesories/baccess1.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/accesories/baccess3.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
  ];
  static List<productmodel> ClothingProductDisplay = [
    productmodel(
        imageurl: "assests/images/content/items/product1.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/content/items/product2.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/content/items/product3.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/content/items/product4.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/content/items/product5.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/content/items/product6.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/accesories/baccess3.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
    productmodel(
        imageurl: "assests/images/accesories/baccess4.png",
        price: "120",
        description: "Reverse Cardian Reverm",
        title: "octo"),
  ];

  static List<BlogModel> BlogScreenModel = [
    BlogModel(
        imageurl: "assests/images/models/blogpagemodel/blogpageimage1.png",
        date: "4",
        id: "A",
        description:
            "The Latest Style Guide is your go-to resource for staying ahead of the fashion curve. Discover the hottest trends, expert tips, and outfit inspirations to elevate your style game. From casual chic to red carpet glam, this guide has it all, helping you rock the latest looks with confidence.",
        title: "2021 STYLE GUIDE : THE BIGGEST\nFALL TRENDS"),
    BlogModel(
        imageurl: "assests/images/models/blogpagemodel/blogpageimage2.png",
        date: "4",
        id: "A",
        description:
            "The Latest Style Guide is your go-to resource for staying ahead of the fashion curve. Discover the hottest trends, expert tips, and outfit inspirations to elevate your style game. From casual chic to red carpet glam, this guide has it all, helping you rock the latest looks with confidence.",
        title: "2021 STYLE GUIDE : THE BIGGEST\nFALL TRENDS"),
    BlogModel(
        imageurl: "assests/images/models/blogpagemodel/blogpageimage4.png",
        date: "4",
        id: "A",
        description:
            "The Latest Style Guide is your go-to resource for staying ahead of the fashion curve. Discover the hottest trends, expert tips, and outfit inspirations to elevate your style game. From casual chic to red carpet glam, this guide has it all, helping you rock the latest looks with confidence.",
        title: "2021 STYLE GUIDE : THE BIGGEST\nFALL TRENDS"),
    BlogModel(
        imageurl: "assests/images/models/blogpagemodel/blogpageimage3.png",
        date: "4",
        id: "A",
        description:
            "The Latest Style Guide is your go-to resource for staying ahead of the fashion curve. Discover the hottest trends, expert tips, and outfit inspirations to elevate your style game. From casual chic to red carpet glam, this guide has it all, helping you rock the latest looks with confidence.",
        title: "2021 STYLE GUIDE : THE BIGGEST\nFALL TRENDS"),
  ];
  static List<productmodel> fashionscreenmodels = [
    productmodel(
        imageurl:
            "assests/images/models/ModelFashionScreen/Screenshot 2023-06-26 195122.png",
        price: "120",
        description: "Elegance Unleashed Dress",
        title: "Frosty Flannel"),
    productmodel(
        imageurl:
            "assests/images/models/ModelFashionScreen/Screenshot 2023-06-28 230230.png",
        price: "180",
        description: "Sleek City Blazer",
        title: "Arctic Aura"),
    productmodel(
        imageurl:
            "assests/images/models/ModelFashionScreen/Screenshot 2023-06-28 230243.png",
        price: "200",
        description: "Urban Chic Trench Coat",
        title: "Cozy Chic"),
    productmodel(
        imageurl:
            "assests/images/models/ModelFashionScreen/Screenshot 2023-06-28 230257.png",
        price: "140",
        description: "Daring Diva Halter Top",
        title: "Snowy Serenade"),
    productmodel(
        imageurl:
            "assests/images/models/ModelFashionScreen/Screenshot 2023-06-28 230308.png",
        price: "1200",
        description: "Sophisticated Serenity Sweater",
        title: "Winter Whisper"),
  ];

  static List<productmodel> productscreenmodels = [
    productmodel(
        imageurl: "assests/images/content/items/product1.png",
        price: "120",
        description: "reversible angora's cardigan",
        title: "21WN"),
    productmodel(
        imageurl: "assests/images/content/items/product2.png",
        price: "120",
        description: "reversible angora's cardigan",
        title: "Lma"),
    productmodel(
        imageurl: "assests/images/content/items/product3.png",
        price: "120",
        description: "reversible angora's cardigan",
        title: "21WN"),
    productmodel(
        imageurl: "assests/images/content/items/product4.png",
        price: "120",
        description: "reversible angora's cardigan",
        title: "Lma"),
    productmodel(
        imageurl: "assests/images/content/items/product5.png",
        price: "120",
        description: "reversible angora's cardigan",
        title: "21WN"),
    productmodel(
        imageurl: "assests/images/content/items/product6.png",
        price: "120",
        description: "reversible angora's cardigan",
        title: "Lma"),
  ];

  static List<productmodel> frontscreenmodels = [
    productmodel(
        imageurl:
            "assests/images/models/frontscreenmodel/frontscreendisplaymodel1.png",
        price: "60",
        description: 'Comfortable striped T-shirt made from soft cotton fabric',
        title: "Striped T-shirt"),
    productmodel(
        imageurl:
            "assests/images/models/frontscreenmodel/frontscreendisplaymodel4.png",
        price: "100",
        description:
            'Luxurious leather handbag with spacious compartments for all your essentials.',
        title: "Leather Handbag"),
    productmodel(
        imageurl:
            "assests/images/models/frontscreenmodel/frontscreendisplaymodel3.png",
        price: "120",
        description: '',
        title: "21WN reversible angora cardigan"),
    productmodel(
        imageurl:
            "assests/images/models/frontscreenmodel/frontscreendisplaymodel2.png",
        price: "100",
        description: '',
        title: "Oblong bag"),
  ];

  static List<String> categoryoptions = [
    "All",
    "Apparel",
    "Dress",
    "T-Shirt",
    "Bag",
  ];

  static double kappbarheight = 80;
}

class images {
  static String appbarimage = "assests/images/pagecontent/appname.png";
  static String coverscreenimage =
      "assests/images/pagecontent/coversceenimage.png";
}






  // Example 1
  // FashionProduct product1 = FashionProduct(49.99, "Striped T-shirt", "Comfortable striped T-shirt made from soft cotton fabric.");

  // // Example 2
  // FashionProduct product2 = FashionProduct(79.99, "High-Waisted Jeans", "Classic high-waisted jeans with a flattering fit and vintage wash.");

  // // Example 3
  // FashionProduct product3 = FashionProduct(29.99, "Printed Scarf", "Elegant printed scarf to elevate your outfit effortlessly.");

  // // Example 4
  // FashionProduct product4 = FashionProduct(99.99, "Leather Handbag", "Luxurious leather handbag with spacious compartments for all your essentials.");

  // // Example 5
  // FashionProduct product5 = FashionProduct(19.99, "Cotton Socks (Pack of 5)", "A pack of comfortable and breathable cotton socks for everyday wear.");

  // // Example 6
  // FashionProduct product6 = FashionProduct(149.99, "Midi Dress", "Stylish midi dress for a perfect balance of elegance and comfort.");

  // // Example 7
  // FashionProduct product7 = FashionProduct(39.99, "Sunglasses", "Trendy sunglasses that provide UV protection and complement any look.");

  // // Example 8
  // FashionProduct product8 = FashionProduct(69.99, "Lace-up Sneakers", "Fashionable lace-up sneakers with a cushioned sole for all-day comfort.");

  // // Example 9
  // FashionProduct product9 = FashionProduct(129.99, "Wool Coat", "Elevate your winter style with this cozy and chic wool coat.");

  // // Example 10
  // FashionProduct product10 = FashionProduct(25.99, "Baseball Cap", "Sporty baseball cap made from durable materials for a casual yet stylish look.");}
