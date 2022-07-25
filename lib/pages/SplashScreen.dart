import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'onBoarding.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  Color myPurple = Color.fromARGB(255, 127, 82, 131);
  Color myTape = Color.fromARGB(255, 166, 209, 230);
  Color myBackGround = Color.fromARGB(255, 254, 251, 246);
  Color myBlack = Color.fromARGB(255, 61, 60, 66);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Lottie.asset('assets/images/splash.json'),
            Text(
              'eHandy',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: myPurple),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        nextScreen: onBoarding(),
        splashIconSize: 400,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade);
  }
}


// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 1), () {
//       Navigator.of(context)
//           .push(MaterialPageRoute(builder: (_) => onBoarding()));
//     });
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Lottie.network(
//             'https://assets2.lottiefiles.com/packages/lf20_V5gqTY.json')
//       ],
//     );
//   }
// }
