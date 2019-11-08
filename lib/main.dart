import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:passcodescreen/src/resources/fontsclass.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasscodePage(),
    );
  }
}

class PasscodePage extends StatefulWidget {
  @override
  _PasscodePageState createState() => _PasscodePageState();
}

List passcode = ['1', '2', '3', '4'];
List currentPasscode = [];

double numberFontSize = 20;
bool obscuretext = true;
var textFieldCounter = 1;

class _PasscodePageState extends State<PasscodePage> {
  var firstController = TextEditingController(text: "");
  var secondController = TextEditingController(text: "");
  var thirdController = TextEditingController(text: "");
  var fourthController = TextEditingController(text: "");

  void validatePasscodeFields() {
    textFieldCounter = 1;

    firstController.clear();
    secondController.clear();
    thirdController.clear();
    fourthController.clear();

    if ((listEquals(passcode, currentPasscode) == true)) {
      Toast.show(
        "Password Matched",
        context,
        duration: Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      currentPasscode = [];
    } else {
      Toast.show(
        "Incorrect Passcode!",
        context,
        duration: Toast.LENGTH_SHORT,
        gravity: Toast.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      currentPasscode = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              "Enter Passcode",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: fonts().fontRegular),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 55, right: 55, top: 55, bottom: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2, color: Colors.grey.shade200))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 35, color: Colors.grey.shade700),
                            // textDirection: ,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                            ),
                            obscureText: obscuretext,
                            enabled: false,
                            controller: firstController,
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2, color: Colors.grey.shade200))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 35, color: Colors.grey.shade700),
                            // textDirection: ,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                            ),
                            obscureText: obscuretext,
                            enabled: false,
                            controller: secondController,
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2, color: Colors.grey.shade200))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 35, color: Colors.grey.shade700),
                            // textDirection: ,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                            ),
                            obscureText: obscuretext,
                            enabled: false,
                            controller: thirdController,
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 2, color: Colors.grey.shade200))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 35, color: Colors.grey.shade700),
                            // textDirection: ,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                            ),
                            obscureText: obscuretext,
                            enabled: false,
                            controller: fourthController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      print("Forgot butto tapped");
                      Toast.show(
                        "forgott passcode tapped",
                        context,
                        duration: Toast.LENGTH_SHORT,
                        gravity: Toast.TOP,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                      );
                    },
                    child: Text(
                      "forgot passcode?",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontFamily: fonts().fontRegular,
                          fontSize: 14),
                    ),
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "1";
                              textFieldCounter++;
                              currentPasscode.add('1');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "1";
                              textFieldCounter++;
                              currentPasscode.add('1');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "1";
                              textFieldCounter++;
                              currentPasscode.add('1');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "1";
                              currentPasscode.add('1');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "2";
                              textFieldCounter++;
                              currentPasscode.add('2');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "2";
                              textFieldCounter++;
                              currentPasscode.add('2');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "2";
                              textFieldCounter++;
                              currentPasscode.add('2');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "2";
                              currentPasscode.add('2');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "3";
                              textFieldCounter++;
                              currentPasscode.add('3');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "3";
                              textFieldCounter++;
                              currentPasscode.add('3');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "3";
                              textFieldCounter++;
                              currentPasscode.add('3');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "3";
                              currentPasscode.add('3');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "4";
                              textFieldCounter++;
                              currentPasscode.add('4');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "4";
                              textFieldCounter++;
                              currentPasscode.add('4');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "4";
                              textFieldCounter++;
                              currentPasscode.add('4');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "4";
                              currentPasscode.add('4');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "5";
                              textFieldCounter++;
                              currentPasscode.add('5');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "5";
                              textFieldCounter++;
                              currentPasscode.add('5');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "5";
                              textFieldCounter++;
                              currentPasscode.add('5');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "5";
                              currentPasscode.add('5');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "6";
                              textFieldCounter++;
                              currentPasscode.add('6');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "6";
                              textFieldCounter++;
                              currentPasscode.add('6');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "6";
                              textFieldCounter++;
                              currentPasscode.add('6');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "6";
                              currentPasscode.add('6');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "6",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "7";
                              textFieldCounter++;
                              currentPasscode.add('7');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "7";
                              textFieldCounter++;
                              currentPasscode.add('7');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "7";
                              textFieldCounter++;
                              currentPasscode.add('7');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "7";
                              currentPasscode.add('7');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "7",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "8";
                              textFieldCounter++;
                              currentPasscode.add('8');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "8";
                              textFieldCounter++;
                              currentPasscode.add('8');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "8";
                              textFieldCounter++;
                              currentPasscode.add('8');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "8";
                              currentPasscode.add('8');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "8",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "9";
                              textFieldCounter++;
                              currentPasscode.add('9');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "9";
                              textFieldCounter++;
                              currentPasscode.add('9');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "9";
                              textFieldCounter++;
                              currentPasscode.add('9');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "9";
                              currentPasscode.add('9');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "9",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          setState(() {
                            if (textFieldCounter == 4) {
                              thirdController.clear();
                              textFieldCounter = 3;
                            } else if (textFieldCounter == 3) {
                              secondController.clear();
                              textFieldCounter = 2;
                            } else if (textFieldCounter == 2) {
                              firstController.clear();
                              textFieldCounter = 1;
                            }
                          });
                          print("object");
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Icon(
                              Icons.backspace,
                              size: 22,
                            )),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          setState(() {
                            if (textFieldCounter == 1) {
                              firstController.text = "0";
                              textFieldCounter++;
                              currentPasscode.add('0');
                            } else if (textFieldCounter == 2) {
                              secondController.text = "0";
                              textFieldCounter++;
                              currentPasscode.add('0');
                            } else if (textFieldCounter == 3) {
                              thirdController.text = "0";
                              textFieldCounter++;
                              currentPasscode.add('0');
                            } else if (textFieldCounter == 4) {
                              fourthController.text = "0";
                              currentPasscode.add('0');
                              validatePasscodeFields();
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text(
                            "0",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: numberFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: fonts().fontRegular),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 0,
                      type: MaterialType.circle,
                      child: InkWell(
                        splashColor: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        onTap: () {
                          print("object");
                          validatePasscodeFields();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Icon(
                            Icons.check,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
