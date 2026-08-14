import 'package:flutter/material.dart';

class PasswordRules extends StatelessWidget {
  const PasswordRules({
    super.key,
    required this.password,
    required this.confirmPassword,
  });

  final String password;
  final String confirmPassword;

  bool get _hasMinimumLength => password.length >= 6; //minimo de 6 caracteres
  bool get _hasSpecialCharacter => RegExp(r'[^A-Za-z0-9]').hasMatch(password); //minimo de um caractere especial
  bool get _hasUppercaseLetter => RegExp(r'[A-Z]').hasMatch(password); //minimo de uma letra maiuscula
  bool get _hasLowercaseLetter => RegExp(r'[a-z]').hasMatch(password);   //minimo de uma letra minuscula
  bool get _passwordsMatch =>
      password.isNotEmpty && password == confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _PasswordRule(
          label: 'Mínimo de 6 caracteres',
          isValid: _hasMinimumLength,
        ),
        _PasswordRule(
          label: 'Mínimo de 1 caractere especial',
          isValid: _hasSpecialCharacter,
        ),
        _PasswordRule(
          label: 'Mínimo de uma letra maiúscula',
          isValid: _hasUppercaseLetter,
        ),
        _PasswordRule(
          label: 'Mínimo de uma letra minúscula',
          isValid: _hasLowercaseLetter,
        ),
        _PasswordRule(
          label: 'As senhas digitadas coincidem',
          isValid: _passwordsMatch,
        ),
      ],
    );
  }
}

class _PasswordRule extends StatelessWidget {
  const _PasswordRule({required this.label, required this.isValid});

  final String label;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    final color = isValid ? Colors.green : Colors.grey;

    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(
            isValid ? Icons.check_circle : Icons.cancel_outlined,
            color: color,
            size: 18,
          ),
          const SizedBox(width: 8),
          Text(label, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
