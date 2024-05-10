import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/screen/homescreen.dart';
import 'package:notesapp/style/appstyle.dart';

class NoteEditorScreen extends StatefulWidget {
  final DocumentSnapshot doc;

  const NoteEditorScreen({Key? key, required this.doc}) : super(key: key);

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.doc['notes_title'];
    _contentController.text = widget.doc['note_content'];
  }

  Future<void> updateNote() async {
    await FirebaseFirestore.instance
        .collection('Notes')
        .doc(widget.doc.id)
        .update({
      'notes_title': _titleController.text,
      'note_content': _contentController.text,
      'creation_date':
          DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()).toString(),
    });
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              color: AppStyle.accentColor,
            ),
            onPressed: updateNote,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            Expanded(
              child: TextField(
                controller: _contentController,
                decoration: InputDecoration(
                  labelText: 'Content',
                ),
                maxLines: null,
                expands: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
