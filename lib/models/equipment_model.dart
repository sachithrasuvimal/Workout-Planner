class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutes;
  final double caloriesBurned;
  final bool handOvered;

  const Equipment({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinutes,
    required this.caloriesBurned,
    required this.handOvered,
  });
}
