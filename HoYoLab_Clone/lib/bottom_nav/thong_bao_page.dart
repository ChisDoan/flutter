import 'package:flutter/material.dart';

class ThongBaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20,),
            Center(child: Text("Thông tin")),
            Icon(Icons.settings)
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}