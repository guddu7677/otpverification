import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 3,
                        spreadRadius: 3)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Text("+91"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined)
                          ],
                        ),
                      )),
                  Container(
                    width: 1,
                    height: 55,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                              hintText: "Enter mobile number",
                              border: InputBorder.none),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
                height: 35,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "Otp");
                    },
                    child: Text("Send Otp"))),
          )
        ],
      ),
    );
  }
}
