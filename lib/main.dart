import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Empleados',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: EmployeeListScreen(),
    );
  }
}

class Employee {
  final int id;
  final String name;
  final String email;
  final String phoneNumber;
  final String address;
  final String description;
  final double rating;

  Employee({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.description,
    required this.rating,
  });
}

class EmployeeListScreen extends StatelessWidget {
  final List<Employee> employees = [
    Employee(
      id: 1,
      name: 'Alice Johnson',
      email: 'alice.johnson@coffee.com',
      phoneNumber: '+1 123 456 7890',
      address: '123 Coffee St, Brew City',
      description: 'Barista experimentada con pasión por el arte latte.',
      rating: 4.8,
    ),
    Employee(
      id: 2,
      name: 'Bob Smith',
      email: 'bob.smith@coffee.com',
      phoneNumber: '+1 234 567 8901',
      address: '456 Espresso Ave, Roast Town',
      description: 'Gerente con excelentes habilidades de servicio al cliente.',
      rating: 4.5,
    ),
    Employee(
      id: 3,
      name: 'Charlie Brown',
      email: 'charlie.brown@coffee.com',
      phoneNumber: '+1 345 678 9012',
      address: '789 Cappuccino Rd, Grind Village',
      description:
          'Cajero amigable a quien le encanta interactuar con los clientes.',
      rating: 4.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Empleados ☕',
        ),
        backgroundColor: Colors.brown[700],
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return Card(
            color: index % 2 == 0 ? Colors.brown[100] : Colors.brown[50],
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: ${employee.id}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[900],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Nombre: ${employee.name}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[900],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Email: ${employee.email}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Celular: ${employee.phoneNumber}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Direccion: ${employee.address}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Descripcion: ${employee.description}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Rating: ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown[800],
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Text(
                        ' ${employee.rating}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber[700],
                        ),
                      ),
                    ],
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
