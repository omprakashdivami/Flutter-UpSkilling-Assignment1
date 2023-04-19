import 'package:assignment2/common/common_button.dart';
import 'package:flutter/material.dart';
import 'package:assignment2/common/textField.dart';
class FormData extends StatefulWidget {
  const FormData({super.key});

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Form'),
      ),
      body: Container(
        
        child: Column(
          children: <Widget> [
            TxtField(a: TextInputType.text, label: 'UserName',),
            TxtField(a: TextInputType.visiblePassword,label: "PassWord",),
            Btn(label:"submit",),
          ],
        ),
      ),
    );
  }
}