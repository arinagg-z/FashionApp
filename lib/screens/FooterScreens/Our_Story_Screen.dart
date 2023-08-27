import 'package:fashionapp/utils/export.dart';

class OurStoryScreen extends StatelessWidget {
  OurStoryScreen({super.key});
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor.appbarcolor,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.clear_all_rounded)),
        title: Center(
          child: Image.asset(
            images.appbarimage,
            scale: 1.4,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ksizebox(
              h: 0.05,
            ),
            TitleText(title: "OUR STORY", fontsize: 28, letterspacing: 5),
            CustomDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                '"Discover the epitome of style and elegance at our fashion store. Step into a world of trendsetting designs, carefully curated collections, and personalized shopping experiences. From chic ensembles to statement accessories, we offer a diverse range of fashion-forward choices that cater to every taste and occasion.\n\nOur passionate team of fashion experts is dedicated to helping you express your unique sense of fashion, ensuring you leave our store feeling confident and inspired. Embrace the latest fashion trends and elevate your style with us."',
                style: GoogleFonts.tenorSans(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20),
            //   // child: Image.asset(
            //   //   "",
            //     height: size.height * 0.3,
            //     width: size.width,
            //     fit: BoxFit.fill,
            //   ),
            // ),
            ksizebox(
              h: 0.1,
            ),
            TitleText(title: "SIGN UP", fontsize: 28, letterspacing: 5),
            CustomDivider(),
            // Text(
            //   "ghjbkln;msklfklmsfsf",
            //   style: GoogleFonts.tenorSans(
            //       fontSize: 15, fontWeight: FontWeight.bold),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: "EmailAddress"),
              ),
            ),
            ksizebox(
              h: 0.008,
            ),
            CustomButton(
                h: 0.05,
                w: 1,
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                text: "SUBMIT",
                change: true,
                space: false,
                fav: false,
                left: false)
          ],
        ),
      ),
    );
  }
}
