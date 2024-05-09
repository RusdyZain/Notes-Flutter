import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/style/appstyle.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[doc["color_id"]],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["notes_title"],
            style: AppStyle.mainTitle,
          ),
          SizedBox(height: 4.0),
          Text(
            doc["creation_date"],
            style: AppStyle.dateTitle,
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final text = doc["note_content"];
                final style = AppStyle.mainContent;
                final textSpan = TextSpan(text: text, style: style);
                final textPainter = TextPainter(
                  text: textSpan,
                  maxLines: 2,
                  textDirection: TextDirection.ltr,
                );
                textPainter.layout(maxWidth: constraints.maxWidth);

                if (textPainter.didExceedMaxLines) {
                  int endPosition = textPainter
                      .getPositionForOffset(
                          Offset(constraints.maxWidth, textPainter.size.height))
                      .offset;

                  String displayedText = text.substring(0, endPosition);
                  if (displayedText.length < text.length) {
                    displayedText = displayedText.trimRight() + '...';
                  }
                  return Text(displayedText, style: style);
                } else {
                  return Text(text, style: style);
                }
              },
            ),
          ),
        ],
      ),
    ),
  );
}
