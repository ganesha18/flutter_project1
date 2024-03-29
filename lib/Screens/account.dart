import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Editing_Screen.dart';
import 'chatbot.dart';
import 'loginPage/emaillogin.dart';
import 'loginPage/login1.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(253, 107, 34, 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Container(
                height: 90,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Container(
                child: Center(
                  child: Text(
                    " Profile ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.grey.withOpacity(0.1),
                                      offset: Offset(0, 10))
                                ],
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://www.whatsappimages.in/wp-content/uploads/2021/01/Feeling-Very-Sad-Images-Photo-Download-3.jpg",
                                    ))),
                          ),
                          Positioned(
                              bottom: 30,
                              right: 30,
                              top: 30,
                              left: 30,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.rectangle,
                                  border: Border.all(
                                      width: 2, color: Colors.transparent

                                      ///color: Theme.of(context).scaffoldBackgroundColor,
                                      ),
                                  //     color: Colors.deepOrange,
                                ),
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "xxxxx",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "xxxxxxxxx@gmail.com",
                      style: TextStyle(
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(253, 107, 34, 0.8),
                        ),
                        //color: Colors.deepOrange,
                      ),
                      child: FlatButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Modifies   ",
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: Container(
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //border: Border.all(color: Colors.grey),
                            // color: Colors.redAccent[250],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "GENERAL                                                                 ",
                      style: TextStyle(
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.all_inbox,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Modalites de paiement           ",
                          "Ajoutez vos de credit et de debit    "),
                      SizedBox(
                        width: 81,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.add_location,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Locations                                      ",
                          "Ajoutez vos lieux de residence          "),
                      SizedBox(
                        width: 71,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.camera,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Ajour un compte social                             ",
                          "Ajouter Facebook,instagram,Twitter etc.           "),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.forward,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Parrainge                                  ",
                          "Reciever 30DH                                 "),
                      SizedBox(
                        width: 85,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Notification                                                     ",
                      style: TextStyle(
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Icon(
                        Icons.doorbell,
                        color: Colors.grey,
                      ),
                      buildNotificationOptionRow(
                          "Notifications                                     ",
                          "poor la maise a jour quotidenne et autres           ",
                          true),
                      SizedBox(
                        width: 7,
                      ),
                      Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                            value: true,
                            activeColor: Color.fromRGBO(253, 107, 34, 0.8),
                            onChanged: (bool val) {},
                          ))
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      Icon(
                        Icons.doorbell,
                        color: Colors.grey,
                      ),
                      buildNotificationOptionRow(
                          "Notification de promotions  ",
                          "Nouveilies offres                                  ",
                          true),
                      SizedBox(
                        width: 60,
                      ),
                      Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                            value: true,
                            activeColor: Color.fromRGBO(253, 107, 34, 0.8),
                            onChanged: (bool val) {},
                          ))
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "More                                                                ",
                      style: TextStyle(
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Contactez-nous                            ",
                          "Ajoutez vos de credit et de debit        "),
                      SizedBox(
                        width: 66,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.add_to_home_screen_rounded,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Deconnexion                                  ",
                          "Ajoutez vos de credit et de debit         "),
                      SizedBox(
                        width: 62,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      buildAccountOptionRow(
                          context,
                          "Social                                               ",
                          "Ajoutez vos de credit et de debit          "),
                      SizedBox(
                        width: 58,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  GestureDetector buildAccountOptionRow(
    BuildContext context,
    String title,
    String desc,
  ) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOptionRow(String title, String desc, bool isActive) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              desc,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
          ]),
        ],
      ),
    );
  }
}
