import 'package:address_update_system/view/pages/login_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: deviceSize.height * 0.08,
          ),
          SafeArea(
            child: Center(
              child: Container(
                child: Image.asset(
                  "assets/Aadhar-Color.png",
                  width: deviceSize.width * 0.4,
                ),
              ),
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Your 16 Digit Aadhar Number / Mobile Number"),
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(() => LoginOTP());
              },
              child: Text("Send OTP"))
        ],
      ),
    );
  }
}
