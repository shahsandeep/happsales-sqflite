// import 'package:happsales_asignment/models/contact_model.dart';
// import 'package:happsales_asignment/repo/api_provider.dart';
// import 'package:rxdart/rxdart.dart';

// class ContactBloc {
//   final ApiProvider _apiProvider = ApiProvider();
//   final BehaviorSubject<List<ContactModel>> _responseContact =
//       BehaviorSubject<List<ContactModel>>();

//   Future<List<ContactModel>> getContactDetails() async {
//     List<ContactModel> response = await _apiProvider.getContacts();
//     _responseContact.sink.add(response);
//     return response;
//   }

//   BehaviorSubject get responseContact => _responseContact;
// }

// ContactBloc contactBloc = ContactBloc();
