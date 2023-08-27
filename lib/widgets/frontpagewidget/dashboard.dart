import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/utils/export.dart';

import '../displaycard.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleText(title: "NEW ARRIVALS", fontsize: 20, letterspacing: 3),
        CustomDivider(),
        Container(
          width: double.infinity,
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Utils.categoryoptions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Utils.categoryoptions[index],
                            style: GoogleFonts.tenorSans(
                                fontSize: 20,
                                color: current == index
                                    ? mycolor.titleactivecolor
                                    : Colors.grey[400]),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Visibility(
                              visible: current == index,
                              maintainAnimation: true,
                              maintainState: true,
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: mycolor.titleactivecolor),
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        Container(
          height: size.height / 2,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return ProductDisplayCard(
                  model: Utils.frontscreenmodels[index],
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("EXPLORE", style: GoogleFonts.tenorSans(fontSize: 18)),
              RotatedBox(quarterTurns: 2, child: Icon(Icons.arrow_back))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "assests/images/pagecontent/frontscreendisplaycontent1.png"),
            ],
          ),
        ),
      ],
    );
  }
}
