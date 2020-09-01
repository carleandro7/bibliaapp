import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _getAllCourses();
  }

  void _getAllCourses() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Disciplinas"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: 0,
        itemBuilder: (context, index) {
          return _courseCard(context, index);
        },
      ),
    );
  }

  Widget _courseCard(BuildContext context, int index) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
