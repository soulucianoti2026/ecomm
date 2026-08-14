import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/signup/controllers/signup_controller.dart';
import 'package:flutter_application_1/shared/app_text_style.dart';
import 'package:flutter_application_1/shared/widgets/__password_rule.dart';
import 'package:flutter_application_1/shared/widgets/app_check_box.dart';
import 'package:flutter_application_1/shared/widgets/app_elevated_button.dart';
import 'package:flutter_application_1/shared/widgets/app_text_field.dart';

class LostpassPage extends StatefulWidget {
  const LostpassPage({super.key});

  static const String route = '/lostpass';

  @override
  State<LostpassPage> createState() => _LostpassPageState();
}

class _LostpassPageState extends State<LostpassPage> {
  SignupController signupController = SignupController();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),

      body: SafeArea(
        //child: SingleChildScrollView(
          child: SizedBox(
            height:
                MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 24),
                  Center(
                    child: Text(
                      'Recuperar Senha',
                      style: AppTextStyle.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 8),
                  
                  AppTextField(
                    hintText: 'email@dominio.com',
                    onChanged: (value) {
                      setState(() {
                        signupController.setEmail(value);
                      });
                    },
                  ),
                  SizedBox(height: 16),
                 Spacer(),
                  
                  AppElevatedButton(
                    label: 'Continuar',
                    onPressed: signupController.isActiveButton? () {} : null,
                    type: ButtonType.filled,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      );
    
  }
}
