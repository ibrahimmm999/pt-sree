import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final int id;
  final String productName;
  final String productImage;
  final String iupacName;
  final String casNumber;
  final String hsCode;

  const ProductModel({
    required this.id,
    required this.productImage,
    required this.productName,
    required this.iupacName,
    required this.casNumber,
    required this.hsCode,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: int.parse(json['id'].toString()),
      productImage: json['productimage'],
      productName: json['productname'],
      iupacName: json['iupac_name'],
      casNumber: json['cas_number'],
      hsCode: json['hs_code'],
    );
  }

  @override
  List<Object?> get props => [
        id,
        productImage,
        productName,
        iupacName,
        hsCode,
        casNumber,
      ];
}
