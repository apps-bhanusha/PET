import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet/ui/map/map_screen.dart';
import 'package:pet/utility/utility.dart';
import 'package:pet/utility/validator.dart';

import '../home/home_screen.dart';

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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Phone number",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      Row(
                        children:[
                           Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.flag),
                              Text(
                                "  +91  ",
                                style: TextStyle(color: Colors.black),
                              ),

                            ],
                          ),
                          Container(
                          width: 200,
                          child: TextFormField(
                            controller: mobileController,
                            keyboardType: TextInputType.number,
                            validator: (numb) => Validator.validateMobile(numb!, context),
                           // autovalidateMode: AutovalidateMode.onUserInteraction,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            maxLength: 10,
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding: EdgeInsets.all(0),
                              fillColor: Colors.transparent,

                              // enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                              // focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                              border: InputBorder.none
                            ),
                          ),
                        ),]
                      ),
          Container(margin: EdgeInsets.only(bottom: 30),height: 1,color: Colors.grey.shade400,)
                    ],
                  ),

          MaterialButton(

            color: buttonColor,
    minWidth: double.infinity,
    height: 45,
    elevation: 5,
    child: Text("Sign up with phone number",style: TextStyle(color: Colors.white,fontSize: 16),),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    onPressed: (){
Navigator.push(context, (MaterialPageRoute(builder: (context)=>MapScreen())));
}

)

                ],
              ),
            )));
  }
}
