import 'package:flutter/material.dart';
import 'package:job/Model/Job_details.dart';

import '../Widgets/Job_cards.dart';

class JobList extends StatelessWidget {
  const JobList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // jobs = JobDetailsInfo()
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xffDD5D00)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xffFD9601)),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      print('User logged out');
                    },
                    icon: Icon(Icons.logout),
                    iconSize: 35,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: JobDetailsInfo().listOfJobs.length,
                itemBuilder: (context, index) {
                  String job_name = JobDetailsInfo().listOfJobs[index].job_name;
                  String company_name =
                      JobDetailsInfo().listOfJobs[index].company_name;
                  String requirements =
                      JobDetailsInfo().listOfJobs[index].requirements;
                  return JobCards(
                      job_name: job_name,
                      company_name: company_name,
                      requirements: requirements);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
