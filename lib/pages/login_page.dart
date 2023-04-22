import 'package:bloodconnect/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Image.asset(
                    "assets/img/logo1.png",
                    height: 220,
                  ),
                  SizedBox(height: 100),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "yourmail@gmail.com",
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: Container(
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Colors.black45)),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.email_outlined,
                              color: PrimaryColor,
                              size: 30,
                            ),
                          ),
                        ),
                        prefix: VerticalDivider(
                          width: 10,
                          color: Colors.amber,
                        )),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "********",
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: Container(
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(color: Colors.black45)),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.key,
                              color: PrimaryColor,
                              size: 30,
                            ),
                          ),
                        ),
                        prefix: VerticalDivider(
                          width: 10,
                          color: Colors.amber,
                        )),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 50,
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: PrimaryColor,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: PrimaryColor, fontSize: 16),
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Register Now",
                    style: TextStyle(color: PrimaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
