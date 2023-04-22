import 'package:bloodconnect/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  SizedBox(height: 40),
                  Image.asset(
                    "assets/img/logo1.png",
                    height: 200,
                  ),
                  SizedBox(height: 80),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
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
                              Icons.person_outline,
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
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Blood Type",
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
                              Icons.bloodtype,
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
                  SizedBox(height: 50),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 50,
                      child: Center(
                        child: Text(
                          "Register",
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
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log In",
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
