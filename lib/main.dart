import 'package:flutter/material.dart';
import 'package:flutter_dapp_1/contract_linking.dart';
import "package:provider/provider.dart";

import 'hello_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContractLinking>(
      create: (context) => ContractLinking(),
      child: MaterialApp(
        title: 'Flutter dApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HelloPage(),
      ),
    );
  }
}
