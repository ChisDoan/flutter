import 'package:flutter/material.dart';

class TrangChu extends StatefulWidget {
  @override
  _TrangChuState createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
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
                ),// Avatar
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    style:TextStyle(
                      fontSize: 27
                    ),
                    'eula',
                  ),
                ),// status
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft: Radius.circular(10)) ,
                            color: Colors.white
                        ),
                        child: Image(
                          image: AssetImage('assets/eula/eula1.jpeg'),
                          height: 185,
                          width: 185,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                            color: Colors.white
                        ),
                        child: Image(
                          image: AssetImage('assets/eula/eula2.jpeg'),
                          height: 185,
                          width: 185,
                        ),
                      ),
                    ],
                  ),
                ),// Ảnh
                SizedBox(height: 15,),// Khoảng cách giữa ảnh và hashtag
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.deepPurpleAccent
                              ),
                                '#GenshinImpact',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#EulaLawrence',
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),// hashtag
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white24,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                style: TextStyle(
                                  color: Colors.white24,
                                ),
                                  '136K'
                              )
                            ],
                          ),
                        ),//View count
                        Spacer(),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                style:TextStyle(
                                  color:Colors.white60
                                ),
                                  '136K'
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.thumb_up_off_alt_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                style:TextStyle(
                                  color: Colors.white60
                                ),
                                  '98K'
                              )
                            ],
                          ),
                        )


                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                Divider(
                  height: 1,
                  thickness: 0.10,
                ),
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
                ),// Avatar
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 27
                    ),
                    'Raiden',
                  ),
                ),// status
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/raiden/raiden1.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/raiden/raiden2.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      )
                    ],
                  ),
                ),// Ảnh
                SizedBox(height: 15,),// Khoảng cách giữa ảnh và hashtag
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#GenshinImpact',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#RaidenShogun',
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),// hashtag
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white24,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                  style: TextStyle(
                                    color: Colors.white24,
                                  ),
                                  '136K'
                              )
                            ],
                          ),
                        ),//View count
                        Spacer(),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color:Colors.white60
                                  ),
                                  '136K'
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.thumb_up_off_alt_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color: Colors.white60
                                  ),
                                  '98K'
                              )
                            ],
                          ),
                        ),//Comment and like
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                Divider(
                  height: 1,
                  thickness: 0.15,
                ),
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
                ),// Avatar
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 27
                    ),
                    'Yae',
                  ),
                ),// status
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/yae/yae1.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/yae/yae2.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                    ],
                  ),
                ),// Ảnh
                SizedBox(height: 15,),// Khoảng cách giữa ảnh và hashtag
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#GenshinImpact',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#YaeMiko',
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),// hashtag
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white24,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                  style: TextStyle(
                                    color: Colors.white24,
                                  ),
                                  '136K'
                              )
                            ],
                          ),
                        ),//View count
                        Spacer(),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color:Colors.white60
                                  ),
                                  '136K'
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.thumb_up_off_alt_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color: Colors.white60
                                  ),
                                  '98K'
                              )
                            ],
                          ),
                        ),//Comment and like
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                Divider(
                  height: 1,
                  thickness: 0.10,
                ),
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
                ),// Avatar
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 27
                    ),
                    'Klee',
                  ),
                ),// status
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/klee/klee1.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/klee/klee2.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                    ],
                  ),
                ),// Ảnh
                SizedBox(height: 15,),// Khoảng cách giữa ảnh và hashtag
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#GenshinImpact',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#Klee',
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),// hashtag
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white24,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                  style: TextStyle(
                                    color: Colors.white24,
                                  ),
                                  '136K'
                              )
                            ],
                          ),
                        ),//View count
                        Spacer(),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color:Colors.white60
                                  ),
                                  '136K'
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.thumb_up_off_alt_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color: Colors.white60
                                  ),
                                  '98K'
                              )
                            ],
                          ),
                        ),//Comment and like
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                Divider(
                  height: 1,
                  thickness: 0.10,
                ),
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
                ),// Avatar
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 27
                    ),
                    'Itto',
                  ),
                ),// status
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/itto/itto1.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                          child: Image(
                            image: AssetImage('assets/itto/itto2.jpg'),
                            height: 185,
                            width: 185,
                            fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                          ),
                        ),
                      ),
                    ],
                  ),
                ),// Ảnh
                SizedBox(height: 15,),// Khoảng cách giữa ảnh và hashtag
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#GenshinImpact',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white12
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.deepPurpleAccent
                              ),
                              '#AratakiItto',
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),// hashtag
                SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white24,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                  style: TextStyle(
                                    color: Colors.white24,
                                  ),
                                  '136K'
                              )
                            ],
                          ),
                        ),//View count
                        Spacer(),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.comment_bank_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color:Colors.white60
                                  ),
                                  '136K'
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Icons.thumb_up_off_alt_outlined,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                  style:TextStyle(
                                      color: Colors.white60
                                  ),
                                  '98K'
                              )
                            ],
                          ),
                        ),//Comment and like
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),// Khoảng cách giữa các container
                Divider(
                  height: 1,
                  thickness: 0.10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
