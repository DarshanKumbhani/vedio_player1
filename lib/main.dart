import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:vedio_player1/provider/provider.dart';
import 'package:vedio_player1/view/home_screen.dart';
import 'package:vedio_player1/view/view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoPlayerProvider(),)
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) =>
        MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) =>VideoPlay_Screen(),
            'view':(context) => VideoPlayHere()
          },

        ),
      ),
    )
  );
}

