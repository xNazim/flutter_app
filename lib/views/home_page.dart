import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/views/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String _userToDo = '';
  List todo_list = [];

  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(
      child: Text("CookBook"),
      decoration: BoxDecoration(color: const Color(0xff92BA92)),
    );
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info, color: Color(0xff8D8DAA) ,));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon, color: Color(0xff8D8DAA),),
        title: Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", '/settings'),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Deserts", '/deserts'),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

@override
  void initState() {
  todo_list.addAll(['Buy Crops', 'Buy milk', 'Go to Gym']);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appBarTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todo_list.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todo_list[index]),
              child: Card(
                child: ListTile(
                  title: Text(todo_list[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete_sweep_outlined),
                    color: Colors.teal,
                    onPressed: () {
                      setState(() {
                        todo_list.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  todo_list.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF68989),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Add element'),
                  content: TextField(
                    onChanged: (String value) {
                      _userToDo = value;
                    },
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            todo_list.add(_userToDo);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text('Add'))
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}
