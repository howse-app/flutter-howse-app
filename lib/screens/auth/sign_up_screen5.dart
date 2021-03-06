import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:howse_app/screens/auth/auth.dart';


import 'package:howse_app/utils/utils.dart';
import 'package:howse_app/widgets/widget.dart';


class SignUpScreen5 extends StatefulWidget {
  const SignUpScreen5({Key key}) : super(key: key);

  @override
  _SignUpScreen5State createState() => _SignUpScreen5State();
}

class _SignUpScreen5State extends State<SignUpScreen5> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
              SizedBox(height: height * 0.02),
              iconRow(width),
              const SizedBox(height: 340,),
              validateButtonPadding(width, context),
              const SizedBox(height: Dimensions.heightSize * 2,),
              textPhotoInstructions(),
            ],
          ),
        ),
      ),
    );
  }

  Row iconRow(double width) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ 
                iconPadding(width),
                SizedBox(width: width * 0.03),
                textReversePhoto(),
              ],
            );
  }

  Padding iconPadding(double width) {
    return Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.08
                  ),
                  child: const FaIcon(FontAwesomeIcons.circleUser, size: 30, color: CustomColor.primaryColor)
                );
  }

  Text textReversePhoto() {
    return Text(
                  Strings.reversePhoto,
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize: Dimensions.largeTextSize,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.start,
                );
  }

  Padding validateButtonPadding(double width, BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(
                left: width * 0.08,
                right: width * 0.08,
              ),
              child: validateButton(context),
            );
  }

  SecondaryButtonWidget validateButton(BuildContext context) {
    return SecondaryButtonWidget(
                  title: Strings.validateSignUp,
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:
                    (context) => const SignUpScreen6()));
                  },
                );
  }

  Text textPhotoInstructions() {
    return Text(
              Strings.photoInstructions,
               style: TextStyle(
               color: Colors.grey,
               fontSize: Dimensions.largeTextSize,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              );
  }


 inputFieldWidget(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.02,
        right: width * 0.02,
      ),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                 padding: EdgeInsets.only(
                    left: width * 0.2,
                    right: width * 0.2),
                    child: Text(
                      Strings.documentsVerification,
                       style: const TextStyle(
                       color: CustomColor.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                       ),
                         textAlign: TextAlign.center,
                    ),
                ),
              const SizedBox(height: Dimensions.heightSize * 2,),  
              Padding(
                 padding: const EdgeInsets.only(
                    left: Dimensions.marginSize,
                    right: Dimensions.marginSize),
                    child: Text(
                      Strings.thisProcess,
                       style: const TextStyle(
                       color: CustomColor.primaryColor,
                        fontSize: 16,
                       ),
                         textAlign: TextAlign.start,
                      ),
                ),  
                Padding(
                 padding: EdgeInsets.only(
                    top: height * 0.016,
                    left: Dimensions.marginSize,
                    right: Dimensions.marginSize),
                    child: Text(
                      Strings.uploadId,
                       style: TextStyle(
                       color: CustomColor.primaryColor,
                        fontSize: Dimensions.extraSmallTextSize * 1.8,
                        fontWeight: FontWeight.bold
                       ),
                         textAlign: TextAlign.start,
                      ),
                ),               
              
          ],
        )
      )
    );
  }

    

}
