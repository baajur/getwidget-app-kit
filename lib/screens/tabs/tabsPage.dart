import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: GFColors.getGFColor(GFColor.success),
          ),
        ),
        title: Text(
          'Tabs',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: GFSegmentTabs(
              tabController: tabController,
//              height: 38.0,
              width: 280.0,
              initialIndex: 0,
              length: 4,
              tabs: <Widget>[
                Text(
                  "Icons1",
                ),
                Tab(
                  child: Text(
                    "Icons2",
                  ),
                ),
                Tab(
                  child: Text(
                    "Label1",
                  ),
                ),
                Tab(
                  child: Text(
                    "Label2",
                  ),
                ),
              ],
              tabBarColor: GFColors.getGFColor(GFColor.light),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: GFColors.getGFColor(GFColor.white),
              unselectedLabelColor: GFColors.getGFColor(GFColor.dark),
              indicator: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: GFColors.getGFColor(GFColor.success),
                    width: 3.0,
                  ),
                ),
//                borderRadius: BorderRadius.circular(2.0)
              ),
              indicatorPadding: EdgeInsets.all(8.0),
              indicatorWeight: 2.0,
              border: Border.all(color: Colors.white, width: 2.0),
            ),
//
//
          ),
          Container(
            height: MediaQuery.of(context).size.height - 140,
            child: GFTabBarView(controller: tabController, children: [
              Container(
                  height: 30,
                  color: GFColors.getGFColor(GFColor.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GFTabBar(
                        initialIndex: 0,
                        length: 4,
                        controller: tabController,
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.home,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.music_note,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.games,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.notifications,
                            ),
                          ),
//                            GFIconButton(
//                              icon: Icon(Icons.home,),
//                              onPressed: (){},
//                            ),
                        ],
                        indicatorColor: GFColors.getGFColor(GFColor.success),
//        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: GFColors.getGFColor(GFColor.success),
                        labelPadding: EdgeInsets.all(8.0),
                        tabBarColor: GFColors.getGFColor(GFColor.dark),
                        unselectedLabelColor:
                            GFColors.getGFColor(GFColor.white),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'OpenSansBold',
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'OpenSansBold',
                        ),
                      ),
                    ],
                  )),
              Container(
                  height: 30,
                  color: GFColors.getGFColor(GFColor.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: GFColors.getGFColor(GFColor.white),
                            border: Border(
                                top: BorderSide(
                                    color:
                                        GFColors.getGFColor(GFColor.light)))),
                      ),
                      GFTabBar(
                        initialIndex: 0,
                        length: 4,
                        controller: tabController,
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.home,
                            ),
                          ),
                          Tab(
                            icon: Icon(Icons.music_note),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.games,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.notifications,
                            ),
                          ),
                        ],
                        indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: GFColors.getGFColor(GFColor.success),
                        labelPadding: EdgeInsets.all(8.0),
                        tabBarColor: GFColors.getGFColor(GFColor.white),
                        unselectedLabelColor:
                            GFColors.getGFColor(GFColor.light),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'OpenSansBold',
                        ),

                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'OpenSansBold',
                        ),
                      ),
                    ],
                  )),
              Container(
                  height: 50,
                  color: GFColors.getGFColor(GFColor.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: GFColors.getGFColor(GFColor.white),
                            border: Border(
                                top: BorderSide(
                                    color:
                                        GFColors.getGFColor(GFColor.light)))),
                      ),
                      GFTabBar(
                        initialIndex: 0,
                        length: 4,
                        controller: tabController,
                        tabs: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.home,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.music_note,
                                  color: GFColors.getGFColor(GFColor.light)),
                              Text(
                                'Music',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.games,
                              ),
                              Text(
                                'Games',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.notifications,
                              ),
                              Text(
                                'Notifications',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ],
                        indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: GFColors.getGFColor(GFColor.success),
                        labelPadding: EdgeInsets.all(8.0),
                        tabBarColor: GFColors.getGFColor(GFColor.dark),
                        unselectedLabelColor:
                            GFColors.getGFColor(GFColor.light),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'OpenSansBold',
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'OpenSansBold',
                        ),
                      ),
                    ],
                  )),
              Container(
                  height: 50,
                  color: GFColors.getGFColor(GFColor.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: GFColors.getGFColor(GFColor.white),
                            border: Border(
                                top: BorderSide(
                                    color:
                                        GFColors.getGFColor(GFColor.light)))),
                      ),
                      GFTabBar(
                        initialIndex: 0,
                        length: 4,
                        controller: tabController,
                        tabs: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.home,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.music_note,
                              ),
                              Text(
                                'Music',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.games,
                              ),
                              Text(
                                'Games',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.notifications,
                              ),
                              Text(
                                'Notifications',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ],
                        indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: GFColors.getGFColor(GFColor.success),
                        labelPadding: EdgeInsets.all(8.0),
                        tabBarColor: GFColors.getGFColor(GFColor.white),
                        unselectedLabelColor:
                            GFColors.getGFColor(GFColor.light),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'OpenSansBold',
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Colors.black,
                          fontFamily: 'OpenSansBold',
                        ),
                      ),
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
