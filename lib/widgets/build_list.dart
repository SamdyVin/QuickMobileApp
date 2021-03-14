import 'package:flutter/material.dart';
import 'package:quick/models/services.dart';
import 'package:quick/screens/detail.dart';
import 'package:quick/screens/service_detail.dart';

class BuildList extends StatelessWidget {
  final String title;
  final List items;
  final Widget icon;
  final bool shortList, isService;

  const BuildList({
    this.title,
    this.items,
    this.icon,
    this.shortList = false,
    this.isService = false,
  });

  @override
  Widget build(BuildContext context) {
    if (title == null) {
      return _buildContainer();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: icon == null
                ? Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  )
                : Row(
                    children: [
                      icon,
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
          ),
          _buildContainer(),
        ],
      );
    }
  }

  Container _buildContainer() {
    return Container(
      height: 200,
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return checkDetail(context, index);
          },
          itemCount: items.length,
        ),
      ),
    );
  }

  checkDetail(BuildContext context, int index) {
    if (!isService) {
      return InkWell(
        onTap: () {
          _navigationHanlder(context, services[index]);
        },
        child: Container(
          width: MediaQuery.of(context).size.width / (shortList ? 2 : 1.06),
          margin: EdgeInsets.only(right: marginHandler(index), top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
            image: DecorationImage(
              image: NetworkImage(
                items[index].image,
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          _navigationHanlder(context, services[index]);
        },
        child: Container(
          width: MediaQuery.of(context).size.width / (shortList ? 2 : 1.06),
          margin: EdgeInsets.only(right: marginHandler(index), top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
            image: DecorationImage(
              image: NetworkImage(
                items[index].image,
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Theme.of(context).highlightColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Text(
                  items[index].title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  double marginHandler(int index) => (index != items.length - 1 ? 10 : 0);

  void _navigationHanlder(BuildContext context, dynamic item) {
    if (isService) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ServiceDetailScreen(
            service: item,
          ),
        ),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => DetailScreen(
            item: item,
          ),
        ),
      );
    }
  }
}
