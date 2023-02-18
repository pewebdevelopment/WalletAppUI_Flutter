class Activity {
  String title;

  bool isIncome;

  double total;

  DateTime createdAt;

  Activity({
    required this.title,
    required this.isIncome,
    required this.total,
    required this.createdAt,
  });
}

final List<Activity> recentActivity = [
  Activity(
    title: 'Mike Rine',
    isIncome: true,
    total: 250,
    createdAt: DateTime.now().subtract(
      const Duration(hours: 2),
    ),
  ),
  Activity(
    title: 'Google Drive',
    isIncome: false,
    total: 138.5,
    createdAt: DateTime.now().subtract(
      const Duration(days: 1),
    ),
  ),
  Activity(
    title: 'Casey Smith',
    isIncome: true,
    total: 531,
    createdAt: DateTime.now().subtract(
      const Duration(days: 7),
    ),
  ),
];

final List<Activity> allActivity = [
  Activity(
    title: 'Mike Rine',
    isIncome: true,
    total: 250,
    createdAt: DateTime.now().subtract(
      const Duration(minutes: 1),
    ),
  ),
  Activity(
    title: 'Google Drive',
    isIncome: false,
    total: 138.5,
    createdAt: DateTime.now().subtract(
      const Duration(hours: 2),
    ),
  ),
  Activity(
    title: 'Casey Smith',
    isIncome: true,
    total: 531,
    createdAt: DateTime.now().subtract(
      const Duration(hours: 9),
    ),
  ),
  Activity(
    title: 'Apple Store',
    isIncome: false,
    total: 250,
    createdAt: DateTime(
      2021,
      DateTime.now().month,
      DateTime.now().day - 1,
      11,
      45,
    ),
  ),
  Activity(
    title: 'Pizza Delivery',
    isIncome: false,
    total: 58.90,
    createdAt: DateTime(
      2021,
      DateTime.now().month,
      DateTime.now().day - 1,
      14,
      30,
    ),
  ),
  Activity(
    title: 'Amazon',
    isIncome: false,
    total: 300,
    createdAt: DateTime(
      2021,
      DateTime.now().month,
      DateTime.now().day - 1,
      18,
      28,
    ),
  ),
];
