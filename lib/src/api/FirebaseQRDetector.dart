import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class FirebaseQRDetector{
  final File imagefile;

  FirebaseQRDetector(this.imagefile);

  void detectQRCode() async {
    final visionImage = FirebaseVisionImage.fromFile(this.imagefile);
    BarcodeDetectorOptions options = BarcodeDetectorOptions(
      barcodeFormats: BarcodeFormat.qrCode,
    );
    final detector = FirebaseVision.instance.barcodeDetector(options);
    
    final List<Barcode> barcodes = await detector.detectInImage(visionImage);
    _extractProduct(barcodes);
  }

  _extractProduct(List<Barcode> barcodes){
    for(Barcode barcode in barcodes)
      final String value = barcode.rawValue;
  }
}