// Future<GetBuyerDetails?> getBuyerDetailsMethod(BuildContext context) async {
//   try {
//    // var data = await BuyerGlobalHandler.requestGet('/buyer/auth/profile');

//    // var jsonData = jsonDecode(data.body);

//     GetBuyerDetails response = GetBuyerDetails.fromJson(jsonData);
//     return response;
//   } catch (e) {
//     BuyerGlobalHandler.snackBar(
//         context: context, message: e.toString(), isError: true);
//     return null;
//   }
// }

class GetBuyerDetails {
  int? status;
  String? message;
  BuyerUser? buyerUser;
  BuyerDetails? buyerDetails;
  bool? isAccountFound;

  GetBuyerDetails(
      {this.status,
      this.message,
      this.buyerUser,
      this.buyerDetails,
      this.isAccountFound});

  GetBuyerDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    buyerUser = json['buyer_user'] != null
        ? BuyerUser.fromJson(json['buyer_user'])
        : null;
    buyerDetails = json['buyer_details'] != null
        ? BuyerDetails.fromJson(json['buyer_details'])
        : null;
    isAccountFound = json['is_account_found'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (buyerUser != null) {
      data['buyer_user'] = buyerUser!.toJson();
    }
    if (buyerDetails != null) {
      data['buyer_details'] = buyerDetails!.toJson();
    }
    data['is_account_found'] = isAccountFound;
    return data;
  }
}

class BuyerUser {
  String? sId;
  int? phoneNo;
  String? password;
  String? expirePassword;
  String? dateTime;
  String? message;
  bool? isUserBlock;
  int? status;
  int? iV;

  BuyerUser(
      {this.sId,
      this.phoneNo,
      this.password,
      this.expirePassword,
      this.dateTime,
      this.message,
      this.isUserBlock,
      this.status,
      this.iV});

  BuyerUser.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    phoneNo = json['phone_no'];
    password = json['password'];
    expirePassword = json['expire_password'];
    dateTime = json['date_time'];
    message = json['message'];
    isUserBlock = json['is_user_block'];
    status = json['status'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['phone_no'] = phoneNo;
    data['password'] = password;
    data['expire_password'] = expirePassword;
    data['date_time'] = dateTime;
    data['message'] = message;
    data['is_user_block'] = isUserBlock;
    data['status'] = status;
    data['__v'] = iV;
    return data;
  }
}

class BuyerDetails {
  String? sId;
  String? buyerId;
  String? name;
  String? email;
  String? legalName;
  BankAccount? bankAccount;
  Licence? licence;
  Address? address;
  GstPanResponse? gstPanResponse;
  int? phoneNo;
  String? inviteCode;
  String? date;
  int? status;
  int? buyerNumberId;
  int? iV;

  BuyerDetails(
      {this.sId,
      this.buyerId,
      this.name,
      this.email,
      this.legalName,
      this.bankAccount,
      this.licence,
      this.address,
      this.gstPanResponse,
      this.phoneNo,
      this.inviteCode,
      this.date,
      this.status,
      this.buyerNumberId,
      this.iV});

  BuyerDetails.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    buyerId = json['buyer_id'];
    name = json['name'];
    email = json['email'];
    legalName = json['legal_name'];
    bankAccount = json['bank_account'] != null
        ? BankAccount.fromJson(json['bank_account'])
        : null;
    licence =
        json['licence'] != null ? Licence.fromJson(json['licence']) : null;
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    gstPanResponse = json['gst_pan_response'] != null
        ? GstPanResponse.fromJson(json['gst_pan_response'])
        : null;
    phoneNo = json['phone_no'];
    inviteCode = json['invite_code'];
    date = json['date'];
    status = json['status'];
    buyerNumberId = json['buyer_number_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['buyer_id'] = buyerId;
    data['name'] = name;
    data['email'] = email;
    data['legal_name'] = legalName;
    if (bankAccount != null) {
      data['bank_account'] = bankAccount!.toJson();
    }
    if (licence != null) {
      data['licence'] = licence!.toJson();
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (gstPanResponse != null) {
      data['gst_pan_response'] = gstPanResponse!.toJson();
    }
    data['phone_no'] = phoneNo;
    data['invite_code'] = inviteCode;
    data['date'] = date;
    data['status'] = status;
    data['buyer_number_id'] = buyerNumberId;
    data['__v'] = iV;
    return data;
  }
}

class BankAccount {
  String? name;
  String? bankName;
  String? accountNumber;
  String? ifscCode;

  BankAccount({this.name, this.bankName, this.accountNumber, this.ifscCode});

  BankAccount.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bankName = json['bank_name'];
    accountNumber = json['account_number'];
    ifscCode = json['ifsc_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['bank_name'] = bankName;
    data['account_number'] = accountNumber;
    data['ifsc_code'] = ifscCode;
    return data;
  }
}

class Licence {
  String? lic20;
  String? lic21;

  Licence({this.lic20, this.lic21});

  Licence.fromJson(Map<String, dynamic> json) {
    lic20 = json['lic20'];
    lic21 = json['lic21'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lic20'] = lic20;
    data['lic21'] = lic21;
    return data;
  }
}

class Address {
  String? name;
  String? address1;
  String? address2;
  String? state;
  String? city;
  String? pincode;

  Address(
      {this.name,
      this.address1,
      this.address2,
      this.state,
      this.city,
      this.pincode});

  Address.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address1 = json['address1'];
    address2 = json['address2'];
    state = json['state'];
    city = json['city'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['address1'] = address1;
    data['address2'] = address2;
    data['state'] = state;
    data['city'] = city;
    data['pincode'] = pincode;
    return data;
  }
}

class GstPanResponse {
  bool? status;
  String? message;
  String? legalName;
  String? gstNumber;
  List<String>? natureOfBusinessActivity;
  Address? address;

  GstPanResponse(
      {this.status,
      this.message,
      this.legalName,
      this.gstNumber,
      this.natureOfBusinessActivity,
      this.address});

  GstPanResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    legalName = json['legal_name'];
    gstNumber = json['gst_number'];
    natureOfBusinessActivity =
        json['nature_of_business_activity'].cast<String>();
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['legal_name'] = legalName;
    data['gst_number'] = gstNumber;
    data['nature_of_business_activity'] = natureOfBusinessActivity;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    return data;
  }
}

class BuyerAddress {
  var buildingName;
  var city;
  String? doorNumber;
  String? dst;
  var floorNumber;
  var latitude;
  String? location;
  var longitude;
  String? pincode;
  String? stateName;
  String? street;

  BuyerAddress(
      {this.buildingName,
      this.city,
      this.doorNumber,
      this.dst,
      this.floorNumber,
      this.latitude,
      this.location,
      this.longitude,
      this.pincode,
      this.stateName,
      this.street});

  BuyerAddress.fromJson(Map<String, dynamic> json) {
    buildingName = json['building_name'];
    city = json['city'];
    doorNumber = json['door_number'];
    dst = json['dst'];
    floorNumber = json['floor_number'];
    latitude = json['latitude'];
    location = json['location'];
    longitude = json['longitude'];
    pincode = json['pincode'];
    stateName = json['state_name'];
    street = json['street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['building_name'] = buildingName;
    data['city'] = city;
    data['door_number'] = doorNumber;
    data['dst'] = dst;
    data['floor_number'] = floorNumber;
    data['latitude'] = latitude;
    data['location'] = location;
    data['longitude'] = longitude;
    data['pincode'] = pincode;
    data['state_name'] = stateName;
    data['street'] = street;
    return data;
  }
}
