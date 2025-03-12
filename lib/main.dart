import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Proveedor {
  final String idProveedor;
  final String telefono;
  final String correo;

  Proveedor({
    required this.idProveedor,
    required this.telefono,
    required this.correo,
  });
}

class MyApp extends StatelessWidget {
  final List<Proveedor> proveedores = [
    Proveedor(
        idProveedor: '001',
        telefono: '555-1234',
        correo: 'proveedor1@example.com'),
    Proveedor(
        idProveedor: '002',
        telefono: '555-5678',
        correo: 'proveedor2@example.com'),
    Proveedor(
        idProveedor: '003',
        telefono: '555-9012',
        correo: 'proveedor3@example.com'),
    // Agregar dos proveedores más
    Proveedor(
        idProveedor: '004',
        telefono: '555-3456',
        correo: 'proveedor4@example.com'),
    Proveedor(
        idProveedor: '005',
        telefono: '555-7890',
        correo: 'proveedor5@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Proveedores'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: proveedores.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID Proveedor: ${proveedores[index].idProveedor}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Divider(color: Colors.blue),
                        Text(
                          'Teléfono: ${proveedores[index].telefono}',
                          style: TextStyle(fontSize: 14),
                        ),
                        Divider(color: Colors.blue),
                        Text(
                          'Correo: ${proveedores[index].correo}',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Citlali Miscles 1264',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
