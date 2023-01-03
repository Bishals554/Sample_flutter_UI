class JobList{
  final String imgUrl;
  final String jobTitle;
  final String salary;
  final String compName;
  final String country;

  JobList({
    required this.imgUrl,
    required this.compName,
    required this.country,
    required this.jobTitle,
    required this.salary
});

}


List<JobList> joblist = [
  JobList(
      imgUrl: 'assets/g.png',
      compName: 'Odama Studio',
      country: 'Nepal',
      jobTitle: 'Graphic Design'
      , salary: '\$60-50K/Year'
  ),
  JobList(
      imgUrl: 'assets/mindriser.png',
      compName: 'MindRiser',
      country: 'Nepal',
      jobTitle: 'Flutter'
      , salary: '\$50-70K/Year'
  )

];