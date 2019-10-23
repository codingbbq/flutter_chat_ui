import 'package:flutter_chat_ui/models/user_model.dart';

class Message{

  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread
  });

}

// Current user
final User currentUser = User(
  id: 0,
  name: "Current user",
  imageUrl: "assets/images/current.jpg"
);


final User greg = User(
  id: 1,
  name: "Greg",
  imageUrl: "assets/images/greg.jpg"
);


final User james = User(
  id: 1,
  name: "James",
  imageUrl: "assets/images/james.jpg"
);


final User john = User(
  id: 2,
  name: "John",
  imageUrl: "assets/images/john.jpg"
);


final User sam = User(
  id: 3,
  name: "Sam",
  imageUrl: "assets/images/sam.jpg"
);


final User sophia = User(
  id: 4,
  name: "Sophia",
  imageUrl: "assets/images/sophia.jpg"
);


final User stevan = User(
  id: 5,
  name: "stevan",
  imageUrl: "assets/images/stevan.jpg"
);


final User olivia = User(
  id: 6,
  name: "Olivia",
  imageUrl: "assets/images/olivia.jpg"
);

final User peter = User(
  id: 7,
  name: "Peter",
  imageUrl: "assets/images/peter.jpg"
);


List<User> favorites = [sam, stevan, peter, olivia, james];

List<Message> messages = [
  Message(
    sender: james,
    time: "5:30 PM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: currentUser,
    time: "3:30 PM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: greg,
    time: "6:30 AM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),


  Message(
    sender: olivia,
    time: "5:30 PM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),


  Message(
    sender: sam,
    time: "5:30 PM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),


  Message(
    sender: currentUser,
    time: "5:30 PM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: james,
    time: "5:30 PM",
    text: "Hey, How\'s it going? What did you do today?",
    isLiked: false,
    unread: true,
  ),
];




