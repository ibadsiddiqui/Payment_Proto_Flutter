import 'package:flutter/cupertino.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeImage extends StatelessWidget {
  final String product;

  const QRCodeImage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: QrImage(
        data: product,
        size: 200,
      ),
    );
  }
}
