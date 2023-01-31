import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<bool> expanded = [false, false];
  //expaned status boolean for ExpansionPanel
  //we have two panels so the bool value
  //set bool to true, if you want to expand accordion by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Accordion in Flutter"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          child: Column(
            children: [
              ExpansionTile(
                title: Text("FAQ QUESTION ONE"),
                children: [
                  Container(
                    color: Colors.black12,
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Text("Answers for Question One"),
                  )
                ],
              ),
              Card(
                color: Colors.greenAccent[100],
                child: ExpansionTile(
                  title: Text("FAQ QUESTION TWO"),
                  children: [
                    Container(
                      color: Colors.black12,
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      child: Text("Answers for Question Two"),
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 50,
              ),
              ExpansionPanelList(
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      expanded[panelIndex] = !isExpanded;
                    });
                  },
                  animationDuration: Duration(seconds: 2),
                  //animation duration while expanding/collapsing
                  children: [
                    ExpansionPanel(
                        headerBuilder: (context, isOpen) {
                          return Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("FAQ QUESTIOn THREE"));
                        },
                        body: Container(
                          padding: EdgeInsets.all(20),
                          color: Colors.redAccent[100],
                          width: double.infinity,
                          child: Text("hello world"),
                        ),
                        isExpanded: expanded[0]),
                    ExpansionPanel(
                        headerBuilder: (context, isOpen) {
                          return Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("FAQ QUESTIOn FOUR"));
                        },
                        body: Container(
                          padding: EdgeInsets.all(20),
                          color: Colors.blueAccent[100],
                          width: double.infinity,
                          child: Text("hello world"),
                        ),
                        isExpanded: expanded[1])
                  ])
            ],
          ),
        ));
  }
}
