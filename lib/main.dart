import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:bottom_nav_bar/tabs/first.dart';
import 'package:bottom_nav_bar/tabs/second.dart';
import 'package:bottom_nav_bar/tabs/third.dart';

void main() => runApp(const MyApp());

//create a link between each item in _kpages and the tab it will display

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'My Bottom Convex Nav Bar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Title
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: _title,
        // Home
        home: const SafeArea(top: true, bottom: false, child: MyHome()));
  }
}

//TODO: Share the current index's value with other pages

const _kTabs = <String, IconData>{
  'Settings': Icons.settings,
  'Relays': Icons.apps,
  'Info': Icons.info_outline,
};
const _kTabsPages = <Widget>[
  FirstTab(),
  SecondTab(),
  ThirdTab(),
];

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  MyHomeState createState() => MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> {
  final TabStyle _tabStyle = TabStyle.react;

  //link the current index with its icon and make it accessible to FirstTab, SecondTab, ThirdTab

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabsPages.length,
      initialIndex: _currentIndex,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
            _currentIndex = tabController.index;
          }
        });
        return Scaffold(
          body: _kTabsPages[_currentIndex],
          // Add a tab bar view, which will render the tab we are on
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: ThemeData.dark().primaryColor,
            // Add any widgets you want between the lines
            items: _kTabs.entries
                .map((entry) => TabItem(icon: entry.value, title: entry.key))
                .toList(),
            // An optional background color for the [Scaffold]
            //backgroundColor: Colors.grey.shade50,
            style: _tabStyle,
            // onTap callback
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        );
      }),
    );
  }
}





 



//   @override
//   Widget build(BuildContext context) {
//     return _buildTabController(context);
//   }

//   Widget _buildTabController(BuildContext context) {
//     return DefaultTabController(
//       length: _kTabsPages.length,
//       initialIndex: _kTabsPages.length ~/ 2,
//       child: Builder(builder: (BuildContext context) {
//         final TabController tabController = DefaultTabController.of(context)!;
//         tabController.addListener(() {
//           if (!tabController.indexIsChanging) {
//             _currentIndex = tabController.index;
//             // Your code goes here.
//             // To get index of current tab use tabController.index

            

//           }
//         });
//         return Scaffold(
//           body: const TabBarView(
//             children: _kTabsPages,
//             // set the controller
//           ),
//           // Set the bottom navigation bar
//           bottomNavigationBar: _convexNavigationBar(context),
//         );
//       }),
//     );
//   }

//   Widget _convexNavigationBar(BuildContext context) {
//     return ConvexAppBar.badge(
//       //badges
//       const <int, dynamic>{1: '2'},
//       style: _tabStyle,
//       backgroundColor: ThemeData.dark().primaryColor,
//       items: <TabItem>[
//         for (final entry in _kTabs.entries)
//           TabItem(icon: entry.value, title: entry.key),
//         // create a getter for the current tab's icon and title
//       ],
//       onTap: (int index) {},
//     );
//   }
// }


// create a class that will return the currently selected tab's icon to other pages

