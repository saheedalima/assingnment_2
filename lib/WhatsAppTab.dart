import 'package:assingnment_2/Contacts_Page.dart';
import 'package:assingnment_2/List_With_separator.dart';
import 'package:assingnment_2/List_with_builder.dart';
import 'package:assingnment_2/LoginPage_Stateful.dart';
import 'package:flutter/material.dart';

class WhatsAppTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(title: Text("WhatsApp"),
      bottom: TabBar(tabs: [
        Tab(icon: Icon(Icons.people_alt_rounded),),
        Tab(text: "Chat",),
        Tab(text: "Status",),
        Tab(text: "Calls",)
      ]),),
      body: TabBarView(children: [
        List_With_separator(),
        List_with_builder(),
        ContactsPage(),
        LoginPage_Stateful()
      ]),
    ));
  }
}
