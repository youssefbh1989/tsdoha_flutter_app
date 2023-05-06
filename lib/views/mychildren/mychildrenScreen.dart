import 'package:flutter/material.dart';

class MyChildrenPage extends StatelessWidget {
  final List<Student> students = [
    Student(
      avatar: 'assets/imgs/user-avatar.png',
      name: 'John Doe',
      idNumber: '123456',
      schoolName: 'ABC School',
      className: 'Class 10A',
      yearOfStudy: '2023',
      mobileNumber: '1234567890',
    ),
    Student(
      avatar: 'assets/imgs/user-avatar.png',
      name: 'Jane Smith',
      idNumber: '987654',
      schoolName: 'XYZ School',
      className: 'Class 9B',
      yearOfStudy: '2024',
      mobileNumber: '9876543210',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Container(
            height: 500,
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    color: const Color(0xFF6495ed),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(student.avatar),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          student.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        Text('ID Number: ${student.idNumber}'),
                        const SizedBox(height: 30),
                        Text('School: ${student.schoolName}'),
                        const SizedBox(height: 30),
                        Text('Class: ${student.className}'),
                        const SizedBox(height: 30),
                        Text('Year of Study: ${student.yearOfStudy}'),
                        const Divider(height: 100,),
                        Text('Mobile Number: ${student.mobileNumber}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Student {
  final String avatar;
  final String name;
  final String idNumber;
  final String schoolName;
  final String className;
  final String yearOfStudy;
  final String mobileNumber;

  Student({
    required this.avatar,
    required this.name,
    required this.idNumber,
    required this.schoolName,
    required this.className,
    required this.yearOfStudy,
    required this.mobileNumber,
  });
}
