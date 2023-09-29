import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification/home.dart';
import 'package:otp_verification/otp.dart';
import 'package:otp_verification/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB62dUc5lipJUN2hxoPs1VbRrcAfO8Id68",
          appId: "1:352778272765:android:821e74752e790fbf572394",
          messagingSenderId: "352778272765",
          projectId: "otp-verification-a13c7"));

  runApp(OtpVerification());
}

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Phone",
      routes: {
        "Phone": (context) => MyPhone(),
        "Otp": (context) => MyOtp(),
        "HomePage": (context) => HomePage()
      },
      home: MyPhone(),
    );
  }
}
