import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:payment_proto_flutter/src/model/Product.dart';
import 'package:payment_proto_flutter/src/widget/ProductForm.dart';
enum formState {id, name, price}

class QRForm extends StatefulWidget {
  @override
  _QRFormState createState() => _QRFormState();
}

class _QRFormState extends State<QRForm> {

  var _state = formState.id;
  int _id;
  String _name;
  double _price;

  void _formCallback(value){
    print("here");
    formState state;
    switch(_state){
      case formState.id:
        state = formState.name;
        _id = int.parse(value);
        break;
      case formState.name:
        state = formState.price;
        _name = value;
        break;
      case formState.price:
        state = formState.id;
        _price = double.parse(value);
        var product = Product(productId: _id,productName: _name,productPrice: _price);
        var serializedProduct = json.encode(product);
        break;
    }
    setState(() {
      _state = state;
    });
  }


  @override
  Widget build(BuildContext context) {
   switch(_state){
     case formState.id:
       return ProductForm(category: "Id",productCallBack: _formCallback,);

     case formState.name:
       return ProductForm(category: "Name",productCallBack: _formCallback,);
       break;
     case formState.price:
       return ProductForm(category: "Price",productCallBack: _formCallback,);
       break;
   }
  }
}
