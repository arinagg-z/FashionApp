import 'package:fashionapp/utils/export.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              TitleText(title: "CONTACT", fontsize: 28, letterspacing: 5),
              CustomDivider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Icon(
                      Icons.message_outlined,
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
                        icon: Text(""),
                        text: "CHAT WITH US",
                        change: true,
                        space: false,
                        fav: false,
                        left: false),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Icon(
                      Icons.email_outlined,
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
                        icon: Text(""),
                        text: "TEXT US",
                        change: true,
                        space: false,
                        fav: false,
                        left: false),
                  ],
                ),
              ),
              ksizebox(
                h: 0.1,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
