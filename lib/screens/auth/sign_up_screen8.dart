import 'package:flutter/material.dart';
import 'package:howse_app/screens/auth/sign_up_screen9.dart';
import 'package:howse_app/utils/custom_color.dart';


import 'package:howse_app/utils/dimensions.dart';
import 'package:howse_app/utils/strings.dart';
import 'package:howse_app/widgets/back_widget.dart';

import '../../widgets/secondary_button_widget.dart';

class SignUpScreen8 extends StatefulWidget {
  const SignUpScreen8({Key key}) : super(key: key);

  @override
  _SignUpScreen8State createState() => _SignUpScreen8State();
}

class _SignUpScreen8State extends State<SignUpScreen8> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  void initState() {

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              BackWidget(title: Strings.createAnAccount),
              const SizedBox(height: Dimensions.heightSize * 2,),
              inputFieldWidget(context),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.43
                ),
                child: const Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: 
                        Icon(
                          Icons.arrow_right_rounded,
                          color: CustomColor.primaryColor,
                          size: 100,
                          )),
                        TextSpan(
                          text: 'Método de pago',
                          )
                      ]
                    ),
                    style: TextStyle(
                    color: CustomColor.electricVioletColor,
                    fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
              ),
              SecondaryButtonWidget(
                  title: "Validar",
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:
                    (context) => const SignUpScreen9()));
                  },
                ),
              const SizedBox(height: Dimensions.heightSize * 2,),
            ],
          ),
        ),
      ),
    );
  }



  inputFieldWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Dimensions.marginSize,
        right: Dimensions.marginSize,
      ),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                 padding: const EdgeInsets.only(
                    left: Dimensions.marginSize,
                    right: Dimensions.marginSize),
                    child: Text(
                      "Elige tu método de pago",
                       style: TextStyle(
                       color: CustomColor.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                       ),
                         textAlign: TextAlign.center,
                       ),
                        ),
              const SizedBox(height: Dimensions.heightSize * 2,),                  
              
          ],
        )
      )
    );
  }

    

}
