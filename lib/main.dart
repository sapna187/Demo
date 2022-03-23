import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sapna/edit_info.dart';
import 'package:sapna/saved.dart';

void main() async {
  await GetStorage.init();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  //Editing controllers
  final username_controller = TextEditingController();
  final usernum_controller = TextEditingController();
  final usergender_controller = TextEditingController();
  final userwork_controller = TextEditingController();
  final useremail_controller = TextEditingController();
  final usergrade_controller = TextEditingController();
  final userboard_controller = TextEditingController();

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
                                  // width: 150,
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
                                width: 20,
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
                    height: 650,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 0,
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
                          TextFormField(
                            controller: username_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Name',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Name
                          TextFormField(
                            controller: usernum_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Contact number',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Contact Number
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 260,
                              child: TextFormField(
                                controller: usergender_controller,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Gender',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Gender
                          TextFormField(
                            controller: userwork_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'What are you currently doing ?',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Currently doing
                          TextFormField(
                            controller: useremail_controller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Parent\'s email',
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ), //Parent's email
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 170,
                                  child: TextFormField(
                                    controller: usergrade_controller,
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'Which grade I\'m in',
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: DropdownButton<String>(
                                        items: <String>[
                                          'Grade 1',
                                          'Grade 2',
                                          'Grade 3',
                                          'Grade 4',
                                          'Grade 5',
                                          'Grade 6',
                                          'Grade 7',
                                          'Grade 8',
                                          'Grade 9',
                                          'Grade 10',
                                        ].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                        underline: Container(
                                          color: Colors.black45,
                                          height: 0.9,
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ), //Grade
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 195,
                                  child: TextFormField(
                                    controller: userboard_controller,
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'Which school board I\'m in',
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: DropdownButton<String>(
                                        items: <String>[
                                          'ICSE',
                                          'CBSE',
                                          'State',
                                          'Other',
                                        ].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                        underline: Container(
                                          color: Colors.black45,
                                          height: 0.9,
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ), //School board
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  String username = username_controller.text;
                                  String usernum =
                                      usernum_controller.text;
                                  String usergender =
                                      usergender_controller.text;
                                  String userwork = userwork_controller.text;
                                  String useremail = useremail_controller.text;
                                  String usergrade = usergrade_controller.text;
                                  String userboard = userboard_controller.text;

                                  // if (username != '' &&
                                  //     usernum != '' &&
                                  //     usergender != '' &&
                                  //     userwork != '' &&
                                  //     useremail != '' &&
                                  //     usergrade != '' &&
                                  //     userboard != '') {
                                  // userdata.write('isSaved', true);
                                  userdata.write('username', username);
                                  userdata.write('usernum', usernum);
                                  userdata.write('usergender', usergender);
                                  userdata.write('userwork', userwork);
                                  userdata.write('useremail', useremail);
                                  userdata.write('usergrade', usergrade);
                                  userdata.write('userboard', userboard);
                                  Get.offAll(Saved());
                                  // } else {
                                  //   Get.snackbar(
                                  //       "Error", "All fields are required",
                                  //       snackPosition: SnackPosition.BOTTOM);
                                  // }
                                },
                                child: Text(
                                  "Update",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
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