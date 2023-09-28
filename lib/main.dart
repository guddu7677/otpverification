import 'package:flutter/material.dart';
import 'package:otp_verification/otp.dart';
import 'package:otp_verification/phone.dart';

void main() {
  runApp(OtpVerification());
}

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Phone",
      routes: {"Phone": (context) => MyPhone(), "Otp": (context) => MyOtp()},
      home: MyPhone(),
    );
  }
}
