import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/photoview_page.dart';
import 'utils/fcolors.dart';
import 'data/parent_list_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'webview.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _id = 1;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  String title = "flutter widgets";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_edf0f4,
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: buildBody(),
      drawer: buildDrawer(),
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          buildDrawerHead(),
          Expanded(
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll) {
                overScroll.disallowGlow();
              },
              child: ListView.builder(
                  key: new PageStorageKey('feed'),
                  shrinkWrap: true,
                  itemCount: ParentList.buildParentList().length,
                  padding: EdgeInsets.only(
                    top: 15.0,
                  ),
                  addAutomaticKeepAlives: true,
                  itemBuilder: (context, index) {
                    return buildDrawerItem(
                        context, ParentList.buildParentList()[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem(BuildContext context, ParentItem item) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        if (_id != item.id) {
          setState(() {
            title = item.title;
            _id = item.id;
          });
        }
      },
      child: Container(
        color: _id == item.id ? Colors.black12 : Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
            top: 15.0,
            left: 15.0,
            right: 15.0,
            bottom: 15.0,
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  item.title,
                  style: TextStyle(
                    color: color_333333,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  item.tips,
                  style: TextStyle(
                    color: color_939ba4,
                    fontSize: 12.0,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDrawerHead() {
    return Container(
      height: 150.0,
      width: double.infinity,
      color: blue,
      alignment: Alignment.center,
      child: Text(
        "flutter widgets",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
    );
  }

  Widget buildBody() {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overScroll) {
        overScroll.disallowGlow();
      },
      child: ListView.builder(
        itemCount: ParentList.getChildList(_id).length,
        itemBuilder: (context, index) {
          String result;
          String title1;
          if (index > 0) {
            title1 = ParentList.getChildList(_id)[index - 1].bannerTitle;
          }
          String title2 = ParentList.getChildList(_id)[index].bannerTitle;

          if (title1 == title2) {
            result = null;
          } else {
            result = title2;
          }
          return buildItemWithTitle(
              ParentList.getChildList(_id)[index], result);
        },
      ),
    );
  }

  Widget buildItemWithTitle(ChildItem childItem, String title) {
    if (title != null && title.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10.0,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: color_3c3c3c,
                fontSize: 20.0,
              ),
            ),
          ),
          buildItem(childItem),
        ],
      );
    } else {
      return buildItem(childItem);
    }
  }

  Widget buildItem(ChildItem childItem) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      margin: EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 15.0,
        bottom: 15.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
            return WebViewPage(childItem.title, childItem.url);
          }));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PhotoViewPage(childItem.imgUrl);
                }));
              },
              child: CachedNetworkImage(
                imageUrl: childItem.imgUrl,
                width: 100.0,
                height: 100.0,
                placeholder: Image.asset(
                  "assets/images/common.png",
                  width: 100.0,
                  height: 100.0,
                ),
                errorWidget: Image.asset(
                  "assets/images/common.png",
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  childItem.title,
                  style: TextStyle(
                    color: color_333333,
                    fontSize: 16.0,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  childItem.desc,
                  style: TextStyle(
                    color: color_939ba4,
                    fontSize: 14.0,
                  ),
                  maxLines: 3,
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
