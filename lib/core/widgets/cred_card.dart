import 'package:flutter/material.dart';
import '../../data/models/credit_card_model.dart';

class CredCard extends StatelessWidget {
  final CreditCardModel card;

  const CredCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF151C3A),
            Color(0xFF0B101F),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 18),
            blurRadius: 40,
            spreadRadius: -18,
            color: Colors.black54,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(card.bankName,
              style: theme.textTheme.labelLarge?.copyWith(
                letterSpacing: 1.2,
                color: Colors.white70,
              )),
          const SizedBox(height: 4),
          Text("•••• ${card.last4}",
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              )),
          const Spacer(),
          Text("Total due",
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.white60,
              )),
          Text("₹${card.totalDue.toStringAsFixed(0)}",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Min: ₹${card.minDue.toStringAsFixed(0)}",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  )),
              Text("Due ${_dueLabel(card.dueDate)}",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: const Color(0xFF15BDC4),
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  String _dueLabel(DateTime d) {
    final now = DateTime.now();
    final days = d.difference(now).inDays;
    if (days <= 0) return "today";
    if (days == 1) return "tomorrow";
    return "in $days days";
  }
}
