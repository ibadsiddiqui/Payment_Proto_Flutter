// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
      productId: json['productId'] as int,
      productName: json['productName'] as String,
      productPrice: (json['productPrice'] as num)?.toDouble());
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productPrice': instance.productPrice
    };
