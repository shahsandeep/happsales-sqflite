import 'package:flutter/material.dart';
import 'package:happsales_asignment/constants/helper_funciton.dart';
import 'package:happsales_asignment/view_models/contact_db_bloc.dart';

import '../models/db_contact_model.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  void initState() {
    contactDbBloc.getDbData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          child: StreamBuilder<List<ContactDBModel>>(
            stream: contactDbBloc.sqlContacts.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ContactDBModel> contactData = snapshot.data ?? [];

                if (contactData.isEmpty) {
                  return const Center(child: Text('No Data'));
                }
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      width: MediaQuery.of(context).size.width - 20,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xff19194e),
                              size: 25,
                            ),
                          ),
                          const Expanded(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Contacts',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: contactData.length,
                        itemBuilder: (context, index) {
                          ContactDBModel item = contactData[index];
                          return Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: Colors.black.withOpacity(0.4)),
                                ),
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundColor:
                                      HelperFunctions.getColor(index),
                                  child: Text(
                                    HelperFunctions.getTitle(item.contactName),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                title: Text(
                                  item.contactName,
                                  style: const TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  item.accountName,
                                  style: const TextStyle(
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
