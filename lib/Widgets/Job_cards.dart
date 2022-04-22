import 'package:flutter/material.dart';

class JobCards extends StatelessWidget {
  final String job_name;
  final String company_name;
  final String requirements;

  const JobCards(
      {Key? key,
      required this.job_name,
      required this.company_name,
      required this.requirements})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(job_name);
      },
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  job_name,
                  style: const TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  company_name,
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Requirements',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  requirements,
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black54),
                )
              ],
            )),
      ),
    );
  }
}
