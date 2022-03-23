import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sapna/main.dart';

import 'edit_info.dart';

class Saved extends StatelessWidget {
  final userdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeea),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.to(Edit());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFfffeea),
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 19,
              fontFamily: "Roboto"),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("images/logo.png"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                fontFamily: "Roboto"),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "I am here to find what aligns with my\ninterests",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                fontFamily: "Roboto"),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Profile (100%)",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: Colors.deepPurpleAccent,
                    thickness: 3.5,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Career Clarity",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "I have a general idea",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
                          // offset: Offset(
                          //     2.0, 2.0), // shadow direction: bottom right
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "My Activity",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.amber,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Hour(s) spent on",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Career learning",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  height: 90,
                                  // width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.red,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "6",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Career(s) explored",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              fontFamily: "Roboto"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
                          // offset: Offset(
                          //     2.0, 2.0), // shadow direction: bottom right
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 7, 18, 7),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Background",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            child: Container(
                              // width: 450,
                              child: Column(
                                children: [
                                  //Data From Here
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Name :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('username')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Contact number :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('usernum')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Gender :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('usergender')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "What are you currently doing :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('userwork')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Parent's email :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('useremail')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Which grade I'm in :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('usergrade')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Which School board I'm in :      ",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                      Text(
                                        "${userdata.read('userboard')}",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            fontFamily: "Roboto"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 130,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => Homepage());
                                    },
                                    child: Text(
                                      "Add New Data",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
                          // offset: Offset(
                          //     2.0, 2.0), // shadow direction: bottom right
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}