// void main(){
//   for (int i=0;i<5;i++){
//     print('hello ${i+1}');
//   }
// }

// void main(){
//  int age=30;
// print(age);
//   }

// void main(){
//   String name ='christ';
//   print(name);
// }

// void main(){
//   bool isNight = false;
//   print(isNight);
// }

// void main(){
//   dynamic name ='christ';
//    name=30;
//   print(name);
// }

// void main(){
// String greet=greeting();
// int years=age();
// print(greet);
// print(years);
// }

// String greeting ()=>'hello';


// int age (){
//   return 30;
// }

// void main(){
//  List <String> namer=['eric','christ','kel'];
//  namer.add('lydia');
//  namer.remove('eric');
//  print (namer);
// }

void main() {
  // Create a User object
  User userOne = User('eric', 30);
  
  // Print the username of the User object
  print(userOne.username);

  // userOne.login();

  User userTwo = User('christ',40);
  print(userTwo.username);
}

class User {
  String username;
  int age;

  // Constructor to initialize username and age
  User(this.username, this.age);

  // Method to simulate user login
  void login() {
    print('user logged in');
  }
}
