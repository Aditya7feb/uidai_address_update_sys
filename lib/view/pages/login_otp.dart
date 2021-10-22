import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginOTP extends StatefulWidget {
  const LoginOTP({Key? key}) : super(key: key);

  @override
  _LoginOTPState createState() => _LoginOTPState();
}

class _LoginOTPState extends State<LoginOTP> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Icon(Icons.close)),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/Aadhar-Color.png",
                width: deviceSize.width * 0.4,
              ),
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              decoration: InputDecoration(labelText: "Enter OTP"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text("Resend OTP ?")),
              ],
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() {
                    LoginOTP();
                  });
                },
                child: Text("Login")),
          ),
        ],
      ),
    );
  }
}
