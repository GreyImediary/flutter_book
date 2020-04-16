import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget {
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
                  tag: '',
                  child: Text(
                    'Widget title',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              Container(
                height: 40,
              ),
              buildDescription(context),
              Container(height: 16,),
              buildGoal(context),
              Container(height: 16,),
              buildCode(context),
              Container(height: 16,),
              buildTricks(context),
              Container(height: 16,),
              buildExample(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDescription(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: buildTitle(context, 'Description', Icons.description),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: Column(),
        ),
      ],
    );
  }

  Widget buildGoal(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: buildTitle(context, 'Goal', Icons.lightbulb_outline),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: Column(),
        ),
      ],
    );
  }

  Widget buildCode(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: buildTitle(context, 'Code', Icons.code),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: Column(),
        ),
      ],
    );
  }

  Widget buildTricks(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: buildTitle(context, 'Tricks', Icons.flash_on),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: Column(),
        ),
      ],
    );
  }


  Widget buildExample(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: buildTitle(context, 'Example', Icons.image),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: Column(),
        ),
      ],
    );
  }

  Widget buildTitle(BuildContext context, String titleText, IconData icon) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Theme.of(context).accentColor,
        ),
        Container(
          width: 8,
        ),
        Text(
            titleText,
            style: Theme.of(context).textTheme.headline6,),
      ],
    );
  }
}
