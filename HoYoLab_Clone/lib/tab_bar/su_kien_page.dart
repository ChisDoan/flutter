import 'package:flutter/material.dart';

class SuKien extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
      children: [
        Expanded(
            child: ListView(
          shrinkWrap: true,
              children: [
                //event1
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage('assets/event/event1.jpg'),
                        fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Text(
                    style:TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                      '[Ra Mắt Sự Kiện Web] Chuyện Sau Màn Ảnh - Tham Gia Để Nhận Nguyên Thạch Và Các Phần Thưởng Khác Trong Game!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                  child: Text(
                    style:TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      color: Colors.white38
                    ),
                    '>>Nhấn để tham gia sự kiện<< Bộ phim là phương tiện truyền đạt, phần hậu trường là hồi ức độc quyền trong cuộc hành trình! Hãy mau tới xây dựng khung cảnh của riêng bạn nào!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white24
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Icon(
                              Icons.watch_later_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                          SizedBox(width: 3,),
                          Text(
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                              '27/12/2023-02/01/2024',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //event2
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage('assets/event/event2.jpg'),
                        fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                    '[Bình Luận Nhận Thưởng] Thời Gian Chơi Game Của Hilichurl Đến Rồi!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                  child: Text(
                    style:TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white38
                    ),
                    'Olah! Nhà Lữ Hành thân mến! Tôi ở ngoài Đại Sảnh Fontaine phát hiện trong này thật náo nhiệt! Dường như đang tổ chức sự kiện gì đó? Ôi! Tôi cũng muốn tham gia, mọi người có thể giúp tôi không?',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white24
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.green,
                            size: 16,
                          ),
                          SizedBox(width: 3,),
                          Text(
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            '26/12/2023-03/01/2024',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //event3
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage('assets/event/event3.jpg'),
                        fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                    'Sự Kiện Thu Thập Áp Phích Liên Hoan Phim',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                  child: Text(
                    style:TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white38
                    ),
                    'Nhà Lữ Hành thân mến, Liên Hoan Phim Fontinalia đang diễn ra sôi nổi! Hãy cầm bút vẽ hoặc công cụ thiết kế trong tay lên và cùng sáng tạo áp phích Liên Hoan Phim cho nhân vật Genshin Impact nào!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white24
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(width: 3,),
                          Text(
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            '26/12/2023-11/02/2024',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //event4
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage('assets/event/event4.jpg'),
                        fit: BoxFit.cover, // Đảm bảo ảnh bị bo góc và không bị vặn
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Text(
                    style:TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                    'Sự Kiện Web "Khảo Sát Của Melusine" Đã Ra Mắt, Tham Gia Để Nhận Nguyên Thạch!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                  child: Text(
                    style:TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white38
                    ),
                    'Elphane và Aeval phụ trách công việc hướng dẫn viên trên Tàu Luân Chuyển ở Fontaine nhận được một nhiệm vụ khảo sát du khách. Họ sẽ phát những phiếu khảo sát cho những Nhà Lữ Hành ghé thăm Fontaine. Tới giúp Elphane và Aeval hoàn thành công việc khảo sát nào! Có thể nhận thưởng trong game như Nguyên Thạch cùng nhiều bất ngờ khác!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white24
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(width: 3,),
                          Text(
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            '25/12/2023-07/01/2024',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
        ))
      ],
      ),
    );
  }
}