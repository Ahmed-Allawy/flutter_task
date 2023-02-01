class Data {
  List? images;
  List? reservTypes;
  String? occasionDetail;
  String? trainerName;
  String? trainerInfo;
  String? address;
  String? interest;
  Data(
      {this.address,
      this.images,
      this.occasionDetail,
      this.reservTypes,
      this.trainerInfo,
      this.trainerName,
      this.interest});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        images: (json['img'] as List<dynamic>).cast<String>(),
        reservTypes: (json['reservTypes'] as List<dynamic>).cast<String>(),
        occasionDetail: json['occasionDetail'],
        trainerName: json['trainerName'],
        trainerInfo: json['trainerInfo'],
        address: json['address'],
        interest: json['interest']);
  }
}
