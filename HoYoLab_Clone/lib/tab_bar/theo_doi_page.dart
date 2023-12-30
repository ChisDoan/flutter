import 'package:flutter/material.dart';

class TheoDoi extends StatefulWidget {
  @override
  _TheoDoiState createState() => _TheoDoiState();
}

class _TheoDoiState extends State<TheoDoi> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          // Phần tìm kiếm
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white12,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập từ khóa tìm kiếm',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          // Phần list
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                //eula
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/eula/eula.jpeg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                    'Eula Lawrence',
                                ),

                              Text('Kỵ Sĩ Sóng Nước'),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: isFollowing ? Colors.grey : Colors.transparent,
                                side: BorderSide(
                                    color: isFollowing
                                        ? Colors.transparent
                                        : Colors.purple),
                                onPrimary: Colors.purple,
                                minimumSize: Size(0, 30),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              child: Text(
                                isFollowing ? 'Đã theo dõi' : 'Theo dõi',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isFollowing
                                      ? Colors.white
                                      : Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/eula/eula1.jpeg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/eula/eula2.jpeg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/eula/eula3.jpeg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/eula/eula4.jpeg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                //raiden
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/raiden/raiden.jpeg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                style: TextStyle(
                                    fontSize: 20
                                ),
                                'Raiden Shogun',
                              ),

                              Text('Gái nhà quê'),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: isFollowing ? Colors.grey : Colors.transparent,
                                side: BorderSide(
                                    color: isFollowing
                                        ? Colors.transparent
                                        : Colors.purple),
                                onPrimary: Colors.purple,
                                minimumSize: Size(0, 30),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              child: Text(
                                isFollowing ? 'Đã theo dõi' : 'Theo dõi',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isFollowing
                                      ? Colors.white
                                      : Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/raiden/raiden1.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/raiden/raiden2.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/raiden/raiden3.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/raiden/raiden4.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                //yae
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/yae/yae.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                style: TextStyle(
                                    fontSize: 20
                                ),
                                'Yae Miko',
                              ),

                              Text('Chị cáo Yae'),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: isFollowing ? Colors.grey : Colors.transparent,
                                side: BorderSide(
                                    color: isFollowing
                                        ? Colors.transparent
                                        : Colors.purple),
                                onPrimary: Colors.purple,
                                minimumSize: Size(0, 30),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              child: Text(
                                isFollowing ? 'Đã theo dõi' : 'Theo dõi',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isFollowing
                                      ? Colors.white
                                      : Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/yae/yae1.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/yae/yae2.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/yae/yae3.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/yae/yae4.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                //klee
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/klee/klee.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                style: TextStyle(
                                    fontSize: 20
                                ),
                                'Klee',
                              ),

                              Text('Khủng bố Teyvat'),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: isFollowing ? Colors.grey : Colors.transparent,
                                side: BorderSide(
                                    color: isFollowing
                                        ? Colors.transparent
                                        : Colors.purple),
                                onPrimary: Colors.purple,
                                minimumSize: Size(0, 30),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              child: Text(
                                isFollowing ? 'Đã theo dõi' : 'Theo dõi',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isFollowing
                                      ? Colors.white
                                      : Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/klee/klee1.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/klee/klee2.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/klee/klee3.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/klee/klee4.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                //itto
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/itto/itto.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                style: TextStyle(
                                    fontSize: 20
                                ),
                                'Arataki Itto',
                              ),

                              Text('Quái Kiệt Hanamizaka'),
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: isFollowing ? Colors.grey : Colors.transparent,
                                side: BorderSide(
                                    color: isFollowing
                                        ? Colors.transparent
                                        : Colors.purple),
                                onPrimary: Colors.purple,
                                minimumSize: Size(0, 30),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                              ),
                              child: Text(
                                isFollowing ? 'Đã theo dõi' : 'Theo dõi',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: isFollowing
                                      ? Colors.white
                                      : Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/itto/itto1.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/itto/itto2.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/itto/itto3.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage('assets/itto/itto4.jpg'),
                        height: 85,
                        width: 85,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container

              ],
            ),
          ),
        ],
      ),
    );
  }
}