import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(86, 84, 84, 1),
      body: CustomScrollView(
        slivers: [
          _AppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('assets/background/HoYoGuide.jpg'),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Your horizontal list
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        // Create a list of widgets corresponding to each item
                        List<Widget> widgetsForItem = [
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image:AssetImage('assets/toolbox/ToolBox.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Hộp công cụ'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/DiemDanh.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Điểm danh'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/KhaoSat.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Khảo sát'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/Concert.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Concert'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/BanDo.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Bản đồ'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/ChienTich.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Chiến tích'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/Wiki.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('HoYoWiki'),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            margin: EdgeInsets.all(8),
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:AssetImage('assets/toolbox/BoiDuong.jpg'),
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8),
                                // Additional widget for the first item
                                Text('Bồi dưỡng'),
                              ],
                            ),
                          ),
                          // Continue adding other widget variations as needed
                        ];

                        // Return the widget corresponding to the current index
                        return widgetsForItem[index % widgetsForItem.length];
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  // Your additional widget
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        // Create a list of widgets corresponding to each item
                        List<Widget> widgetsForItem = [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                            ),
                            width: 300,
                            margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image:AssetImage('assets/image/image1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                            ),
                            width: 300,
                            margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image:AssetImage('assets/image/image2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                            ),
                            width: 300,
                            margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image:AssetImage('assets/image/image3.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.transparent,
                            ),
                            width: 300,
                            margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image:AssetImage('assets/image/image4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Continue adding other widget variations as needed
                        ];

                        // Return the widget corresponding to the current index
                        return widgetsForItem[index % widgetsForItem.length];
                      },
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                                  'Tổng hợp chiến lược',
                              ),
                              Spacer(),
                              Text(
                                style:TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                                ),
                                  'Xem thêm',
                              ),
                              Icon(
                                  Icons.arrow_right,
                                color: Colors.deepPurple,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white24,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage('assets/background/ChienLuoc.jpg'),
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            style: TextStyle(
                                                fontSize: 17
                                            ),
                                            'Bản tin chiến lược',
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white24,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage('assets/background/NhanVat.jpg'),
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            style: TextStyle(
                                                fontSize: 17
                                            ),
                                            'Hướng dẫn nhân vật',
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white24,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage('assets/background/VuKhi.jpg'),
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            style: TextStyle(
                                                fontSize: 17
                                            ),
                                            'Đánh giá vũ khí',
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white24,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage('assets/background/SachSanVat.jpg'),
                                            height: 20,
                                            width: 20,
                                          ),
                                          Text(
                                            style: TextStyle(
                                                fontSize: 17
                                            ),
                                            'Sách sản vật',
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 205,

                    ),
                  // Continue adding other widgets as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _AppBar(BuildContext context){
  return SliverAppBar(
    expandedHeight: 10,
    backgroundColor: Color.fromRGBO(86, 84, 84, 1),
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: AssetImage('assets/background/genshin.jpg'),
            ),
          ),
        ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right:10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black26
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:3,right: 7),
                child: Image(
                    image: AssetImage('assets/background/primogem.jpg'),
                  height: 30,
                  width: 30,
                ),
              ),
              Text(
                style:TextStyle(
                  color: Colors.white24
                ),
                  '|',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, right: 3),
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          ),
        ),
      )
    ],
    flexibleSpace: FlexibleSpaceBar(
      title: Text(
        style:TextStyle(
          fontWeight: FontWeight.bold
        ),
          'Genshin Impact',
      ),
    ),
  );
}