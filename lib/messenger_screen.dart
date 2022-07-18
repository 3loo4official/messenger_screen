import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/102713256?v=4'),
            ),
            SizedBox(width: 10),
            Text(
              'Chats',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          ),
          SizedBox(width: 5.0),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(5),
                color: Colors.grey[300],
                child: Row(
                  children: [Icon(Icons.search), Text('Seach')],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildStoryItem(),
                      separatorBuilder: (context, index) => SizedBox(width: 5),
                      itemCount: 10)),
              SizedBox(
                height: 5,
              ),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 15),
            ],
          ),
        ),
      ),
    );
  }

//arrow function
  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/102713256?v=4'),
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Ali Gad Ali',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );

  Widget buildChatItem() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/102713256?v=4'),
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ali Gad Ali ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Text(
                    'Hello, My name is Ali, I\'m from Egypt and work as flutter developer',
                    style: TextStyle(fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 3.0,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('12:12 am'),
                ],
              ),
            ],
          )
        ],
      );
}
