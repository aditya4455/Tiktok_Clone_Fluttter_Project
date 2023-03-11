import 'package:firstflutter/constants.dart';
import 'package:firstflutter/views/screens/auth/login_screen.dart';
import 'package:firstflutter/views/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget
{
   SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
   final TextEditingController _usernamecontroller = TextEditingController();
   
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25,),
              Text(
                "Tiktok Clone",
                style: TextStyle(
                    fontSize: 35,color: buttonColor,fontWeight: FontWeight.w900
                ),
              ),
              const Text(
                "Register",
                style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 25,),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                    backgroundColor: Colors.black,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () => authController.pickImage(),
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _usernamecontroller,
                  labelText: "Username",
                  icon: Icons.person,
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailcontroller,
                  labelText: "Email",
                  icon: Icons.email,
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordcontroller,
                  labelText: "Password",
                  icon: Icons.lock,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: InkWell(
                  onTap: () => authController.registerUser(
                    _usernamecontroller.text,
                    _emailcontroller.text,
                    _passwordcontroller.text,
                    authController.profilePhoto,
                  ),
                  child:  const Center(
                    child:  Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen())),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
