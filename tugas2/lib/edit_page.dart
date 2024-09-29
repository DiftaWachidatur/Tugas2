import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  final String task;

  EditPage({required this.task});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: task);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Tugas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Edit Tugas'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kembali ke halaman sebelumnya dan mengganti data
                Navigator.pop(context, controller.text);
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
