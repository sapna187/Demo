import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sapna/main.dart';
import 'package:sapna/saved2.dart';

class Edit extends StatelessWidget {

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
                      TextFormField(
                        controller: name_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Name
                      TextFormField(
                        controller: email_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Email
                      TextFormField(
                        controller: number_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Contact number',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ), //Number
                      TextFormField(
                        controller: country_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Country',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ), //Country
                      TextFormField(
                        controller: city_controller,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "City I'm in*",
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ), //City
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.deepPurpleAccent,
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            String name = name_controller.text;
                            String email = email_controller.text;
                            String number = number_controller.text;
                            String country = country_controller.text;
                            String city = city_controller.text;

                            userdata2.write('name', name);
                            userdata2.write('email', email);
                            userdata2.write('number', number);
                            userdata2.write('country', country);
                            userdata2.write('city', city);

                            Get.offAll(Saved2());
                          },
                          child: Text(
                            "Save",
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
