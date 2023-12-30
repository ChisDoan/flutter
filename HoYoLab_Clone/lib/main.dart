import 'package:flutter/material.dart';
import 'package:hoyolab_clone/tab_bar/su_kien_page.dart';
import 'package:hoyolab_clone/tab_bar/theo_doi_page.dart';
import 'package:hoyolab_clone/tab_bar/trang_chu_page.dart';
import 'package:hoyolab_clone/bottom_nav/game_page.dart';
import 'package:hoyolab_clone/bottom_nav/thong_bao_page.dart';
import 'package:hoyolab_clone/bottom_nav/thong_tin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    NavigationPage(),
    GamePage(),
    ThongBaoPage(),
    ThongTinPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      appBar: null,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '',
          ),
        ],
      ),
    );
  }
}

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                            labelColor: Colors.white,
                            dividerColor: Colors.transparent,
                            indicator: UnderlineTabIndicator(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(width: 5.0, color: Colors.deepPurple),
                              insets: EdgeInsets.symmetric(horizontal: 24.0),
                            ),
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Theo Dõi',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Trang Chủ',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Sự Kiện',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            TheoDoi(),
            TrangChu(),
            SuKien(),
          ],
        ),
      ),
    );
  }
}


