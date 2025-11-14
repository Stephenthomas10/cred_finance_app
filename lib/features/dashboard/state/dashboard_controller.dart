import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/credit_card_model.dart';

final cardsProvider = Provider<List<CreditCardModel>>((ref) {
  return [
    CreditCardModel(
      bankName: "HDFC Bank",
      last4: "4421",
      totalDue: 15230,
      minDue: 2400,
      dueDate: DateTime.now().add(const Duration(days: 5)),
    ),
    CreditCardModel(
      bankName: "Axis Bank",
      last4: "9931",
      totalDue: 8420,
      minDue: 1500,
      dueDate: DateTime.now().add(const Duration(days: 2)),
    ),
  ];
});
