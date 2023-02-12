import 'package:happsales_asignment/models/db_contact_model.dart';
import 'package:happsales_asignment/services/api_provider.dart';
import 'package:happsales_asignment/services/db_helper.dart';
import 'package:rxdart/rxdart.dart';

class ContactDbBloc {
  final ApiProvider _apiProvider = ApiProvider();
  final BehaviorSubject<List<ContactDBModel>> _responseDb =
      BehaviorSubject<List<ContactDBModel>>();

  getDbData() async {
    List<ContactDBModel> contactList = await ContactDb.readContacts();
    for (var i = 0; i < contactList.length / 2; i++) {
      var temp = contactList[i];
      contactList[i] = contactList[contactList.length - 1 - i];
      contactList[contactList.length - 1 - i] = temp;
    }
    if (contactList.isEmpty) {
      List<ContactDBModel> response = await _apiProvider.getContacts();

      await ContactDb.initDB();

      for (var i in response) {
        await ContactDb().createContact(i);
      }
      ContactDb.readContacts().then((value) {
        _responseDb.sink.add(value);
      });
    } else {
      _responseDb.sink.add(contactList);
    }
  }

  BehaviorSubject<List<ContactDBModel>> get sqlContacts => _responseDb;
}

ContactDbBloc contactDbBloc = ContactDbBloc();
