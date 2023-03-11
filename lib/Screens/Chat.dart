import 'package:flutter/material.dart';

import '../components/Custom_ListTile.dart';
import '../data/data.dart';

class Chat extends StatelessWidget {
  Chat({Key? key}) : super(key: key);

  List<Data> dataList = [
    Data(
        image: 'assets/images/gdsc.jpg',
        title: 'GDSC-FS-Flutter',
        subtitle: 'ok',
        trailing: '9:57 PM'),
    Data(
        image: 'assets/images/NLP.jpg',
        title: 'NLP-Team',
        subtitle: 'You reacted 😂 to: "...سارقها من ضهر "',
        trailing: '11:13 PM'),
    Data(
        image: 'assets/images/neural.jpg',
        title: 'Neural networks team',
        subtitle: '+20 101 433 6509: sec3 بلال احمد علي',
        trailing: 'Yesterday'),
    Data(
        image: 'assets/images/team.png',
        title: 'Team Graphics',
        subtitle: 'Medo: اتخمد يعم هو حد ماسكك',
        trailing: '2/28/2023'),
    //-------------- repeat -----------------------
    Data(
        image: 'assets/images/gdsc.jpg',
        title: 'GDSC-FS-Flutter',
        subtitle: 'ok',
        trailing: '9:57 PM'),
    Data(
        image: 'assets/images/NLP.jpg',
        title: 'NLP-Team',
        subtitle: 'You reacted 😂 to: "...سارقها من ضهر "',
        trailing: '11:13 PM'),
    Data(
        image: 'assets/images/neural.jpg',
        title: 'Neural networks team',
        subtitle: '+20 101 433 6509: sec3 بلال احمد علي',
        trailing: 'Yesterday'),
    Data(
        image: 'assets/images/team.png',
        title: 'Team Graphics',
        subtitle: 'Medo: اتخمد يعم هو حد ماسكك',
        trailing: '2/28/2023'),
    Data(
        image: 'assets/images/gdsc.jpg',
        title: 'GDSC-FS-Flutter',
        subtitle: 'ok',
        trailing: '9:57 PM'),
    Data(
        image: 'assets/images/NLP.jpg',
        title: 'NLP-Team',
        subtitle: 'You reacted 😂 to: "...سارقها من ضهر "',
        trailing: '11:13 PM'),
    Data(
        image: 'assets/images/neural.jpg',
        title: 'Neural networks team',
        subtitle: '+20 101 433 6509: sec3 بلال احمد علي',
        trailing: 'Yesterday'),
    Data(
        image: 'assets/images/team.png',
        title: 'Team Graphics',
        subtitle: 'Medo: اتخمد يعم هو حد ماسكك',
        trailing: '2/28/2023'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4CAF50),
          title: const Text('WhatsApp Chat'),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.message),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/team.png'),
                        radius: 40,
                      ),
                      Text(
                        "Soliman Mahmoud",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        "soliiimahmoud70@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        body: ListView.separated(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return CustomListTile(
              image: dataList[index].image,
              title: dataList[index].title,
              subtitle: dataList[index].subtitle,
              trailing: dataList[index].trailing,
            );
          },
          separatorBuilder: (context, index) {
            return buildDivider();
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: const Icon(Icons.camera_alt),
        ),
      ),
    );
  }

  Divider buildDivider() {
    return const Divider(
      thickness: 1.5,
      indent: 30,
      endIndent: 30,
    );
  }
}
