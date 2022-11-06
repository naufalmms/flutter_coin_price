// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/coin.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;
  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');
  CoinCard({
    Key? key,
    required this.coin,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Row(
          children: [
            Image.network(coin.imageUrl, width: 35),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  coin.fullName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Text(
                  coin.ticker,
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Text(
              // "\RP. " + coin.price.toStringAsFixed(2),
              formatter.format(coin.price.toInt()),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// extension IntKu on int {
//   get currency {
//     String uangku = "";
//     String uangString = (this).toString();
//     int saparator = 0;
//     for (int i = uangString.length; i > 0; i--) {
//       uangku += uangString[i - 1];
//       saparator++;
//       if (saparator == 3) {
//         uangku += ".";
//         saparator = 0;
//       }
//     }
//     String uangAkhir = "";
//     for (var i = uangku.length; i > 0; i--) {
//       uangAkhir += uangku[i - 1];
//     }
//     return uangAkhir;
//   }
// }
