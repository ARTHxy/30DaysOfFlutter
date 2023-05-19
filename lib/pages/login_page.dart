import 'package:beginner_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Every Widget has it's key :
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            //SingleChildScrollView is important because ye overflow nahi hone deta or scroll bhi karta h
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/login_image.png",
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                    SizedBox(
                      // SizedBox is using for spacing instead of padding
                      height: 20.0,
                    ),
                    Text(
                      "Welcome $name",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Your Username",
                                labelText: "Username",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Username can not be empty";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                name = value;
                                setState(() {
                                  // only used in stateful widget for build call method and UI change.
                                });
                              }),
                          TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Your Password",
                                labelText: "Password",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password can not be empty";
                                } else if (value.length < 6) {
                                  return "Password length should be can greater than 6";
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 40.0,
                          ),
                          Material(
                            color: Colors.deepPurple,
                            child: InkWell(
                              // InkWell and ink is used for rippel effect like color change.
                              onTap: () => moveToHome(context),
                              child: AnimatedContainer(
                                // There is no onPressed property in container but elevated button has it that's why we use InkWell.
                                duration: Duration(
                                    seconds:
                                        1), // duration is must in AnimatedContainer.
                                width: changeButton ? 50 : 150,
                                height: 50,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),

                                //  shape:
                                //  changeButton ? BoxShape.circle : BoxShape.rectangle,
                              ),
                            ),
                          )

                          /*  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      // print("Hii! Arth");
                    },
                  ),
                 */
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
