class DashProfile {
  const DashProfile(
      {
        required this.id,
        required this.name,
        required this.university,
        required this.support_area,
        required this.description,
        required this.location,
        required this.hourRate,
        required this.total_service,
        required this.total_income,

        required this.images,

  });

  final String id;
  final String name; // any bangladeshi or indian name
  final String university; // any european university
  final String support_area; // any university or country within 7 letter
  final String description; // shortly describe withing 5lines. describre about how you are come to abroad and your expertise field.
  final String location; // any european country
  final String hourRate; // 10 to 100
  final String total_service; // 0 to 200
  final String total_income; // 100 to 50000
  final List<String> images; // any network image link list.
}




