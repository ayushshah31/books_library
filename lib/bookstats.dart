import 'package:flutter/material.dart';

class BookStats extends StatefulWidget {
  const BookStats({Key? key}) : super(key: key);

  @override
  _BookStatsState createState() => _BookStatsState();
}

class _BookStatsState extends State<BookStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Book Stats"),
        centerTitle: true,
        elevation: 0.0,
        leading: Row(
          children: [
            IconButton(
              onPressed: (){
                setState(() {
                  Navigator.popAndPushNamed(context,'/');
                });

              },
             icon: Icon(Icons.arrow_back_ios),
            ),

      ],
        ),
      ),
      body: Text('Hello'),
      backgroundColor: Colors.grey[900],
    );
  }
}
