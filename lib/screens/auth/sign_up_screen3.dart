import 'package:flutter/material.dart';
import 'package:howse_app/screens/auth/sign_up_screen4.dart';
import 'package:howse_app/utils/custom_color.dart';
import 'package:howse_app/utils/dimensions.dart';
import 'package:howse_app/utils/strings.dart';
import 'package:howse_app/widgets/back_widget.dart';
import '../../widgets/secondary_button_widget.dart';

class SignUpScreen3 extends StatefulWidget {
  const SignUpScreen3({Key key}) : super(key: key);

  @override
  _SignUpScreen3State createState() => _SignUpScreen3State();
}

class _SignUpScreen3State extends State<SignUpScreen3> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  void initState() {

    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          color: Colors.white,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              BackWidget(title: Strings.createAnAccount),
              const SizedBox(height: Dimensions.heightSize * 2,),
              inputFieldWidget(context),
              SizedBox(height: height * 0.4 ,),// TODO: Cambiar por widget código seguridad.
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.06,
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                child: SecondaryButtonWidget(
                  title: "Validar",
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:
                    (context) => const SignUpScreen4()));
                  },
                ),
                ),
              
              const SizedBox(height: Dimensions.heightSize * 2,),
              Text(
                "¿No recibiste el código?",
                 style: TextStyle(
                 color: Colors.grey,
                 fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }



  inputFieldWidget(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.05,
        right: width * 0.05,
      ),
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                 padding: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.05),
                    child: Text(
                      "Confirma tu número de teléfono",
                       style: TextStyle(
                       color: CustomColor.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                       ),
                         textAlign: TextAlign.center,
                       ),
               ),
              SizedBox(height: height * 0.02,),  
              Padding(padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.01
                
              ),
              child: const Text('Ingresa el código de 4 dígitos que Howse acaba de enviar a tu número teléfonico.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16 ,
                color: CustomColor.primaryColor,
              ),),
              ),
                              
              
          ],
        )
      )
    );
  }

  

}

