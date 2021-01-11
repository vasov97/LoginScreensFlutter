import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPassed = false;
  bool remembered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100)),
                      gradient: LinearGradient(
                          colors: <Color>[
                            Colors.green[800],
                            Colors.lightGreenAccent
                          ],
                          begin: Alignment.lerp(
                              Alignment.topRight, Alignment.center, 0.35),
                          end: Alignment.bottomCenter)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "App name",
                        style: GoogleFonts.aladin(
                          textStyle: Theme.of(context).textTheme.headline2,
                          color: Colors.white,
                          fontSize: 78.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              child: Icon(
                                Icons.bar_chart,
                                size: 40.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.72,
                          height: 32.0,
                          child: Material(
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () =>
                                  FocusScope.of(context).nextFocus(),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 21),
                                prefixIcon: Icon(Icons.email),
                                border: InputBorder.none,
                                hintText: "Enter the email ",
                                hintStyle: GoogleFonts.aladin(
                                  textStyle:
                                      Theme.of(context).textTheme.headline5,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.72,
                          height: 32.0,
                          child: Material(
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: TextField(
                              obscureText: !isPassed,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              onEditingComplete: () =>
                                  FocusScope.of(context).unfocus(),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 21),
                                prefixIcon: Icon(Icons.lock),
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  padding: EdgeInsets.only(top: 5),
                                  icon: Icon(isPassed
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isPassed = !isPassed;
                                    });
                                  },
                                ),
                                hintText: "Enter the password ",
                                hintStyle: GoogleFonts.aladin(
                                  textStyle:
                                      Theme.of(context).textTheme.headline5,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 27.0),
                            Checkbox(
                                checkColor: Colors.white,
                                value: remembered,
                                activeColor: Colors.green,
                                onChanged: (value) {
                                  setState(() {
                                    remembered = !remembered;
                                  });
                                }),
                            Text(
                              "Remember me",
                              style: GoogleFonts.aladin(
                                textStyle:
                                    Theme.of(context).textTheme.headline5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        gradientbutton(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don\'t have and account ?",
                              style: GoogleFonts.aladin(
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Signup",
                              style: GoogleFonts.aladin(
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget gradientbutton() {
    return InkWell(
      splashColor: Colors.white,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 6.0,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.green, Colors.lightGreenAccent]),
              borderRadius: BorderRadius.circular(40)),
          height: 55,
          width: MediaQuery.of(context).size.width * 0.52,
          child: Center(
              child: Text(
            'Login',
            style: GoogleFonts.aladin(
              textStyle: Theme.of(context).textTheme.headline6,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              letterSpacing: 2.0,
            ),
          )),
        ),
      ),
    );
  }
}
