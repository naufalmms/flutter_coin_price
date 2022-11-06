// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BalanceHeader extends StatelessWidget {
  final double balance;
  const BalanceHeader({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total balance",
            style: TextStyle(
              color: Colors.black.withOpacity(.55),
              fontSize: 15,
            ),
          ),
          Text(
            formatter.format(balance),
            // "\Rp${balance.toStringAsFixed(2)}",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
