import 'package:flutter/material.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';

class CustomText2 extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final int maxLines;
  final String seeMoreText;
  final String seeLessText;

  const CustomText2({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    this.textAlign,
    this.maxLines = 2, // Limiting to 2 lines by default
    this.seeMoreText = '...See More',
    this.seeLessText = 'See Less',
  });

  @override
  _CustomText2State createState() => _CustomText2State();
}

class _CustomText2State extends State<CustomText2> {
  bool _showFullText = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        TextSpan textSpan = TextSpan(
          text: widget.text,
          style: TextStyle(
            fontSize: widget.fontSize,
            letterSpacing: -1,
            color: widget.color,
            fontFamily: "NunitoSans",
            fontWeight: widget.fontWeight,
          ),
        );

        TextPainter textPainter = TextPainter(
          text: textSpan,
          maxLines: widget.maxLines,
          textAlign: widget.textAlign ?? TextAlign.start,
          textDirection: TextDirection.ltr,
        );

        textPainter.layout(maxWidth: constraints.maxWidth);

        bool isTextOverflow = textPainter.didExceedMaxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              textSpan,
              textAlign: widget.textAlign,
              maxLines: _showFullText ? null : widget.maxLines,
              // overflow: TextOverflow.ellipsis,
            ),
            if (isTextOverflow)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showFullText = !_showFullText;
                  });
                },
                child: Text(
                  _showFullText ? widget.seeLessText : widget.seeMoreText,
                  style: const TextStyle(
                    color: baseColor, // Change this color as needed
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
