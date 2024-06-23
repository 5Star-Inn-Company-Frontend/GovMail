class Email {
  final String sender;
  final String subject;
  final String snippet;
  final String date;
  final bool isNew;

  Email({
    required this.sender,
    required this.subject,
    required this.snippet,
    required this.date,
    this.isNew = false,
  });
}