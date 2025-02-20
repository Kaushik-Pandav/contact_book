import 'package:contact_book/bookcontroller/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addContact extends StatelessWidget {
  const addContact({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    ContactController controller=Get.find<ContactController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add new Contact",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Icon(Icons.contact_mail,
              color: Colors.blue, size: (mediaQueryData.size.height) * 0.2),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: controller.namecon,
                decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        gapPadding: 5)),
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              controller: controller.numbercontroller,
                decoration: const InputDecoration(
                    labelText: "Mobile No",
                    prefixText: "+91",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        gapPadding: 5)),
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                )),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, offset: Offset(5, 5))
                    ]),
                child: InkWell(
                  onTap: () {
                         String name=controller.namecon.text;
                         String number = controller.numbercontroller.text;
                          controller.name.add(name);
                          controller.No.add(number);
                  },
                  child: const Align(
                    alignment: Alignment.center,
                      child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  )),
                )),
          )
        ],
      ),
    );
  }
}
