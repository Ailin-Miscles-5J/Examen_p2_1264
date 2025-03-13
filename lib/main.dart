import 'package:flutter/material.dart';

class Proveedor {
  final int idProveedor;
  final String telefono;
  final String correo;
  final String ciudad;
  final String productoQueVende;
  final double precio;

  Proveedor({
    required this.idProveedor,
    required this.telefono,
    required this.correo,
    required this.ciudad,
    required this.productoQueVende,
    required this.precio,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Proveedor> proveedores = [
    Proveedor(
      idProveedor: 1,
      telefono: '555-1234',
      correo: 'proveedor1@example.com',
      ciudad: 'Ciudad de México',
      productoQueVende: 'Producto A',
      precio: 100.0,
    ),
    Proveedor(
      idProveedor: 2,
      telefono: '555-5678',
      correo: 'proveedor2@example.com',
      ciudad: 'Guadalajara',
      productoQueVende: 'Producto B',
      precio: 150.0,
    ),
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
              child: ListView.separated(
                padding: EdgeInsets.all(16),
                itemCount: proveedores.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  final proveedor = proveedores[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Color(0xfff3bafd)
                          : Color(0xfff3bafd),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID: ${proveedor.idProveedor}'),
                        Text('Teléfono: ${proveedor.telefono}'),
                        Text('Correo: ${proveedor.correo}'),
                        Text('Ciudad: ${proveedor.ciudad}'),
                        Text('Producto: ${proveedor.productoQueVende}'),
                        Text(
                            'Precio: \$${proveedor.precio.toStringAsFixed(2)}'),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Citlali Miscles 1264',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
