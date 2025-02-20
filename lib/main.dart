import 'package:contact_book/bookcontroller/contact_controller.dart';
import 'package:contact_book/database/contact_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'view/contact_page.dart';

void main()
{
  Get.put(ContactController());
  runApp(const Homepage());
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: ContactPage(),
    );
  }
}
