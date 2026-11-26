class TransactionModel {
  final String imageLight, imageDark;
  final String title;
  final String subtitle;
  final String amount;
  final String time;
  final TransactionType type;

  const TransactionModel({
    required this.imageLight,
    required this.imageDark,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.time,
    required this.type,
  });
}

enum TransactionType { income, expense }
