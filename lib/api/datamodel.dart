class DataModel {
  int ID;
  String EnglishName;
  String ArabicName;
  String ShortName;
  int BrandID;
  String CommercialRegisterNo;
  String TaxNo;
  String Address;
  String Description;
  String Telephone1;
  String Telephone2;
  String Telephone3;
  bool IsFactory;
  bool IsShowRoom;
  int CostCenterID;
  String LogoUrl;
  bool Active;
  bool Deleted;

  DataModel({required this.CommercialRegisterNo, required this.Active,
    required this.Address, required this.ArabicName, required this.BrandID, required this.CostCenterID
    , required this.Deleted, required this.Description, required this.EnglishName,
    required this.ID, required this.IsFactory, required this.IsShowRoom, required this.LogoUrl,
    required this.ShortName, required this.TaxNo, required this.Telephone1, required this.Telephone2,
    required this.Telephone3});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      CostCenterID: int.parse(json["CostCenterID"]),
      ID: int.parse(json["ID"]),
      BrandID: int.parse(json["BrandID"]),
      Active: json["Active"].toLowerCase() == 'true',
      Deleted: json["Deleted"].toLowerCase() == 'true',
      IsShowRoom: json["IsShowRoom"].toLowerCase() == 'true',
      IsFactory: json["IsFactory"].toLowerCase() == 'true',
      Address: json["Address"],
        EnglishName:json["EnglishName"],
        ArabicName:json["ArabicName"],
        ShortName:json["ShortName"],
      LogoUrl:json["LogoUrl"],
      Telephone3:json["Telephone3"],
      Telephone2:json["Telephone2"],
      Telephone1:json["Telephone1"],
      Description:json["Description"],
      TaxNo:json["TaxNo"],
      CommercialRegisterNo:json["CommercialRegisterNo"],
    );
  }


//
//
}