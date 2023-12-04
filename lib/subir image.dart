import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SubirImagen extends StatefulWidget {
  @override
  _SubirImagenState createState() => _SubirImagenState();
}

class _SubirImagenState extends State<SubirImagen> {
  Future<void> subirImagen() async {
    final picker = ImagePicker();
    final imagen = await picker.pickImage(source: ImageSource.gallery);

    final referencia = FirebaseStorage.instance.ref().child('imagenes/');

    if (imagen != null) {
      final tareaSubida = referencia.putFile(File(imagen.path));
      final urlDescarga = await (await tareaSubida).ref.getDownloadURL();
      print('La URL de descarga es: $urlDescarga');
    } else {
      // El usuario canceló la selección de la imagen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange, // Color del botón
          onPrimary: Colors.white, // Color del texto
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Borde redondeado
          ),
        ),
        onPressed: subirImagen,
        child: Text('Subir imagen'),
      ),
    );
  }
}
