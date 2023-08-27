import 'package:fashionapp/utils/export.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
          child: Column(
            children: [
              TitleText(
                  title: "PAGE NOT FOUND", fontsize: 24, letterspacing: 5),
              CustomDivider(),
              Container(
                height: size.height * 0.45,
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Icon(
                      Icons.pin_drop_outlined,
                      color: mycolor.primarycolor,
                      size: 60,
                    ),
                    ksizebox(
                      h: 0.02,
                    ),
                    Text(
                      "ghjbkln;msklfklmsfsf",
                      style: GoogleFonts.tenorSans(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    ksizebox(
                      h: 0.02,
                    ),
                    CustomButton(
                        h: 0.05,
                        w: 0.6,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        text: "Home Page",
                        change: true,
                        space: false,
                        fav: false,
                        left: true),
                  ],
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
