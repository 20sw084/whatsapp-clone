class Message{
  final String text;
  final bool isSentByMe;
  final DateTime date;
  final bool isSeen;

  const Message ({required this.text, required this.date,required this.isSentByMe, required this.isSeen});
}