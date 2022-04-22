class JobDetail {
  final String job_name;
  final String company_name;
  final String requirements;

  JobDetail({
    required this.job_name,
    required this.company_name,
    required this.requirements,
  });
}

class JobDetailsInfo {
  final List<JobDetail> _list_of_jobs = [
    JobDetail(
      job_name: 'Product designer',
      company_name: 'Samsung Inc.',
      requirements: 'B-Tech graduate\n'
          'Minimum CGPA of 8.5\n'
          'Knowledge over OOPS, DBMS',
    ),
    JobDetail(
      job_name: 'Product designer',
      company_name: 'Samsung Inc.',
      requirements: 'B-Tech graduate\n'
          'Minimum CGPA of 8.5\n'
          'Knowledge over OOPS, DBMS',
    ),
    JobDetail(
      job_name: 'Product designer',
      company_name: 'Samsung Inc.',
      requirements: 'B-Tech graduate\n'
          'Minimum CGPA of 8.5\n'
          'Knowledge over OOPS, DBMS',
    ),
    JobDetail(
      job_name: 'Product designer',
      company_name: 'Samsung Inc.',
      requirements: 'B-Tech graduate\n'
          'Minimum CGPA of 8.5\n'
          'Knowledge over OOPS, DBMS',
    ),
    JobDetail(
      job_name: 'Product designer',
      company_name: 'Samsung Inc.',
      requirements: 'B-Tech graduate\n'
          'Minimum CGPA of 8.5\n'
          'Knowledge over OOPS, DBMS',
    ),
  ];

  List<JobDetail> get listOfJobs {
    return [..._list_of_jobs];
  }
}
