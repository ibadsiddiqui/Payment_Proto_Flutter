import 'package:flutter/cupertino.dart';
import 'package:payment_proto_flutter/src/widget/ProductForm.dart';

class QRForm extends StatefulWidget {
  @override
  _QRFormState createState() => _QRFormState();
}

class _QRFormState extends State<QRForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[ProductForm()],
      ),
    );
  }
}
