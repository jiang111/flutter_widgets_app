import 'package:flutter_widgets_app/data/generate_utils.dart';

class ParentList {
  static List<ParentItem> list = List<ParentItem>();

  static List<ParentItem> buildParentList() {
    if (list.isEmpty) {
      list.addAll(GenerateUtils().list);
    }

    return list;
  }

  static List<ChildItem> getChildList(int parentID) {
    return GenerateUtils().maps[parentID];
  }
}

class ChildItem {
  String _title;
  String _desc;
  String _url;
  String _imgUrl;
  int _parentID;
  String bannerTitle;

  ChildItem(this._title, this._desc, this._url, this._imgUrl, this._parentID);


  ChildItem.name(this._title, this._desc, this._url, this._imgUrl,
      this._parentID, this.bannerTitle);

  int get parentID => _parentID;

  set parentID(int value) {
    _parentID = value;
  }

  String get imgUrl => _imgUrl;

  set imgUrl(String value) {
    _imgUrl = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get desc => _desc;

  set desc(String value) {
    _desc = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}

class ParentItem {
  String _title;
  String _tips;
  String _url;
  String _imgUrl;
  int _id;

  ParentItem(this._title, this._tips, this._url, this._imgUrl, this._id);

  String get tips => _tips;

  set tips(String value) {
    _tips = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get imgUrl => _imgUrl;

  set imgUrl(String value) {
    _imgUrl = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
