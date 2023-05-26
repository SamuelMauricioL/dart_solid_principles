mixin FormValidation {
  bool isPasswordValid(String password) => password.length >= 8;
  bool isPhoneValid(String phone) => phone.length == 10;
  bool isFirstNameValid(String firstName) => firstName.isNotEmpty;
  bool isLastNameValid(String lastName) => lastName.isNotEmpty;
  bool isEmailValid(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(email);
  }
}

class HomeView with FormValidation {
  void validation(String email, String pass) {
    if (isEmailValid(email) && isPasswordValid(pass)) {
      print('Valid');
    } else {
      print('Invalid');
    }
  }
}

void main() {
  final homeview = HomeView();
  homeview.validation('samuelml@gmail.com', '12345678');
}
