import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notesapp/screen/note_reader.dart';
import 'package:notesapp/widgets/notes_card.dart';

class AllCard extends StatelessWidget {
  const AllCard({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("Notes").snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasData) {
          return GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: snapshot.data!.docs
                .map(
                  (note) => noteCard(
                    () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoteReaderScreen(note),
                        ),
                      ),
                    },
                    note,
                  ),
                )
                .toList(),
          );
        }
        return Text(
          "There's No Notees",
          style: GoogleFonts.nunito(color: Colors.white),
        );
      },
    );
  }
}
