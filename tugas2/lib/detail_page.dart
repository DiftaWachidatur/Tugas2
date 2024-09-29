import 'package:flutter/material.dart';
import 'edit_page.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Tugas'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditPage(task: 'Tugas 1')),
              );
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => EditPage(task: 'Tugas 1')),
).then((updatedTask) {
  if (updatedTask != null) {
    // Handle the updated task here, e.g. update the UI
  }
});

            },
          ),
        ],
      ),
      body: Center(
        child: Text('Ini adalah detail dari Tugas 1.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // Kembali ke halaman sebelumnya
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
