import 'package:flutter/material.dart';
import 'package:flutter_book/data/widget_data.dart';

class WidgetItem extends StatelessWidget {
  final WidgetData data;

  WidgetItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        color: Theme
            .of(context)
            .primaryColorDark,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => Navigator.of(context).pushNamed(data.route),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hero(
                          tag: data.heroTag,
                          child: Text(
                            data.title,
                            style:
                            Theme
                                .of(context)
                                .textTheme
                                .headline6,
                          ),
                        ),
                        Container(height: 8,),
                        Text(
                          data.desc,
                          style:
                          Theme
                              .of(context)
                              .textTheme
                              .bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        size: MediaQuery
                            .of(context)
                            .size
                            .width / 10,
                        color: Theme
                            .of(context)
                            .accentColor,
                      ),
                    )
                )
              ],
            )),
      ),
    );
  }
}
