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



// void main() {
//   // Create a User object
//   User userOne = User('eric', 30);
  
//   // Print the username of the User object
//   print(userOne.username);

//   // userOne.login();

//   User userTwo = User('christ',40);
//   print(userTwo.username);
// }

// class User {
//   String username;
//   int age;

//   // Constructor to initialize username and age
//   User(this.username, this.age);

//   // Method to simulate user login
//   void login() {
//     print('user logged in');
//   }
// }




// void main (){
//  User userOne=User('eric',30);
//  print(userOne.name);
//  print(userOne.age);

//  SuperUser userTwo= SuperUser('kel',60);
//  print(userTwo.name);
//  userTwo.publish();
// }

// class User {
//   String name;
//   int age ;
//   User(this.name,this.age);
// }

// class SuperUser extends User{
//   SuperUser(String username,int age):super(username,age);

//   void publish (){
//     print('yie');
//   }
// }



import 'dart:io';
class Todo {
  String task;

  Todo({required this.task});

  @override
  String toString() {
    return task;
  }
}


List<Todo> pack = [];

void main() {
  while (true) {
    print('\nMenu:');
    print('1. Add a task');
    print('2. Remove a task');
    print('3. View all tasks');
    print('4. Exit');
    print('Enter your choice:');
    var input = stdin.readLineSync();
    var put = input ?? '0';

    if (put == '1') {
      addTask();
    } else if (put == '2') {
      removeTask();
    } else if (put == '3') {
      viewTasks();
    } else if (put == '4') {
      print('Exiting...');
      break;
    } else {
      print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}

void addTask() {
  print('Enter the task:');
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    pack.add(Todo(task: task));
    print('Task added.');
  } else {
    print('Task cannot be empty.');
  }
}

void removeTask() {
  if (pack.isEmpty) {
    print('No tasks to remove.');
    return;
  }
  print('Enter the task number to remove:');
  String? taskNumber = stdin.readLineSync();
  if (taskNumber != null && taskNumber.isNotEmpty) {
    int taskIndex = int.parse(taskNumber) - 1;
    if (taskIndex >= 0 && taskIndex < pack.length) {
      pack.removeAt(taskIndex);
      print('Task removed.');
    } else {
      print('Invalid task number.');
    }
  } else {
    print('Task number cannot be empty.');
  }
}

void viewTasks() {
  if (pack.isEmpty) {
    print('No tasks available.');
    return;
  }
  print('\nTasks:');
  for (int i = 0; i < pack.length; i++) {
    print('${i + 1}. ${pack[i].task}');
  }
}
