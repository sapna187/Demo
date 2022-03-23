import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sapna/main.dart';

import 'edit_info.dart';

class Saved2 extends StatelessWidget {

  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final number_controller = TextEditingController();
  final country_controller = TextEditingController();
  final city_controller = TextEditingController();

  final userdata2 = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfffeea),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => Homepage());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xFFfffeea),
        centerTitle: true,
        title: Text(
          "Edit Info",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 17,
              fontFamily: "Roboto"),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset("images/upload_img.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 30),
                        TextButton(
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "   Upload new photo   ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.fromLTRB(10, 15, 10, 15),
                                ),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.deepPurpleAccent),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        side: BorderSide(
                                            color: Colors.deepPurpleAccent)))),
                            onPressed: () => null),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 7, 18, 7),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 19,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "About me",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              fontFamily: "Roboto"),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),

                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Name : ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "${userdata2.read('name')}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Email : ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "${userdata2.read('email')}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Contact Number : ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "${userdata2.read('number')}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Country : ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "${userdata2.read('country')}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "City I'm in : ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "${userdata2.read('city')}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontFamily: "Roboto"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ), //City
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.deepPurpleAccent,
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            Get.to(Edit());
                          },
                          child: Text(
                            "Return Back",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
