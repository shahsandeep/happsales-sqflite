import 'dart:async';

import 'package:happsales_asignment/constants/db_constant.dart';
import 'package:happsales_asignment/models/db_contact_model.dart';
import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ContactDb {
  static Future<Database> initDB() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, DbConstants.contactDb);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  static Future _onCreate(Database db, int version) async {
    await db.execute(DbConstants.createContactTable);
  }

  Future createContact(ContactDBModel contact) async {
    Database db = await initDB();

    return await db.rawInsert(_onSave(contact));
  }

  static Future<List<ContactDBModel>> readContacts() async {
    try {
      Database db = await initDB();
      var contact = await db.query(DbConstants.contactTable);
      List<ContactDBModel> contactList = [];
      for (var i in contact) {
        Map<String, dynamic> d = i;
        ContactDBModel data = ContactDBModel(
          contactId: d["contact_id"],
          contactName: d["contact_name"],
          accountName: d['account_name'],
        );
        contactList.add(data);
      }

      return contactList;
    } catch (e) {
      return [];
    }
  }

  Future<int> delete() async {
    var db = await initDB();
    return await db.delete(DbConstants.contactTable);
  }

  String _onSave(ContactDBModel contact) {
    return "INSERT INTO contact(contact_id, contact_name, account_name) VALUES('${contact.contactId}', '${contact.contactName}', '${contact.accountName}')";
  }
}
