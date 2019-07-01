import 'package:flutter/material.dart';
import 'package:xinhong_app/components/tab_bar.dart';
import 'package:xinhong_app/style/style.dart';
import 'package:xinhong_app/pages/home.dart';
import 'package:xinhong_app/pages/address_book.dart';
import 'package:xinhong_app/pages/message.dart';
import 'package:xinhong_app/pages/my.dart';
import 'package:xinhong_app/pages/schedule.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int activeIndex = 2;

  List<Widget> tabs = [];

  //生成tab
  _renderTab(icon, text) {
    return Padding(
      padding: EdgeInsets.only(top: 4.0),
      child: Tab(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 24.0,
            ),
            new Padding(padding: EdgeInsets.only(top: 4.0)),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }

  _renderTabs() {
    tabs = [
      _renderTab(
          activeIndex == 0
              ? CustomIcons.app_message_fill
              : CustomIcons.app_message,
          '消息'),
      _renderTab(
          activeIndex == 1
              ? CustomIcons.app_schedule_fill
              : CustomIcons.app_schedule,
          '日程'),
      _renderTab(
          activeIndex == 2 ? CustomIcons.app_work_fill : CustomIcons.app_work,
          '工作台'),
      _renderTab(
          activeIndex == 3
              ? CustomIcons.app_addresslist_fill
              : CustomIcons.app_addresslist,
          '通讯录'),
      _renderTab(
          activeIndex == 4 ? CustomIcons.app_my_fill : CustomIcons.app_my, '我的')
    ];
  }

  _onPageChaned(index) {
    setState(() {
      activeIndex = index;
      _renderTabs();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _renderTabs();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      type: TabBarWidget.BOTTOM_TAB,
      tabItems: tabs,
      initalIndex: 2,
      tabViews: <Widget>[
        MessagePage(),
        SchedulePage(),
        HomePage(),
        AddressBookPage(),
        MyPage()
      ],
      isNeverScroll: true,
      onPageChanged: (index) {
        _onPageChaned(index);
      },
    );
  }
}
