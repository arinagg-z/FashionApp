import 'package:fashionapp/screens/Accessories_Screen.dart';
import 'package:fashionapp/screens/CartScreens/Address_Screen.dart';
import 'package:fashionapp/screens/October_Collection_Screen.dart';
import 'package:fashionapp/widgets/Feed_Display_Card.dart';
import 'package:fashionapp/widgets/navigatebutton.dart';

import '../../utils/export.dart';

class DailyFeed extends StatelessWidget {
  const DailyFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(color: mycolor.inputbackgroundcolor),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ksizebox(
                h: 0.06,
              ),
              Text(
                " BLOG",
                style: GoogleFonts.tenorSans(
                    fontSize: 23,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
              ),
              ksizebox(
                h: 0.015,
              ),
              CustomDivider(),
              NavTray(),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Utils.BlogScreenModel.length,
                    itemBuilder: (context, index) {
                      return FeedDisplayCard(
                          model: Utils.BlogScreenModel[index]);
                    }),
              ),
              NavButton(
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OctoberCollectionScreen()));
                  },
                  text: "LOAD MORE",
                  icon: Icons.add),
              ksizebox(
                h: 0.1,
              ),
              Footer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccessoriesScreen()));
                  },
                  icon: Icon(Icons.forward))
            ],
          ),
        ),
      )),
    );
    ;
  }
}
