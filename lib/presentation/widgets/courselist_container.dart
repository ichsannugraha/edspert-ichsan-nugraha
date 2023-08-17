import 'package:flutter/material.dart';

class CourselistContainer extends StatelessWidget {
  final String? courseTitle;
  final String? courseSubtitle;
  final String? courseImg;
  const CourselistContainer(
      {this.courseTitle, this.courseSubtitle, this.courseImg, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 96,
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 11),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 53,
            height: 53,
            decoration: ShapeDecoration(
              color: const Color(0xFFF3F7F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Image.network(
              courseImg ??
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png',
              height: 26,
              width: 26,
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: 9),
                Expanded(
                  child: Text(courseTitle ?? 'No Title',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    courseSubtitle ?? 'No Subtitle',
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF8E8E8E),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
