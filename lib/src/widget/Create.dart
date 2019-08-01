import 'package:flutter/material.dart';
import 'package:payment_proto_flutter/src/widget/QRCodeImage.dart';
import 'package:payment_proto_flutter/src/widget/QRForm.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {

  String _product;
  void _productCallBack(product){
    setState(() {
      _product = product;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(_product !=null)
    return Column(
      children: <Widget>[QRForm(serializedCallback: _productCallBack,), QRCodeImage(product: _product,)],
    );
    else return Column(
      children: <Widget>[QRForm(serializedCallback: _productCallBack,),Container()],
    );

  }
}
