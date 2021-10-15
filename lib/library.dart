import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookList {

  String bookName ;
  String author ;
  String year ;
  String image ;

  BookList( { required this.bookName ,required this.author , required this.image , required this.year });

}


class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {

  String t1 = 'Library';
  String t2 = 'Wish List';
  String t3 = 'Settings';
  String t4 = '';


  List<BookList> booksList = [
    BookList(bookName: 'Harry Potter and the \nPhilosophers Stone', author: 'Ayush', image: 'assets/HPb1.jpeg', year: '2010'),
    BookList(bookName: 'Harry Potter and the \nChamber of Secret', author: 'Ayush', image: 'assets/HPb2.jpeg', year: '2011'),
    BookList(bookName: 'Harry Potter and the \nPrisoner of Azkaban', author: 'Ayush', image: 'assets/HPb3.jpeg', year: '2012'),
    BookList(bookName: 'Harry Potter and the \nGoblet of Fire', author: 'Ayush', image: 'assets/HPb4.png', year: '2013'),
    BookList(bookName: 'Harry Potter and the \nOrder of Phoenix', author: 'Ayush', image: 'assets/HPb5.png', year: '2014'),
    BookList(bookName: 'Harry Potter and the \nHalf Blood Prince', author: 'Ayush', image: 'assets/HPb6.png', year: '2015'),
    BookList(bookName: 'Harry Potter and the \nDeathly Hallows', author: 'Ayush', image: 'assets/HPb7.jpeg', year: '2016'),
    BookList(bookName: 'Chanakya Niti', author: 'Ayush', image: 'assets/CN.jpeg', year: '2017'),
    BookList(bookName: 'How to Become Great \nin Business', author: 'Ayush', image: 'assets/HTBGIB.jpeg', year: '2018'),
    BookList(bookName: 'IT', author: 'Ayush', image: 'assets/IT.jpeg', year: '2019'),
    BookList(bookName: 'Sherlock Holmes', author: 'Ayush', image: 'assets/SH.jpeg', year: '2020'),
    BookList(bookName: 'The Happiness of Pursuit', author: 'Ayush', image: 'assets/THOP.jpeg', year: '2021'),
    BookList(bookName: 'The Subtle Art Of \nNot Giving A Fu*k', author: 'Ayush', image: 'assets/TSAONGAF.png', year: '2021'),
    BookList(bookName: 'Game of Thrones', author: 'Ayush', image: 'assets/GOT.jpeg', year: '2021'),
    BookList(bookName: 'The Alchemist', author: 'Ayush', image: 'assets/TA.jpeg', year: '2021'),
  ];

  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search in Library');

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index ;

    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      ' Library',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    ),
    Text(
      ' Wish List',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      )
    ),
    Text(
      ' Settings',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
        )
    ),
  ];

  Icon _bookmark = Icon(Icons.bookmark) ;
  Icon bookmarkIcon = Icon(Icons.bookmark,color: Colors.red,);
  Icon bookmarkIconColor = Icon(Icons.bookmark);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Library',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Wishlist',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        elevation: 20,
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(onPressed: (){} , icon: Icon(Icons.wifi_protected_setup_sharp),color: Colors.amber,),
                    SizedBox(width: 15),
                    IconButton(onPressed: (){} , icon: Icon(Icons.wifi),color: Colors.amber),
                    SizedBox(width: 220),
                    IconButton(alignment: Alignment.topRight ,onPressed: (){} ,icon: Icon(Icons.add),color: Colors.amber),
                  ]
            ),

            _widgetOptions.elementAt(_selectedIndex),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 05),
              padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    //padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                      icon: customIcon,
                      onPressed: (){
                        setState(() {
                          if (customIcon.icon == Icons.search) {
                            customIcon = const Icon(Icons.cancel);
                            customSearchBar = const SizedBox(
                              width: 200,
                              height: 48.8,
                              child: ListTile(
                                title: TextField(
                                  decoration: InputDecoration(
                                    hintText: '....Enter Book Name' ,
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }
                          else {
                            customIcon = const Icon(Icons.search);
                            customSearchBar = const Text('Search in Library');
                          }
                        }
                        );
                        } ,
                  ),
                  customSearchBar ,
                ],
              ),
            ),
            SizedBox(
              height: 492,
              child: Scrollbar(
                isAlwaysShown: false ,
                child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: booksList.length ,
                  itemBuilder: (context,index){
                      return ListTile(
                          title: Card(
                              elevation: 10,
                              color: Colors.grey[300],
                              child: Row(
                                  children: [
                                    //Image.asset('${booksList[index].image}',height: 20, width: 20),
                                    Image.asset('${booksList[index].image}',height: 150,width: 100),
                                    SizedBox(width: 10,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 0, 40, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            booksList[index].bookName,
                                            style: TextStyle(
                                              textBaseline: TextBaseline.ideographic,
                                              letterSpacing: 2.0,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                          Text(
                                              booksList[index].author,
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(onPressed: (){
                                        setState(() {
                                          if(_bookmark.icon == bookmarkIcon.icon && _bookmark.color == bookmarkIcon.color)
                                            {
                                              _bookmark = bookmarkIconColor;
                                            }
                                          else{
                                            _bookmark = bookmarkIcon;
                                          }
                                        });
                                    },
                                      icon: _bookmark,
                                    )
                                  ],
                                ),
                                // leading: CircleAvatar(
                                //     backgroundImage: AssetImage('assets/${locations[index].flag}')
                                // ),

                          ),
                        );
                    },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

