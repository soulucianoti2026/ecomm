class SignupController {
  
  String email = '';
  String senha = '';
  String nome = '';
  String confirmarSenha = '';
  bool isActiveCheckBox = false;
  bool isActiveButton = false;
  
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
    isActiveButton = email.trim().isNotEmpty && senha.trim().isNotEmpty;
  }

  void changeActiveCheckBox() {
    isActiveCheckBox = !isActiveCheckBox;
  }
}
