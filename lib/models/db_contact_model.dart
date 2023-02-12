import 'package:happsales_asignment/services/db_helper.dart';

class ContactDataModel {
  List<ContactDBModel> contactList;
  ContactDataModel({required this.contactList});

  factory ContactDataModel.fromJson(var data) => ContactDataModel(
      contactList: List.from(data.map((x) => ContactDBModel.fromJson(x))));
}

class ContactDBModel {
  int contactId;
  String contactName;
  String accountName;

  ContactDBModel(
      {required this.contactId,
      required this.contactName,
      required this.accountName});

  factory ContactDBModel.fromJson(Map<String, dynamic> json) => ContactDBModel(
      contactId: json['ContactID'],
      contactName: json['ContactName'],
      accountName: json['AccountName']);

  Map<String, dynamic> toJson() => {
        "contact_id": contactId,
        "contact_name": contactName,
        "account_name": accountName,
      };
}
