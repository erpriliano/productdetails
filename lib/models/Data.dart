class Data {
  String _imgUrl;

  Data(this._imgUrl);

  String get imgUrl => _imgUrl;
}

class DataRepo {
  List<Data> fetchAll() {
    return [
      Data('assets/images/img0.jpeg'),
      Data('assets/images/img1.jpeg'),
      Data('assets/images/img2.jpeg'),
      Data('assets/images/img3.jpeg'),
      Data('assets/images/img4.jpg'),
      Data('assets/images/img5.jpeg'),
    ];
  }
}