import "package:app/common/styles/commonSpace.dart";
import "package:app/features/authentication/screens/homepage/home.dart";
import "package:app/utils/constants/images_string.dart";
import "package:app/utils/constants/text.dart";
import "package:app/utils/helpers/helper.dart";
import "package:flutter/material.dart";
import "package:get/get_navigation/src/root/get_material_app.dart";
import "package:iconsax/iconsax.dart";

import "../../../../utils/constants/size.dart";
import "../signup/signup.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingAppbarHeight,
          child: Column(
            children: [
              ///Top part containing the logo and the welcome text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 150,
                      image: AssetImage(Timages.AppLogo)
                  ),
                  Text(TTexts.loginText
                  ),
                  const SizedBox(height: TSize.sm,),
                  Text(TTexts.loginTextSubtitle
                  ),
                ],
              ),

              ///The login form
              Form(child:
                Column(
                  children: [
                    ///Email field
                     TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        hintText: 'Enter your email?',
                        labelText: 'Email',
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check4),
                        labelText: 'Enter your password',
                        suffixIcon: Icon(Iconsax.eye_slash)
                      ),
                      obscureText: true, // Hide the text entered
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        ///_password = value!;
                      },
                    ),

                    SizedBox(height: TSize.sm),

                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){}), ///Remember me checkbox
                        Text("Remember me"),
                        TextButton(onPressed: (){}, child: Text("Forget password")), ///Forget password button

                      ],
                    ),

                    SizedBox(height: TSize.sm),
                    
                    Row(
                      children: [
                        ///Login Button
                        ElevatedButton(onPressed: (){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) =>HomePage())
                              );

                        }, child: Text("Login")),

                        SizedBox(width: TSize.spaceBtwItems),

                        ///Signupbutton
                        OutlinedButton(onPressed: ()
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupPage())
                          );
                        }, child: Text("Signup")),
                      ],
                    ),

                  ],
                )
              ),
            ],
          ),

        ),
      ),
    );
  }
}
