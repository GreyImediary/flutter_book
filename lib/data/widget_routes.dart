
import 'package:flutter_book/widgets/animations/animated_opacity.dart';
import 'package:flutter_book/widgets/animations/animated_size.dart';
import 'package:flutter_book/widgets/assets_widgets/icon.dart';
import 'package:flutter_book/widgets/basics/flutter_logo.dart';
import 'package:flutter_book/widgets/basics/placeholder.dart';
import 'package:flutter_book/widgets/basics/row_widget.dart';
import 'package:flutter_book/widgets/basics/text_widget.dart';
import 'package:flutter_book/widgets/cupertino_widgets/cupertino_button.dart';
import 'package:flutter_book/widgets/cupertino_widgets/cupertino_indicator.dart';
import 'package:flutter_book/widgets/cupertino_widgets/cupertino_slider.dart';
import 'package:flutter_book/widgets/material_widgets/circular_progress_indicator.dart';
import 'file:///C:/Android/Projects/flutter_book/lib/widgets/cupertino_widgets/cupertino_switch.dart';
import 'package:flutter_book/widgets/material_widgets/linear_progress_indicator.dart';
import 'package:flutter_book/widgets/material_widgets/checkbox.dart';
import 'package:flutter_book/widgets/material_widgets/chip.dart';
import 'package:flutter_book/widgets/material_widgets/icon_button.dart';
import 'package:flutter_book/widgets/material_widgets/image.dart';
import 'package:flutter_book/widgets/material_widgets/outline_button.dart';
import 'package:flutter_book/widgets/material_widgets/radio.dart';
import 'package:flutter_book/widgets/material_widgets/raised_button.dart';
import 'package:flutter_book/widgets/material_widgets/slider.dart';
import 'package:flutter_book/widgets/material_widgets/switch.dart';
import 'package:flutter_book/widgets/material_widgets/tooltip.dart';
import 'package:flutter_book/widgets/material_widgets/flat_button.dart';

final widgetRoutes = {
  '/Tooltip': (context) => TooltipWidget(),
  '/Image': (context) => ImageWidget(),
  '/FlatButton': (context) => FlatButtonWidget(),
  '/OutlineButton': (context) => OutlineButtonWidget(),
  '/RaisedButton': (context) => RaisedButtonWidget(),
  '/IconButton': (context) => IconButtonWidget(),
  '/Checkbox': (context) => CheckboxWidget(),
  '/Switch': (context) => SwitchWidget(),
  '/Slider': (context) => SliderWidget(),
  '/Radio': (context) => RadioWidget(),
  '/Chip': (context) => ChipWidget(),
  '/CircularProgressIndicator': (context) => CircularProgressIndicatorWidget(),
  '/LinearProgressIndicator': (context) => LinearProgressIndicatorWidget(),
  '/Icon': (context) => IconWidget(),
  '/CupertinoSwitch': (context) => CupSwitchWidget(),
  '/Placeholder': (context) => PlaceholderWidget(),
  '/FlutterLogo': (context) => FlutterLogoWidget(),
  '/CupertinoButton': (context) => CupButtonWidget(),
  '/Text': (context) => TextWidgetExample(),
  '/Row': (context) => RowWidget(),
  '/CupertinoActivityIndicator': (context) => CupertinoIndicatorWidget(),
  '/CupertinoSlider': (context) => CupSliderWidget(),
  '/AnimatedOpacity': (context) => AnimOpacityWidget(),
  '/AnimatedSize': (context) => AnimSizeWidget()
};