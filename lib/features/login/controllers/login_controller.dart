class LoginController {
  final RegExp _emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  final RegExp _senhaRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  bool isActiveCheckBox = false;
  String email = '';
  String senha = '';
  bool isActiveButton = false;
  bool isLoading = false;
  
String? get emailError {
if (email.trim().isEmpty || _emailRegex.hasMatch(email.trim())) return null;
return 'E-mail invalido';}

String? get senhaError {
if (senha.trim().isEmpty || _senhaRegex.hasMatch(senha.trim())) return null;
return 'E-mail invalido';}

  void setEmail(String emailParam) {
    email = emailParam;
    changeActiveButton();
  }

  void setSenha(String senhaParam) {
    senha = senhaParam;
    changeActiveButton();
  }

  void changeActiveButton() {
    isActiveButton = email.trim().isNotEmpty && senha.trim().isNotEmpty;
  }

  void changeActiveCheckBox() {
    isActiveCheckBox = !isActiveCheckBox;
  }


Future<void> login() async {
    //Simula chamada da API
    await Future.delayed(const Duration(seconds: 2));
  }
}