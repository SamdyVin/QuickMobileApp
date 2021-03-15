import 'package:flutter/material.dart';
import 'package:quick/data/data.dart';
import 'package:quick/widgets/build_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      drawer: _buildDrawer,
      body: _buildBody,
    );
  }

  get _buildAppBar {
    return AppBar(
      title: Text("Quick"),
    );
  }

  get _buildDrawer {
    return Drawer(
      child: SafeArea(
        child: Text("Here is drawer!"),
      ),
    );
  }

  get _buildBody {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 1.35,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BuildList(
              items: advertise,
            ),
            BuildList(
              title: "Services:",
              items: services,
              shortList: true,
              icon: Icon(Icons.delivery_dining),
              isService: true,
            ),
            BuildList(
              icon: Icon(Icons.event),
              title: "Events:",
              items: events,
            ),
          ],
        ),
      ),
    );
  }
}
