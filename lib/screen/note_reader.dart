// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/style/appstyle.dart';

class NoteReaderScreen extends StatefulWidget {
  NoteReaderScreen(this.doc, {Key? key}) : super(key: key);
  QueryDocumentSnapshot doc;

  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc["color_id"];
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.doc["notes_title"],
            style: AppStyle.mainTitle,
          ),
          SizedBox(height: 4.0),
          Text(
            widget.doc["creation_date"],
            style: AppStyle.dateTitle,
          ),
          SizedBox(height: 8.0),
          Text(
            widget.doc["note_content"],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
