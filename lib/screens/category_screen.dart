import 'package:flutter/material.dart';
import 'package:flutter_book/data/widget_data.dart';
import 'package:flutter_book/widgets/category_screen_widgets/widget_item.dart';

class CategoryScreen extends StatelessWidget {
  final String title;
  final String heroTag;
  final List<WidgetData> widgets;

  CategoryScreen(this.title, this.heroTag, this.widgets);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Hero(
                  tag: heroTag,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              Container(
                height: 30,
              ),
             ...widgets.map((e) => WidgetItem(e))
            ],
          ),
        ),
      ),
    );
  }


}
