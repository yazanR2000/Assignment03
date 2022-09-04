import 'package:flutter/material.dart';

void main() =>
  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Assignment());
  }
}

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle _style =  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: RaisedButton(
              disabledColor: Colors.grey[200],
              disabledTextColor: Colors.grey[350],
              padding: EdgeInsets.symmetric(
                horizontal: 100,
              ),
              elevation: 15,
              onPressed: () => print(
                  "Raised Button Pressed one!\nRaisedButton is the material design button based on a Material widget that elevates when pressed upon in flutter. It is one of the most widely used buttons in the flutter library."),
              color: Colors.amber,
              child: Text("Raised Button", style: _style),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              textColor: Colors.black,
              onLongPress: () => print(
                  "Raised Button Long press!\nRaisedButton is the material design button based on a Material widget that elevates when pressed upon in flutter. It is one of the most widely used buttons in the flutter library."),
            ),
          ),
          const Divider(),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                
                //fixedSize: const Size(300, 30),
                //minimumSize: Size(200, 40),
                //maximumSize: Size(400, 40),
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                ),
                textStyle: _style,
                primary: Colors.black,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 15,
                shadowColor: Colors.black38,
              ),
              onPressed: () => print(
                  "Elevated Button one press!\nThe main characteristic these buttons hold is the slight elevation in their surface towards the screen on getting tapped by the user. In simple language, elevated buttons are un-deprecated raised buttons with no explicitly defined button styling. Elevated Buttons cannot be styled i.e. you cannot modify the color of the button, font size, text style, etc explicitly like raised buttons. This class was launched in version 1.22 of flutter. You can pass text or icons as a child to them. To handle the styling of the Elevated Button, a ButtonStyle class is used which allows the styling of a button according to requirements."),
              onLongPress: () => print(
                  "Elevated Button Long press!\nThe main characteristic these buttons hold is the slight elevation in their surface towards the screen on getting tapped by the user. In simple language, elevated buttons are un-deprecated raised buttons with no explicitly defined button styling. Elevated Buttons cannot be styled i.e. you cannot modify the color of the button, font size, text style, etc explicitly like raised buttons. This class was launched in version 1.22 of flutter. You can pass text or icons as a child to them. To handle the styling of the Elevated Button, a ButtonStyle class is used which allows the styling of a button according to requirements."),
              child: const Text("Elevated Button"),
            ),
          ),
        ],
      ),
    );
  }
}
