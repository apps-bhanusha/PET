import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet/utility/validator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.30, left: 20, right: 20),
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/lounges/logo.png',
                    scale: 1.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Join the playspots community",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: mobileController,
                    keyboardType: TextInputType.number,
                    validator: (numb) => Validator.validateMobile(numb!, context),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 10,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                      hintText: 'enter customer phone number',
                      labelText: 'mobile number ',
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("  +91  ", Colors.black),
                        ],
                      ),
                      counterText: "",
                      contentPadding: EdgeInsets.all(0),
                      fillColor: Colors.transparent,
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                    ),
                  ),
                ],
              ),
            )));
  }
}
