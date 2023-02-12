import 'package:flutter/material.dart';
import 'package:happsales_asignment/view_models/contact_db_bloc.dart';

import '../constants/custom_colors.dart';
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
                  return Container();
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
                              color: Colors.indigo,
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
                                  backgroundColor: _getColor(index),
                                  child: Text(
                                    getTitle(item.contactName),
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

  getTitle(String title) {
    try {
      return title.substring(0, 1);
    } catch (e) {
      return "";
    }
  }

  Color _getColor(int index) {
    if ((index + 1) % 2 == 0) {
      return CustomColors.convertColor("0000FF");
    }
    if ((index + 1) % 3 == 0) {
      return Colors.yellow;
    }
    return Colors.red;
  }
}
