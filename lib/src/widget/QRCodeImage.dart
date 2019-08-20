import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeImage extends StatelessWidget {
  final String product;

  GlobalKey _repaintQRImage = GlobalKey();

  QRCodeImage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: RepaintBoundary(
          key: _repaintQRImage,
          child: QrImage(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(40.0),
            data: product,
            size: 200,
          ),
        ),
      ),
    );
  }
}
