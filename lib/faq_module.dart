import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class FaqScreen2 extends StatelessWidget {
  const FaqScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("FAQ about Flutter"),
        ),
        body: Accordion(
          maxOpenSections: 1,
          headerBackgroundColor: Colors.cyan,
          // headerTextStyle: TextStyle(
          //     color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          leftIcon: Icon(Icons.question_answer, color: Colors.white),
          children: [
            AccordionSection(
              isOpen: false,
              header: Text('What is Flutter?',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content: Text(
                  'Flutter SDK (Software Development Kit) is an innovative technology for creating applications on mobile, desktop, and web platforms. It’s a free, open-source UI framework from Google which has hit the market in 2017 Flutter refers to two important things An SDK (Software Development Kit): A collection of tools that are going to help you to develop your applications. It includes tools to compile your code in native machine code (code for IOS and Android) A Framework (UI Library based on widgets): A collection of reusable UI elements (buttons, text inputs, sliders, etc.) that you can personalize for your personal needs (source)'),
            ),
            AccordionSection(
              isOpen: false,
              header: Text('What is Flutter app development?',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content: Text(
                  "What’s most important about Flutter app development is that with this technology, developers can create cross-platform apps – mobile apps both for iOS and Android with a single codebase. Developers use Dart programming language to build Flutter apps. "),
            ),
            AccordionSection(
              isOpen: false,
              header: Text('What is cross-platform app development?',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content: Text(
                  "It means to develop apps for multiple platforms (operating systems) or devices with one code base, at the same time, instead of building separate apps for each one. This way, one developer can for example develop mobile apps for Android and iOS. Sometimes it’s about compiling different versions of the same software for different operating systems and sometimes developers build one code to then make minor changes to it for each platform with the use of APIs. \n\nGenerally, cross-platform app development enables the app to be made available to a wider audience in a shorter time. There are different methods of building such an app."),
            ),
          ],
        ),
      ),
    );
  }
}
