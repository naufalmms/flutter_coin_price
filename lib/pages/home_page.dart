import 'package:coinbase_clone_flutter/widgets/assets_view_header.dart';
import 'package:coinbase_clone_flutter/widgets/coin_display.dart';
import 'package:flutter/material.dart';
import '../widgets/balance_header.dart';
import '../widgets/coinbase_bottom.dart';
import '../widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: const [
              TopBar(),
              BalanceHeader(balance: 2590000),
              AssetViewHeader(),
              CoinDisplay(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CoinbaseBottomBar(selectedIndex: (i) {}),
    );
  }
}
