import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget {
  final String heroTag;
  final String title;
  final Widget description;
  final Widget goal;
  final Widget code;
  final Widget tricks;
  final Widget example;

  WidgetScreen(
      {@required this.heroTag,
      @required this.title,
      @required this.description,
      @required this.goal,
      @required this.code,
      @required this.tricks,
      @required this.example});

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
                height: 40,
              ),
              _buildDescription(context),
              Container(
                height: 16,
              ),
              _buildGoal(context),
              Container(
                height: 16,
              ),
              _buildCode(context),
              Container(
                height: 16,
              ),
              /*_buildTricks(context),
              Container(
                height: 16,
              ),*/
              _buildExample(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: _buildTitle(context, 'Description', Icons.description),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: description,
        ),
      ],
    );
  }

  Widget _buildGoal(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: _buildTitle(context, 'Goal', Icons.lightbulb_outline),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: goal,
        ),
      ],
    );
  }

  Widget _buildCode(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: _buildTitle(context, 'Code', Icons.code),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: code,
        ),
      ],
    );
  }

  Widget _buildTricks(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: _buildTitle(context, 'Tricks', Icons.flash_on),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: tricks,
        ),
      ],
    );
  }

  Widget _buildExample(BuildContext context) {
    return ExpansionTileCard(
      borderRadius: BorderRadius.circular(5),
      title: _buildTitle(context, 'Example', Icons.image),
      children: <Widget>[
        Divider(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: example,
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context, String titleText, IconData icon) {
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
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
