class CreditCardModel {
  final String bankName;
  final String last4;
  final double totalDue;
  final double minDue;
  final DateTime dueDate;

  CreditCardModel({
    required this.bankName,
    required this.last4,
    required this.totalDue,
    required this.minDue,
    required this.dueDate,
  });
}
