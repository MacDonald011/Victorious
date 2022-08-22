import 'package:flutter/material.dart';
import 'package:victoriousapp/views/homepage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Homepage())));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 2, 23, 41),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 2, 23, 41),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              const Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Stack(
                children: [Container()],
              ),
              const SizedBox(
                height: 35,
              ),
              BuildTextFed("Full Name", 'Mac Donald', false),
              BuildTextFed("E-Mail", 'divinemacdonald@gmail.com', false),
              BuildTextFed("Password", '**********', true),
              BuildTextFed('Phone Number', '09127467856', false),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'CANCEL',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2.2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                      color: const Color.fromARGB(255, 2, 20, 34),
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: () {},
                      child: const Text(
                        'SAVE',
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildTextFed(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        obscureText: isPasswordTextField ? showpassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showpassword = !showpassword;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye),
                  )
                : null,
            contentPadding: const EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
