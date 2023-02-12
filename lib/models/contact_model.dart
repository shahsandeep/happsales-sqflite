// To parse this JSON data, do
//
//     final contactModel = contactModelFromJson(jsonString);

import 'dart:convert';

List<ContactModel> contactModelFromJson(String str) => List<ContactModel>.from(
    json.decode(str).map((x) => ContactModel.fromJson(x)));

String contactModelToJson(List<ContactModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContactModel {
  ContactModel({
    required this.contactId,
    required this.contactCode,
    required this.title,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.contactName,
    required this.contactIdentifier,
    required this.accountId,
    this.contactCategoryId,
    required this.departmentName,
    required this.designation,
    required this.rolesAndResponsibilities,
    required this.reportingManager,
    this.reportingContactId,
    required this.mobileNumber,
    required this.alternateMobileNumber,
    required this.workPhone,
    required this.residencePhone,
    required this.email,
    required this.alternateEmail,
    required this.addressLine1,
    required this.addressLine2,
    required this.addressLine3,
    required this.city,
    required this.state,
    required this.country,
    required this.pin,
    required this.gpsCoordinates,
    required this.linkedIn,
    required this.pastAccounts,
    required this.pastDesignations,
    this.dateOfBirth,
    required this.remindBirthday,
    this.contactAlignmentId,
    required this.remarks,
    required this.referenceHistory,
    required this.isPrimaryContact,
    required this.tags,
    required this.freeTextField1,
    required this.freeTextField2,
    required this.freeTextField3,
    required this.companyName,
    this.taxPayerIdentificationNumber,
    this.socialSecurityNumber,
    this.passportNumber,
    this.drivingLicenseNumber,
    this.voterIdCardNumber,
    this.marketingContactId,
    required this.createdBy,
    required this.createdOn,
    required this.modifiedBy,
    this.modifiedOn,
    required this.deviceIdentifier,
    required this.referenceIdentifier,
    required this.isActive,
    required this.uid,
    required this.appUserId,
    this.assignedByAppUserId,
    required this.appUserGroupId,
    required this.isArchived,
    required this.isDeleted,
    this.leadQualificationId,
    required this.accountName,
    this.contactCategoryName,
    this.accountLocation,
    required this.reportingContactName,
    required this.contactAlignmentName,
    required this.appUserName,
    this.assignedByAppUserName,
    required this.appUserGroupName,
    this.id,
    this.userLoginName,
    this.deviceAndLocation,
    this.userInput,
    this.appUserUid,
    this.appUserGroupUid,
    this.createdForUser,
    required this.rowNum,
  });

  int contactId;
  String contactCode;
  String title;
  String firstName;
  String middleName;
  String lastName;
  String contactName;
  String contactIdentifier;
  int accountId;
  dynamic contactCategoryId;
  String departmentName;
  String designation;
  String rolesAndResponsibilities;
  String reportingManager;
  dynamic reportingContactId;
  String mobileNumber;
  String alternateMobileNumber;
  String workPhone;
  String residencePhone;
  String email;
  String alternateEmail;
  String addressLine1;
  String addressLine2;
  String addressLine3;
  String city;
  String state;
  String country;
  String pin;
  String gpsCoordinates;
  String linkedIn;
  String pastAccounts;
  String pastDesignations;
  dynamic dateOfBirth;
  bool remindBirthday;
  dynamic contactAlignmentId;
  String remarks;
  String referenceHistory;
  bool isPrimaryContact;
  String tags;
  String freeTextField1;
  String freeTextField2;
  String freeTextField3;
  String companyName;
  dynamic taxPayerIdentificationNumber;
  dynamic socialSecurityNumber;
  dynamic passportNumber;
  dynamic drivingLicenseNumber;
  dynamic voterIdCardNumber;
  dynamic marketingContactId;
  String createdBy;
  DateTime createdOn;
  String modifiedBy;
  DateTime? modifiedOn;
  String deviceIdentifier;
  String referenceIdentifier;
  bool isActive;
  String uid;
  int appUserId;
  dynamic assignedByAppUserId;
  int appUserGroupId;
  bool isArchived;
  bool isDeleted;
  dynamic leadQualificationId;
  String accountName;
  dynamic contactCategoryName;
  dynamic accountLocation;
  String reportingContactName;
  String contactAlignmentName;
  String appUserName;
  dynamic assignedByAppUserName;
  String appUserGroupName;
  dynamic id;
  dynamic userLoginName;
  dynamic deviceAndLocation;
  dynamic userInput;
  dynamic appUserUid;
  dynamic appUserGroupUid;
  dynamic createdForUser;
  int rowNum;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        contactId: json["ContactID"],
        contactCode: json["ContactCode"],
        title: json["Title"],
        firstName: json["FirstName"],
        middleName: json["MiddleName"],
        lastName: json["LastName"],
        contactName: json["ContactName"],
        contactIdentifier: json["ContactIdentifier"],
        accountId: json["AccountID"],
        contactCategoryId: json["ContactCategoryID"],
        departmentName: json["DepartmentName"],
        designation: json["Designation"],
        rolesAndResponsibilities: json["RolesAndResponsibilities"],
        reportingManager: json["ReportingManager"],
        reportingContactId: json["ReportingContactID"],
        mobileNumber: json["MobileNumber"],
        alternateMobileNumber: json["AlternateMobileNumber"],
        workPhone: json["WorkPhone"],
        residencePhone: json["ResidencePhone"],
        email: json["Email"],
        alternateEmail: json["AlternateEmail"],
        addressLine1: json["AddressLine1"],
        addressLine2: json["AddressLine2"],
        addressLine3: json["AddressLine3"],
        city: json["City"],
        state: json["State"],
        country: json["Country"],
        pin: json["PIN"],
        gpsCoordinates: json["GPSCoordinates"],
        linkedIn: json["LinkedIn"],
        pastAccounts: json["PastAccounts"],
        pastDesignations: json["PastDesignations"],
        dateOfBirth: json["DateOfBirth"],
        remindBirthday: json["RemindBirthday"],
        contactAlignmentId: json["ContactAlignmentID"],
        remarks: json["Remarks"],
        referenceHistory: json["ReferenceHistory"],
        isPrimaryContact: json["IsPrimaryContact"],
        tags: json["Tags"],
        freeTextField1: json["FreeTextField1"],
        freeTextField2: json["FreeTextField2"],
        freeTextField3: json["FreeTextField3"],
        companyName: json["CompanyName"],
        taxPayerIdentificationNumber: json["TaxPayerIdentificationNumber"],
        socialSecurityNumber: json["SocialSecurityNumber"],
        passportNumber: json["PassportNumber"],
        drivingLicenseNumber: json["DrivingLicenseNumber"],
        voterIdCardNumber: json["VoterIDCardNumber"],
        marketingContactId: json["MarketingContactID"],
        createdBy: json["CreatedBy"],
        createdOn: DateTime.parse(json["CreatedOn"]),
        modifiedBy: json["ModifiedBy"],
        modifiedOn: json["ModifiedOn"] == null
            ? null
            : DateTime.parse(json["ModifiedOn"]),
        deviceIdentifier: json["DeviceIdentifier"],
        referenceIdentifier: json["ReferenceIdentifier"],
        isActive: json["IsActive"],
        uid: json["Uid"],
        appUserId: json["AppUserID"],
        assignedByAppUserId: json["AssignedByAppUserID"],
        appUserGroupId: json["AppUserGroupID"],
        isArchived: json["IsArchived"],
        isDeleted: json["IsDeleted"],
        leadQualificationId: json["LeadQualificationID"],
        accountName: json["AccountName"],
        contactCategoryName: json["ContactCategoryName"],
        accountLocation: json["AccountLocation"],
        reportingContactName: json["ReportingContactName"],
        contactAlignmentName: json["ContactAlignmentName"],
        appUserName: json["AppUserName"],
        assignedByAppUserName: json["AssignedByAppUserName"],
        appUserGroupName: json["AppUserGroupName"],
        id: json["ID"],
        userLoginName: json["UserLoginName"],
        deviceAndLocation: json["DeviceAndLocation"],
        userInput: json["UserInput"],
        appUserUid: json["AppUserUid"],
        appUserGroupUid: json["AppUserGroupUid"],
        createdForUser: json["CreatedForUser"],
        rowNum: json["RowNum"],
      );

  Map<String, dynamic> toJson() => {
        "ContactID": contactId,
        "ContactCode": contactCode,
        "Title": title,
        "FirstName": firstName,
        "MiddleName": middleName,
        "LastName": lastName,
        "ContactName": contactName,
        "ContactIdentifier": contactIdentifier,
        "AccountID": accountId,
        "ContactCategoryID": contactCategoryId,
        "DepartmentName": departmentName,
        "Designation": designation,
        "RolesAndResponsibilities": rolesAndResponsibilities,
        "ReportingManager": reportingManager,
        "ReportingContactID": reportingContactId,
        "MobileNumber": mobileNumber,
        "AlternateMobileNumber": alternateMobileNumber,
        "WorkPhone": workPhone,
        "ResidencePhone": residencePhone,
        "Email": email,
        "AlternateEmail": alternateEmail,
        "AddressLine1": addressLine1,
        "AddressLine2": addressLine2,
        "AddressLine3": addressLine3,
        "City": city,
        "State": state,
        "Country": country,
        "PIN": pin,
        "GPSCoordinates": gpsCoordinates,
        "LinkedIn": linkedIn,
        "PastAccounts": pastAccounts,
        "PastDesignations": pastDesignations,
        "DateOfBirth": dateOfBirth,
        "RemindBirthday": remindBirthday,
        "ContactAlignmentID": contactAlignmentId,
        "Remarks": remarks,
        "ReferenceHistory": referenceHistory,
        "IsPrimaryContact": isPrimaryContact,
        "Tags": tags,
        "FreeTextField1": freeTextField1,
        "FreeTextField2": freeTextField2,
        "FreeTextField3": freeTextField3,
        "CompanyName": companyName,
        "TaxPayerIdentificationNumber": taxPayerIdentificationNumber,
        "SocialSecurityNumber": socialSecurityNumber,
        "PassportNumber": passportNumber,
        "DrivingLicenseNumber": drivingLicenseNumber,
        "VoterIDCardNumber": voterIdCardNumber,
        "MarketingContactID": marketingContactId,
        "CreatedBy": createdBy,
        "CreatedOn": createdOn.toIso8601String(),
        "ModifiedBy": modifiedBy,
        "ModifiedOn": modifiedOn?.toIso8601String(),
        "DeviceIdentifier": deviceIdentifier,
        "ReferenceIdentifier": referenceIdentifier,
        "IsActive": isActive,
        "Uid": uid,
        "AppUserID": appUserId,
        "AssignedByAppUserID": assignedByAppUserId,
        "AppUserGroupID": appUserGroupId,
        "IsArchived": isArchived,
        "IsDeleted": isDeleted,
        "LeadQualificationID": leadQualificationId,
        "AccountName": accountName,
        "ContactCategoryName": contactCategoryName,
        "AccountLocation": accountLocation,
        "ReportingContactName": reportingContactName,
        "ContactAlignmentName": contactAlignmentName,
        "AppUserName": appUserName,
        "AssignedByAppUserName": assignedByAppUserName,
        "AppUserGroupName": appUserGroupName,
        "ID": id,
        "UserLoginName": userLoginName,
        "DeviceAndLocation": deviceAndLocation,
        "UserInput": userInput,
        "AppUserUid": appUserUid,
        "AppUserGroupUid": appUserGroupUid,
        "CreatedForUser": createdForUser,
        "RowNum": rowNum,
      };
}
