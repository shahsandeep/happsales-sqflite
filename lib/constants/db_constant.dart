class DbConstants {
  static const String createContactTable =
      'CREATE TABLE contact (contact_id INTEGER PRIMARY KEY, contact_name TEXT, account_name TEXT)';

  static const String contactDb = 'contact.db';
  static const String contactTable = 'contact';
}
