class Data {
  List? images;
  List? reservTypes;
  String? occasionDetail;
  String? trainerName;
  String? trainerInfo;
  String? address;
  String? interest;
  var date;
  Data(
      {this.address,
      this.images,
      this.occasionDetail,
      this.reservTypes,
      this.trainerInfo,
      this.trainerName,
      this.date,
      this.interest});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      images: json['img'],
      reservTypes: json['reservTypes'],
      occasionDetail: json['occasionDetail'],
      trainerName: json['trainerName'],
      trainerInfo: json['trainerInfo'],
      address: json['address'],
      interest: json['interest'],
      date: json['date'],
    );
  }
}
