import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/widgets/app_elevated_button.dart';
import 'package:flutter_application_1/shared/widgets/app_text_field.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';

class LostpassPage extends StatefulWidget {
  const LostpassPage({super.key});

  static const String route = '/lostpass';

  @override
  State<LostpassPage> createState() => _LostpassPageState();
}

class _LostpassPageState extends State<LostpassPage> {
  final RegExp _emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  bool _isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (centerTitle: true, title: const Text('Recuperar Senha'),),

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
                  /*Center(
                    child: Text(
                      'Recuperar Senha',
                      style: AppTextStyle.title,
                      textAlign: TextAlign.center,
                    ),
                  ),*/
                  SizedBox(height: 8),
                  
                  AppTextField(
                    hintText: 'email@dominio.com',
                    onChanged: (value) {
                      setState(() {
                        _isEmailValid = _emailRegex.hasMatch(value.trim());
                      });
                    },
                  ),
                  SizedBox(height: 16),
                 Spacer(),
                  
                  AppElevatedButton(
                    label: 'Continuar',
                    onPressed: _isEmailValid ? () {AnimatedSnackBar.rectangle(
'Success',
  'This is a success snack bar',
  type: AnimatedSnackBarType.success,
  brightness: Brightness.light,
).show(
  context,
);} : null,
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
