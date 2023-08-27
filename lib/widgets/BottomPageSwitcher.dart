import 'package:fashionapp/utils/export.dart';

class BottomPageSwitcher extends StatelessWidget {
  const BottomPageSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.6,
            height: size.height * 0.05,
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: index == 0 ? Colors.black : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                              color: index == 0 ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
