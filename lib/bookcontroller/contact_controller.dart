import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../database/contact_database.dart';

class ContactController extends GetxController {
  final TextEditingController namecon = TextEditingController();
  final TextEditingController numbercontroller = TextEditingController();
  // ContactDatabase contactDatabase = ContactDatabase();
  // Database? _database;
  //
  // @override
  // void onInit() {
  //   ContactDatabase().createDatabase().then((database) => database = database);
  //   super.onInit();
  // }
  //
  // void insertNo() {
  //   String name = namecon.text.trim();
  //   String number = numbercontroller.text.trim();
  //   contactDatabase.insertNo(_database!, name: name, number: number);
  // }
  // void updateNo(int id)
  // {
  //   String name = namecon.text.trim();
  //   String number = numbercontroller.text.trim();
  //   contactDatabase.updateNo(_database!, id: id, name: name, number: number);
  // }
  List<String> name=['hello'];
  List<String> No=['9662186025'];
}
