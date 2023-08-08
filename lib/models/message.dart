class Message{
  final String text;
  final bool isSentByMe;
  final DateTime date;

  const Message ({required this.text, required this.date,required this.isSentByMe});
}