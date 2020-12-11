import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movedor/constants.dart';
import 'package:movedor/models/Chapter.dart';
import 'package:movedor/screens/book/chapters_content/components/play_pause.dart';
import 'package:video_player/video_player.dart';

import '../../../size_config.dart';
import 'components/custom_app_bar.dart';
import 'components/top_rounded_container.dart';

class Chapter03 extends StatefulWidget {
  static String routeName = "/chapter-03";
  @override
  _Chapter03State createState() => _Chapter03State();
}

class _Chapter03State extends State<Chapter03> {
  
  VideoPlayerController _controller;

  // void initState() {
  //   super.initState();
  //   SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //   ]);

  //   _controller = VideoPlayerController.asset('assets/videos/cap1.mp4');

  //   _controller = VideoPlayerController.asset(
  //     'assets/videos/cap1.mp4')
  //     ..initialize().then((_) {
  //       // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  //       setState(() {});
  //     });
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //   ]);
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(chapters[2]),
      body:  
      SingleChildScrollView(
        child: 
          Column(
            children: [
              SizedBox(
                width: 230,
                height: 230,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(chapters[2].image, scale: 0.6,),
                )
              ),
              
              TopRoundedContainer(
                color: Colors.white, 
                child: 
                Column(
                  children: [
                    Text(
                      chapters[2].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 25,
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.only(top: 20),
                    //   child: AspectRatio(
                    //     aspectRatio: _controller.value.aspectRatio,
                    //     child: Stack(
                    //       alignment: Alignment.bottomCenter,
                    //       children: <Widget>[
                    //         VideoPlayer(_controller),
                    //         PlayPauseOverlay(controller: _controller),
                    //         VideoProgressIndicator(_controller, allowScrubbing: true),
                    //       ],
                    //     ),
                    //   ),
                    // )
                    // ProductDescription(
                    //   product,
                    // ),
                    // ProductPricing(product),
                  ],
                )
              )
            ],
          ),
      ),
    );
  }
}