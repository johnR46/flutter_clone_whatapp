class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "John Nonphala",
      message: "Hello world",
      time: "15:30",
      avatarUrl: "https://i.imgur.com/GuAB8OE.jpeg"),
  new ChatModel(
      name: "John Nonphala1",
      message: "Hello world",
      time: "15:30",
      avatarUrl: "https://i.imgur.com/fFuxmjW.jpg"),
  new ChatModel(
      name: "John Nonphala2",
      message: "Hello world",
      time: "15:30",
      avatarUrl: "https://i.imgur.com/GuAB8OE.jpeg"),
  new ChatModel(
      name: "John Nonphala3",
      message: "Hello world",
      time: "15:30",
      avatarUrl: "https://i.imgur.com/Z27baal.jpg"),
];
