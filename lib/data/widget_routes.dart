
import 'package:flutter_book/widgets/material_widgets/icon_button.dart';
import 'package:flutter_book/widgets/material_widgets/image.dart';
import 'package:flutter_book/widgets/material_widgets/outline_button.dart';
import 'package:flutter_book/widgets/material_widgets/raised_button.dart';
import 'package:flutter_book/widgets/material_widgets/tooltip.dart';
import 'package:flutter_book/widgets/material_widgets/flat_button.dart';

final widgetRoutes = {
  '/Tooltip': (context) => TooltipWidget(),
  '/Image': (context) => ImageWidget(),
  '/FlatButton': (context) => FlatButtonWidget(),
  '/OutlineButton': (context) => OutlineButtonWidget(),
  '/RaisedButton': (context) => RaisedButtonWidget(),
  '/IconButton': (context) => IconButtonWidget()
};