import 'package:flutter/cupertino.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: QrImage(
        data: 'kajbnds',
        size: 200,
      ),
    );
  }
}
