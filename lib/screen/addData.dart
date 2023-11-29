import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class addDatas extends StatefulWidget {
  const addDatas({super.key});

  @override
  _addDatasState createState() => _addDatasState();
}

class _addDatasState extends State<addDatas> {
  String _name = '';
  String _price = '';
  String _imageUrl = ''; // Added image URL state
  String dropdownValue = 'Appetizer';
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _getImageFromGallery() async {
    // Check and request storage permission
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
      status = await Permission.storage.status;
      if (!status.isGranted) {
        // Handle the case where the user denied storage permission
        return;
      }
    }

    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageUrl = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukan Nama Produk',
                labelText: 'Nama Produk',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukan Harga Produk',
                labelText: 'Harga Produk',
              ),
              onChanged: (String value) {
                setState(() {
                  _price = value;
                });
              },
            ),
            const SizedBox(height: 20),
            // Insert image here
            DropdownButtonFormField<String>(
              value: dropdownValue,
              decoration: const InputDecoration(
                labelText: 'Select Category',
                border: OutlineInputBorder(),
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: <String>['Appetizer', 'Snack', 'Dessert', 'Seafood']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukan URL Gambar',
                labelText: 'Link Gambar',
              ),
              onChanged: (String value) {
                setState(() {
                  _imageUrl = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const Text('OR'),
            ElevatedButton(
              onPressed: _getImageFromGallery,
              child: const Text('Choose Image from Gallery'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama Produk : $_name'),
                          Text('Harga Produk : $_price'),
                          Text('Kategori :  $dropdownValue'),
                          if (_imageUrl.isNotEmpty)
                            Image.file(
                              File(_imageUrl),
                              width: 100,
                              height: 100,
                            ),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF6F6F6),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
