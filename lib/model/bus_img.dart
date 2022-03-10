// ignore_for_file: unnecessary_getters_setters, non_constant_identifier_names

class BusImg {
  final int id;
  final String url;
  final int busId;

  BusImg(this.id, this.url, this.busId);

  BusImg.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'],
        busId = json['busEntityId'];
  Map<String, dynamic> toJson() => {'id': id, 'url': url, 'busEntityId': busId};
}
