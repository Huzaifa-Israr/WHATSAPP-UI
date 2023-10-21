import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 1, 146, 102),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(text: "Chats"),
                Tab(text: "Updates"),
                Tab(text: "Calls"),
              ],
            ),
            title: const Row(children: [
              Text('Whatsapp'),
              SizedBox(
                width: 140,
              ),
              Icon(Icons.camera_alt_outlined),
              SizedBox(
                width: 25,
              ),
              Icon(Icons.search),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.more_vert),
            ]),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  chaty(
                      "data:image/jpeg;base64,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",
                      Colors.grey,
                      "Start your community ",
                      "",
                      "",
                      ""),
         
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    chaty(
                        "https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108",
                        Colors.green,
                        "USAMA",
                        "",
                        "waiting...",
                        "1:03 AM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Color.fromARGB(255, 206, 159, 18), "ALI HUSAIN", "SE", "DONE",
                        "1:23 PM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.red, "Muhammad Sajid", "SE", "hello",
                        "2:44 AM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.purple, "SITER", "SE", "kaha pr ho?",
                        "9:13 PM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.black, "ZAHOOR", "SE", "hi",
                        "12:21 AM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "COACHING FRIENDS", "SE", "kab tak aao ge bhai",
                        "5:30 AM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.green, "HUZAIFA (YOU)", "SE","(You Delete the msg)"
                       , "7:23 PM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "Bilal ", "", "PHOTO",
                        "9:29 PM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "NOrah c", "", "Online ho to batana",
                        "6:29 AM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "Saad Anwar", "SE", "Waiting",
                        "3:29 PM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "ZAIN BHAI", "SE", "Good job",
                        "5:29 AM"),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "Taha ANWAR", "SE", "sham ko milo",
                        "5:29 AM"),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blueAccent, "My Status", "S",
                        "Tap to add status Updates", ""),
                    Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(0),
                        child: const Text(
                            "_______________________________________________________",
                            style: TextStyle(color: Colors.grey, fontSize: 5))),
                    Container(
                      child: (Text("Recent Updates")),
                      padding: EdgeInsets.fromLTRB(0, 20, 240, 10),
                    ),
                    chaty(
                        "https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.green, "USAMA", "", "10:00 PM", ""),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "Zahoor", "SE", "2:28 PM",
                        ""),
                    chaty(
                        "https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.green, "Ali Hassan", "", "3:20 PM", ""),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "SISTER", "SE", "8:13 PM",
                        ""),
                    chaty(
                        "https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.green, "Zain", "", "11:09 PM", ""),
                    chaty("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.yellow, "Norah c", "SE", "12:43 PM",
                        ""),
                    chaty(
                        "https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.green, "Taha Anwar", "", "4:09 PM", ""),

                  ],
                ),
              ),
              //Calls
              SingleChildScrollView(
                child: Column(
                  children: [
                    chaty("data:image/jpeg;base64,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", Colors.grey, "Create call link", "",
                        "Share a link for your WhatsApp call", ""),
                    Container(
                      child: (Text("Recent")),
                      padding: EdgeInsets.fromLTRB(0, 5, 300, 5),
                    ),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "USAMA", "", "0 minutes ago", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "Zain", "", "55 minutes ago", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "+92 318 4981985", "", "59 minutes ago", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "Taha Anwar ", "", "1 hour ago", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "Zahoor", "", "4 hours ago ago", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "SISTER", "", "Today 11:04 AM", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "Zain", "", "Yesterday 1:09 PM", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "USAMA", "", "October 16 , 11:50PM", ""),
                    chatycall("https://media-mct1-1.cdn.whatsapp.net/v/t61.24694-24/359544698_266839229308657_7137330833146597833_n.jpg?ccb=11-4&oh=01_AdRGqH3L0IloY9QJgMDTYB_Kt31JUBwp9X2IUv2fIXZi3Q&oe=653FC297&_nc_sid=000000&_nc_cat=108", Colors.blue, "Zain", "", "October 16, 11:54 PM", ""),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

chaty(String Curl, Color Ccolor, String Ctitle, String Cavatar, String Cmsg,
    String Ctime) {
  return ListTile(
    tileColor: Colors.white,
    leading: CircleAvatar(
      backgroundColor: Ccolor,
      backgroundImage: NetworkImage(Curl),
      // child: Text(Cavatar),
    ),
    title: Text(Ctitle),
    subtitle: Text(Cmsg),
    trailing: Text(Ctime),
  );
}

chatycall(String Curl, Color Ccolor, String Ctitle, String Cavatar, String Cmsg,
    String Ctime) {
  return ListTile(
    tileColor: Colors.white,
    leading: CircleAvatar(
      backgroundColor: Ccolor,
      backgroundImage: NetworkImage(Curl),
      // child: Text(Cavatar),
    ),
    title: Text(Ctitle,style: TextStyle(color: Colors.red),),
    subtitle:Row(children: [
    const Icon(
      Icons.call_received,
      color: Colors.red,
    ),
    Text(Cmsg),
    ],) ,
    trailing: Icon(Icons.call,color: Colors.green,),
  );
}