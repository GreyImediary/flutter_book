import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatelessWidget {
  final String title;
  final String desc;
  final String route;

  Category(this.title, this.desc, this.route);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Material(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: _categoryTitleDesc(context),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: _categoryButton(context)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _categoryTitleDesc(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              height: 5,
            ),
            Text(
              desc,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      );

  Widget _categoryButton(BuildContext context) => Material(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "VISIT",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .apply(fontWeightDelta: 2),
            ),
          ),
        ),
      );
}
