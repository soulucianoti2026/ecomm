class LostpassController {
  String email = '';
  bool isActiveButton = false;

  void setEmail(String emailParam) {
    email = emailParam;
    changeActiveButton();
  }

  void changeActiveButton() {
    isActiveButton = email.trim().isNotEmpty;
  }
}