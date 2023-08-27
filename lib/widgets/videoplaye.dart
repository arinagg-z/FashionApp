import 'package:fashionapp/utils/export.dart';
import 'package:video_player/video_player.dart';

class videoplayer extends StatefulWidget {
  const videoplayer({super.key});

  @override
  State<videoplayer> createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {
  late VideoPlayerController vp;
  late Future<void> intialize;

  @override
  void initState() {
    vp = VideoPlayerController.networkUrl(Uri(
        path:
            "https://v4.cdnpk.net/videvo_files/video/free/video0456/large_watermarked/_import_60ab53a7886c20.52026426_FPpreview.mp4"));
    super.initState();
    intialize = vp.initialize();
    vp.setLooping(true);
    vp.play();
  }

  @override
  void dispose() {
    vp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: intialize,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(vp);
          } else {
            return Image.asset(
              "assests/images/pagecontent/bottomdisplayimage2.png",
              fit: BoxFit.cover,
            );
          }
        });
  }
}
