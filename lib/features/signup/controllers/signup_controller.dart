class SignupController {
  final RegExp _specialCharacterRegex = RegExp(r'[^A-Za-z0-9]');
  final RegExp _uppercaseRegex = RegExp(r'[A-Z]');
  final RegExp _lowercaseRegex = RegExp(r'[a-z]');

  String email = '';
  String senha = '';
  String nome = '';
  String confirmarSenha = '';
  bool isActiveCheckBox = false;
  bool isActiveButton = false;

  bool get hasMinimumLength => senha.length >= 6;
  bool get hasSpecialCharacter => _specialCharacterRegex.hasMatch(senha);
  bool get hasUppercaseLetter => _uppercaseRegex.hasMatch(senha);
  bool get hasLowercaseLetter => _lowercaseRegex.hasMatch(senha);
  bool get passwordsMatch => senha.isNotEmpty && senha == confirmarSenha;
  bool get isPasswordValid =>
      hasMinimumLength &&
      hasSpecialCharacter &&
      hasUppercaseLetter &&
      hasLowercaseLetter &&
      passwordsMatch;
  
   void setNome(String nomeParam) {
    nome = nomeParam;
    changeActiveButton();
  }
  
  void setEmail(String emailParam) {
    email = emailParam;
    changeActiveButton();
  }

  void setSenha(String senhaParam) {
    senha = senhaParam;
    changeActiveButton();
  }

   void setConfirmarSenha(String ConfirmarsenhaParam) {
    confirmarSenha = ConfirmarsenhaParam;
    changeActiveButton();
  }



  void changeActiveButton() {
    isActiveButton =
        email.trim().isNotEmpty &&
        nome.trim().isNotEmpty &&
        isPasswordValid &&
        isActiveCheckBox;
  }

  void changeActiveCheckBox() {
    isActiveCheckBox = !isActiveCheckBox;
    changeActiveButton();
  }
}
