import 'package:flutter/material.dart';
import 'package:flutter_dapp_1/contract_linking.dart';
import 'package:provider/provider.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contractLink = Provider.of<ContractLinking>(context);
    final _messageController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("flutter Dapp")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: contractLink.isLoading
              ? CircularProgressIndicator()
              : SingleChildScrollView(
                  child: Form(
                      child: Column(
                    children: <Widget>[
                      Text(
                          "Welcome to hello world dApp ${contractLink.deployedName}"),
                      TextFormField(
                        controller: _messageController,
                        decoration: InputDecoration(hintText: "Enter Message"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          contractLink.setMessage(_messageController.text);
                          _messageController.clear();
                        },
                        child: Text("Set Message"),
                      )
                    ],
                  )),
                ),
        ),
      ),
    );
  }
}
