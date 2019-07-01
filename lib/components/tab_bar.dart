import 'package:flutter/material.dart';
import 'package:xinhong_app/style/style.dart';

class TabBarWidget extends StatefulWidget {
  static const int BOTTOM_TAB = 1;

  static const int TOP_TAB = 2;

  final int type;
  final int initalIndex;
  final bool isNeverScroll;
  final List<Widget> tabItems;
  final List<Widget> tabViews;
  final Widget title;
  final Widget drawer;
  final Widget floatingActionButton;
  final TarWidgetControl tarWidgetControl;
  final ValueChanged<int> onPageChanged;

  TabBarWidget({
    Key key,
    this.type,
    this.initalIndex,
    this.isNeverScroll,
    this.tabItems,
    this.tabViews,
    this.title,
    this.drawer,
    this.floatingActionButton,
    this.tarWidgetControl,
    this.onPageChanged,
  }) : super(key: key);

  @override
  _TabBarWidgetState createState() =>_TabBarWidgetState();
  
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {

  PageController _pageController;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _pageController=PageController(initialPage: widget.initalIndex);
    _tabController =TabController(vsync: this,initialIndex: widget.initalIndex, length: widget.tabItems.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
 
    if (widget.type == TabBarWidget.TOP_TAB) {
      return Scaffold(
        floatingActionButton:
            SafeArea(child: widget.floatingActionButton ?? Container()),
        persistentFooterButtons:
            widget.tarWidgetControl == null ? [] : widget.tarWidgetControl.footerButton,
        appBar: AppBar(
          title: widget.title,
          backgroundColor:  Theme.of(context).primaryColor,
          bottom: TabBar(
              tabs: widget.tabItems,
              controller: _tabController,
              indicator:BoxDecoration(),
              onTap: (index) {
                if(_tabController.indexIsChanging){
                   widget.onPageChanged?.call(index);
                   _pageController
                    .jumpTo(MediaQuery.of(context).size.width * index);
                }
              }),
        ),
        body: PageView(
          controller: _pageController,
          children: widget.tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
            widget.onPageChanged?.call(index);
          },
        ),
      );
    }
    return Scaffold(
      drawer: widget.drawer,
      appBar: null!=widget.title?new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: widget.title,
      ):null,
      body: new PageView(
        controller: _pageController,
        children: widget.tabViews,
        physics: widget.isNeverScroll?NeverScrollableScrollPhysics():null,
        onPageChanged: (index) {
            _tabController.animateTo(index);
            widget.onPageChanged?.call(index);
        },
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new SafeArea(
          child: new TabBar(
              controller: _tabController,
              tabs: widget.tabItems,
              indicator: BoxDecoration(),
              labelColor: Color(ThemeColors.action),
              labelStyle: ThemeTextStyle.minText,
              unselectedLabelStyle: ThemeTextStyle.minText,
              unselectedLabelColor:Color(ThemeColors.mainTextColor),
              onTap: (index) {
                 if(_tabController.indexIsChanging){
                    widget.onPageChanged?.call(index);
                    _pageController
                        .jumpTo(MediaQuery.of(context).size.width * index);
                 }
              }),
        ),
      ),
    );
  }
}

class TarWidgetControl {
  List<Widget> footerButton = [];
}
