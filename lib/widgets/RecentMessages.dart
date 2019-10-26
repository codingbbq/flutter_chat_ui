import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message_model.dart';
import 'package:flutter_chat_ui/pages/chat_screen.dart';

class RecentMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)
                )
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index){
                    final Message message = messages[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(
                        builder: (_) => ChatScreen(user: message.sender),
                      )),
                      child: Container(
                        margin: EdgeInsets.only(top:5.0, bottom: 5.0, right: 15.0),
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                        decoration: BoxDecoration(
                          color: message.unread ? Color(0xFFFFEFEE) : Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage(message.sender.imageUrl),
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      message.sender.name,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.45,
                                      child: Text(
                                        message.text,
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    message.time,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0
                                    ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  message.unread ? Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(30.0)
                                    ),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                      child: Text(
                                        "NEW",
                                        style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ) : Text(''),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
  }
}