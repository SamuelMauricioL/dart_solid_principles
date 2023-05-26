abstract class ShopBase {
  String? companyId;
  String? shopId;
  String? modified;
  String? created;
  String? updated;
  String? deleted;

  ShopBase({
    this.companyId,
    this.shopId,
    this.modified,
    this.created,
    this.updated,
    this.deleted,
  });
}

class Terminal extends ShopBase {
  String? id;
  bool? active;
  String? deviceId;
  String? name;
  String? deviceModel;
  String? deviceVersion;
  String? deviceName;
  String? appVersion;
  String? deviceToken;
  String? deviceType;
  String? assignedInventoryId;
  String? cvAccountId;
  String? currentEmployeeId;
  String? terminalType;
  String? checkoutType;

  Terminal({
    super.created,
    super.modified,
    super.deleted,
    super.updated,
    super.companyId,
    super.shopId,
    this.id,
    this.active,
    this.deviceId,
    this.name,
    this.deviceModel,
    this.deviceVersion,
    this.deviceName,
    this.appVersion,
    this.deviceToken,
    this.deviceType,
    this.assignedInventoryId,
    this.cvAccountId,
    this.currentEmployeeId,
    this.terminalType,
    this.checkoutType,
  });
}

class Address extends ShopBase {
  String? id;
  String? address;
  String? city;
  String? state;
  String? zipCode;
  String? country;
  final String? addressLine1;
  final String? addressLine2;
  String? memberId;
  String? transactionId;

  Address({
    this.id,
    super.created,
    super.modified,
    super.deleted,
    super.updated,
    super.companyId,
    this.address,
    this.city,
    this.state,
    this.zipCode,
    this.country,
    this.addressLine1,
    this.addressLine2,
    this.memberId,
    this.transactionId,
  });
}
