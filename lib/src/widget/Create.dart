import 'package:flutter/material.dart';
import 'package:payment_proto_flutter/src/widget/QRCodeImage.dart';
import 'package:payment_proto_flutter/src/widget/QRForm.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[QRForm(), QRCodeImage()],
    );
  }
}
