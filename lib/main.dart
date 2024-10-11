import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:device_preview/device_preview.dart';
import 'package:office_app/src/working_time/view/working_time_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) {
          return const OfficeApp();
        },
      ),
    );

class OfficeApp extends StatelessWidget {
  const OfficeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      fallbackLocale: const Locale('en'),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.bahijTheSansArabic,
        scaffoldBackgroundColor: ColorName.white,
      ),
      home: const HomeScreen(),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'RGB Color Animation',
//       home: ColorChangingContainer(),
//     );
//   }
// }

// class ColorChangingContainer extends StatefulWidget {
//   @override
//   _ColorChangingContainerState createState() => _ColorChangingContainerState();
// }

// class _ColorChangingContainerState extends State<ColorChangingContainer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Color?> _colorAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Initialize the AnimationController with faster duration
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 4), // Faster switching between colors
//     );

//     // Define a tween sequence to animate between multiple colors
//     _colorAnimation = TweenSequence<Color?>(
//       [
//         TweenSequenceItem(
//           tween: ColorTween(begin: Colors.red, end: Colors.green),
//           weight: 2,
//         ),
//         TweenSequenceItem(
//           tween: ColorTween(begin: Colors.green, end: Colors.blue),
//           weight: 1,
//         ),
//         TweenSequenceItem(
//           tween: ColorTween(begin: Colors.blue, end: Colors.yellow),
//           weight: 1,
//         ),
//         TweenSequenceItem(
//           tween: ColorTween(begin: Colors.yellow, end: Colors.purple),
//           weight: 1,
//         ),
//         TweenSequenceItem(
//           tween: ColorTween(begin: Colors.purple, end: Colors.orange),
//           weight: 1,
//         ),
//         TweenSequenceItem(
//           tween: ColorTween(begin: Colors.orange, end: Colors.red),
//           weight: 1,
//         ),
//       ],
//     ).animate(_controller)
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           _controller.reverse();
//         } else if (status == AnimationStatus.dismissed) {
//           _controller.forward();
//         }
//       });

//     _controller.forward(); // Start the animation
//   }

//   @override
//   void dispose() {
//     _controller.dispose(); // Clean up the controller when widget is removed
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("RGB Color Animation")),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: _colorAnimation,
//           builder: (context, child) {
//             return Container(
//               width: 200,
//               height: 100,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: _colorAnimation.value,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
