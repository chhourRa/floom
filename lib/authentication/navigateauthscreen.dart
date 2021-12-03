import 'package:floom/authentication/loginscreen.dart';
import 'package:floom/authentication/registerscreen.dart';
import 'package:floom/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class NavigateAuthScreen extends StatefulWidget {
  @override
  _NavigateStateAuthScreenState createState() =>
      _NavigateStateAuthScreenState();
}

class _NavigateStateAuthScreenState extends State<NavigateAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: GradientColors.blue)),
            child: Center(
              child: Image.asset(
                'images/logo.png',
                height: 100,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                margin: const EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: GradientColors.beautifulGreen),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: mystyle(30, Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen())),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient:
                              const LinearGradient(colors: GradientColors.pink),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: mystyle(30, Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
