import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:pharmabag/global/seller_global.dart';

Future<GetProductsModel?> getProductMethod(BuildContext context) async {
  try {
    var data =
        await SellerGlobalHandler.requestGet('/seller/auth/products/seller');

    var jsonData = jsonDecode(data.body);

    GetProductsModel response = GetProductsModel.fromJson(jsonData);
    // prnum(response.toJson());
    return response;
  } catch (e) {
    SellerGlobalHandler.snackBar(
        context: context, message: e.toString(), isError: true);
    return null;
  }
}

class GetProductsModel {
  num? status;
  String? message;
  List<ResultProducts>? resultProducts;

  GetProductsModel({this.status, this.message, this.resultProducts});

  GetProductsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['result_products'] != null) {
      resultProducts = <ResultProducts>[];
      json['result_products'].forEach((v) {
        resultProducts!.add(ResultProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (resultProducts != null) {
      data['result_products'] = resultProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultProducts {
  String? sId;
  String? sellerId;
  List<String>? imageList;
  String? productName;
  num? productPrice;
  String? companyName;
  num? minOrderQty;
  num? maxOrderQty;
  String? expireDate;
  DiscountDetails? discountDetails;
  num? stock;
  bool? bulk;
  List<ExtraFields>? extraFields;
  Categories? categories;
  String? chemicalCombination;
  String? date;
  num? status;
  num? iV;
  DiscountFormDetails? discountFormDetails;

  ResultProducts(
      {this.sId,
      this.sellerId,
      this.imageList,
      this.productName,
      this.productPrice,
      this.companyName,
      this.minOrderQty,
      this.maxOrderQty,
      this.expireDate,
      this.discountDetails,
      this.stock,
      this.bulk,
      this.extraFields,
      this.categories,
      this.chemicalCombination,
      this.date,
      this.status,
      this.iV,
      this.discountFormDetails});

  ResultProducts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sellerId = json['seller_id'];
    imageList = json['image_list'].cast<String>();
    productName = json['product_name'];
    productPrice = json['product_price'];
    companyName = json['company_name'];
    minOrderQty = json['min_order_qty'];
    maxOrderQty = json['max_order_qty'];
    expireDate = json['expire_date'];
    discountDetails = json['discount_details'] != null
        ? DiscountDetails.fromJson(json['discount_details'])
        : null;
    stock = json['stock'];
    bulk = json['bulk'];
    if (json['extra_fields'] != null) {
      extraFields = <ExtraFields>[];
      json['extra_fields'].forEach((v) {
        extraFields!.add(ExtraFields.fromJson(v));
      });
    }
    categories = json['categories'] != null
        ? Categories.fromJson(json['categories'])
        : null;
    chemicalCombination = json['chemical_combination'];
    date = json['date'];
    status = json['status'];
    iV = json['__v'];
    discountFormDetails = json['discount_form_details'] != null
        ? DiscountFormDetails.fromJson(json['discount_form_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['seller_id'] = sellerId;
    data['image_list'] = imageList;
    data['product_name'] = productName;
    data['product_price'] = productPrice;
    data['company_name'] = companyName;
    data['min_order_qty'] = minOrderQty;
    data['max_order_qty'] = maxOrderQty;
    data['expire_date'] = expireDate;
    if (discountDetails != null) {
      data['discount_details'] = discountDetails!.toJson();
    }
    data['stock'] = stock;
    data['bulk'] = bulk;
    if (extraFields != null) {
      data['extra_fields'] = extraFields!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.toJson();
    }
    data['chemical_combination'] = chemicalCombination;
    data['date'] = date;
    data['status'] = status;
    data['__v'] = iV;
    if (discountFormDetails != null) {
      data['discount_form_details'] = discountFormDetails!.toJson();
    }
    return data;
  }
}

class DiscountDetails {
  bool? status;
  num? finalPtr;
  num? discount;
  num? ptr;
  num? ptrPer;
  num? gst;
  num? gstValue;
  num? retailPercentage;
  num? finalUserBuy;
  num? finalOrderValue;
  String? message;
  num? bonus;
  num? bonusGet;
  String? productName;

  DiscountDetails(
      {this.status,
      this.finalPtr,
      this.discount,
      this.ptr,
      this.ptrPer,
      this.gst,
      this.gstValue,
      this.retailPercentage,
      this.finalUserBuy,
      this.finalOrderValue,
      this.message,
      this.bonus,
      this.bonusGet,
      this.productName});

  DiscountDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    finalPtr = json['final_ptr'];
    discount = json['discount'];
    ptr = json['ptr'];
    ptrPer = num.parse(json['per_ptr'].toStringAsFixed(2));
    gst = json['gst'];
    gstValue = json['gst_value'];
    retailPercentage = json['retail_percentage'];
    finalUserBuy = json['final_user_buy'];
    finalOrderValue = json['final_order_value'];
    message = json['message'];
    bonus = json['bonus'];
    bonusGet = json['bonus_get'];
    productName = json['product_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['final_ptr'] = finalPtr;
    data['discount'] = discount;
    data['ptr'] = ptr;
    data['ptr_per'] = ptrPer;
    data['gst'] = gst;
    data['gst_value'] = gstValue;
    data['retail_percentage'] = retailPercentage;
    data['final_user_buy'] = finalUserBuy;
    data['final_order_value'] = finalOrderValue;
    data['message'] = message;
    data['bonus'] = bonus;
    data['bonus_get'] = bonusGet;
    data['product_name'] = productName;
    return data;
  }
}

class ExtraFields {
  String? key;
  String? value;

  ExtraFields({this.key, this.value});

  ExtraFields.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class Categories {
  String? categoryName;
  String? subCategoryName;

  Categories({this.categoryName, this.subCategoryName});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryName = json['category_name'];
    subCategoryName = json['sub_category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_name'] = categoryName;
    data['sub_category_name'] = subCategoryName;
    return data;
  }
}

class DiscountFormDetails {
  num? gstPercentage;
  num? mrp;
  num? minQtySale;
  num? maxQtySale;
  num? userBuy;

  num? buy;
  num? get;
  num? discountOnPtrOnlyPercenatge;
  String? producName;

  DiscountFormDetails(
      {this.discountOnPtrOnlyPercenatge,
      this.gstPercentage,
      this.mrp,
      this.minQtySale,
      this.maxQtySale,
      this.userBuy,
      this.get,
      this.buy,
      this.producName});

  DiscountFormDetails.fromJson(Map<String, dynamic> json) {
    gstPercentage = json['gstPercentage'];
    mrp = json['mrp'];
    minQtySale = json['minQtySale'];
    maxQtySale = json['maxQtySale'];
    userBuy = json['userBuy'];
    buy = json['buy'];
    get = json['get'];
    discountOnPtrOnlyPercenatge = json['discountOnPtrOnlyPercenatge'];
    producName = json['producName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['gstPercentage'] = gstPercentage;
    data['mrp'] = mrp;
    data['minQtySale'] = minQtySale;
    data['maxQtySale'] = maxQtySale;
    data['userBuy'] = userBuy;
    data['buy'] = buy;
    data['get'] = get;
    data['producName'] = producName;
    data['discountOnPtrOnlyPercenatge'] = discountOnPtrOnlyPercenatge;
    return data;
  }
}
