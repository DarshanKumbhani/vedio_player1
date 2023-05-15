import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../provider/provider.dart';

class VideoPlay_Screen extends StatefulWidget {
  const VideoPlay_Screen({Key? key}) : super(key: key);

  @override
  State<VideoPlay_Screen> createState() => _VideoPlay_ScreenState();
}

class _VideoPlay_ScreenState extends State<VideoPlay_Screen> {
  VideoPlayerProvider? vppT;
  VideoPlayerProvider? vppF;

  @override
  Widget build(BuildContext context) {
    vppT = Provider.of<VideoPlayerProvider>(context, listen: true);
    vppF = Provider.of<VideoPlayerProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Dialouge App",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Provider.of<VideoPlayerProvider>(context, listen: false)
                    .loadvideo("${vppT!.videos[index].path}");
                Navigator.pushNamed(context, "view", arguments: index);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                  height: 30.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     ),
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset("${vppT!.videos[index].poster}",fit: BoxFit.cover,)),
                ),
              ),
            );
          },
          itemCount: vppT!.videos.length,
        ),
      ),
    );
  }
}
