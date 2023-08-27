import 'package:fashionapp/screens/productscreens/Catalog_Screen.dart';
import 'package:fashionapp/screens/productscreens/Feed_Screen.dart';
import 'package:fashionapp/widgets/custombutton3.dart';
import 'package:fashionapp/widgets/footer.dart';
import 'package:fashionapp/widgets/scrollstar.dart';

import '../../utils/export.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear_all_rounded,
              color: Colors.black,
            )),
        title: Image.asset(
          images.appbarimage,
          scale: 1,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined, color: Colors.black)),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ksizebox(
              h: 0.002,
            ),
            Image.asset(
              "assests/images/models/blogpagemodel/blogpageimage1.png",
              width: size.width,
              height: size.height * 0.2,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "2021 STYLE GUIDE : THE BIGGEST FALL TRENDS",
                style: GoogleFonts.tenorSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '"Unlock Your Style: A Fashion Guide for the Modern Wardrobe"\n\nDiscover the secrets to effortless style with our comprehensive fashion guide. Whether you re a fashion enthusiast or simply looking to enhance your personal style, this guide is your ultimate companion. Dive into a world of trends, timeless classics, and innovative fashion advice to create stunning outfits that reflect your unique personality. From understanding body shapes and color palettes to mastering the art of accessorizing and building a versatile wardrobe, this guide empowers you to make confident fashion choices. Unleash your inner fashionista and elevate your everyday looks with this indispensable style resource.',
                      style: GoogleFonts.tenorSans(fontSize: 13),
                      maxLines: 14,
                    ),
                  ),
                ],
              ),
            ),
            ksizebox(
              h: 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assests/images/models/blogpagemodel/blogpageimage5.png",
                    height: size.height * 0.4,
                    width: size.width * 0.8,
                    fit: BoxFit.fitWidth,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      scrollstar(current: true),
                      scrollstar(current: false),
                      scrollstar(current: false),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '"Elevate Your Style: The Perfect Fashion Bag for Every Occasion"\n\nIntroducing the ultimate fashion bag that seamlessly blends functionality and style. Designed with meticulous attention to detail, this fashion-forward accessory is a must-have for the modern trendsetter. Crafted from high-quality materials, it exudes luxury and durability, ensuring it stands the test of time. With its spacious interior and clever compartments, it effortlessly accommodates all your essentials, keeping you organized on the go. From casual outings to formal events, this versatile bag complements any outfit, making it the perfect companion for every occasion. Elevate your style game with this fashion bag that embodies sophistication, practicality, and undeniable flair.',
                      style: GoogleFonts.tenorSans(fontSize: 13),
                      maxLines: 14,
                    ),
                  ),
                  Text("Posted by OpenFashion | 3 Days Ago"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RoundedLightCustomButton(
                          change: false,
                          text: "#Fashion",
                          icon: Text(""),
                          left: true,
                          h: 0.04,
                          w: 0.2),
                      RoundedLightCustomButton(
                          onpress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DailyFeed()));
                          },
                          change: false,
                          text: "#Tips",
                          icon: Text(""),
                          left: true,
                          h: 0.04,
                          w: 0.2),
                    ],
                  ),
                ],
              ),
            ),
            ksizebox(
              h: 0.01,
            ),
            Footer(),
          ],
        ),
      )),
    );
  }
}
