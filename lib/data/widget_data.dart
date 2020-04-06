class WidgetData {
  final String title;
  final String desc;
  final String route;
  final String heroTag;

  WidgetData(this.title, this.desc, this.route, this.heroTag);

}

final widgetData = {
  'Accessibility': [
    WidgetData('ExcludeSemantics', 'A widget that drops all the semantics of its descendants.', '/  ExcludeSemantics', 'ExcludeSemantics'),
    WidgetData('MergeSemantics', 'A widget that merges the semantics of its descendants.', '/MergeSemantics', 'MergeSemantics'),
    WidgetData('Semantics', 'A widget that annotates the widget tree with a description of the meaning of the widgets.', '/Semantics', 'Semantics')
  ],
  'Animation and motion': [
    WidgetData('AnimatedBuilder', 'A general-purpose widget for building animations. ', '/AnimatedBuilder', 'AnimatedBuilder'),
    WidgetData('AnimatedContainer', 'A container that gradually changes its values over a period of time.', '/AnimatedContainer', 'AnimatedContainer'),
    WidgetData('AnimatedCrossFade', 'A widget that cross-fades between two given children and animates itself between their sizes.', '/AnimatedCrossFade', 'AnimatedCrossFade'),
    WidgetData('AnimatedDefaultTextStyle', 'Animated version of DefaultTextStyle which automatically transitions the default text style.', '/AnimatedDefaultTextStyle', 'AnimatedDefaultTextStyle'),
    WidgetData('AnimatedListState', 'The state for a scrolling container that animates items when they are inserted or removed.', '/AnimatedListState', 'AnimatedListState'),
    WidgetData('AnimatedModalBarrier', 'A widget that prevents the user from interacting with widgets behind itself.', '/AnimatedModalBarrier', 'AnimatedModalBarrier'),
    WidgetData('AnimatedOpacity', "Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.", '/AnimatedOpacity', 'AnimatedOpacity'),
    WidgetData('AnimatedPhysicalModel', 'Animated version of PhysicalModel.', '/AnimatedPhysicalModel', 'AnimatedPhysicalModel'),
    WidgetData('AnimatedPositioned', "Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.", '/AnimatedPositioned', 'AnimatedPositioned'),
    WidgetData('AnimatedSize', "Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.", '/AnimatedSize', 'AnimatedSize'),
    WidgetData('AnimatedWidget', 'A widget that rebuilds when the given Listenable changes value.', '/AnimatedWidget', 'AnimatedWidget'),
    WidgetData('AnimatedWidgetBaseState', 'A base class for widgets with implicit animations.', '/AnimatedWidgetBaseState', 'AnimatedWidgetBaseState'),
    WidgetData('DecoratedBoxTransition', 'Animated version of a DecoratedBox that animates the different properties of its Decoration.', '/DecoratedBoxTransition', 'DecoratedBoxTransition'),
    WidgetData('FadeTransition', 'Animates the opacity of a widget.', '/FadeTransition', 'FadeTransition'),
    WidgetData('Hero', 'A widget that marks its child as being a candidate for hero animations.', '/Hero', 'Hero'),
    WidgetData('PositionedTransition', "Animated version of Positioned which takes a specific Animation to transition the child's position from a start position to and end position over the lifetime of the animation", '/PositionedTransition', 'PositionedTransition'),
    WidgetData('RotationTransition', 'Animates the rotation of a widget.', '/RotationTransition', 'RotationTransition'),
    WidgetData('ScaleTransition', 'Animates the scale of transformed widget.', '/ScaleTransition', 'ScaleTransition'),
    WidgetData('SizeTransition', 'Animates its own size and clips and aligns the child.', '/SizeTransition', 'SizeTransition'),
    WidgetData('SlideTransition', 'Animates the position of a widget relative to its normal position.', '/SlideTransition', 'SlideTransition'),
  ],
  'Assets, images, and icon': [
    WidgetData('AssetBundle', 'Asset bundles contain resources, such as images and strings, that can be used by an application.', '/AssetBundle', 'AssetBundle'),
    WidgetData('Icon', 'A Material Design icon.', '/Icon', 'Icon'),
    WidgetData('Image', 'A widget that displays an image.', '/Image', 'Image'),
    WidgetData('RawImage', 'A widget that displays a dart:ui.Image directly.', '/RawImage', 'RawImage')
  ],
  'Async': [
    WidgetData('FutureBuilder', 'Widget that builds itself based on the latest snapshot of interaction with a Future.', '/FutureBuilder', 'FutureBuilder',),
    WidgetData('StreamBuilder', 'Widget that builds itself based on the latest snapshot of interaction with a Stream.', '/StreamBuilder', 'StreamBuilder'),
  ],
  'Basics': [
    WidgetData('Appbar', 'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.', '/Appbar', 'Appbar'),
    WidgetData('Column', 'Layout a list of child widgets in the vertical direction.', '/Column', 'Column'),
    WidgetData('Container', 'A convenience widget that combines common painting, positioning, and sizing widgets.', '/Container', 'Container'),
    WidgetData('FlutterLogo', 'The Flutter logo, in widget form. This widget respects the IconTheme.', '/FlutterLogo', 'FlutterLogo'),
    WidgetData('Icon', 'A Material Design icon.', '/Icon', 'Icon'),
    WidgetData('Image', 'A widget that displays an image.', '/Image', 'Image'),
    WidgetData('Placeholder', 'A widget that draws a box that represents where other widgets will one day be added.', '/Placeholder', 'Placeholder'),
    WidgetData('RaisedButton', 'A Material Design raised button. A raised button consists of a rectangular piece of material that hovers over the interface.', '/RaisedButton', 'RaisedButton'),
    WidgetData('Row', 'Layout a list of child widgets in the horizontal direction.', '/Row', 'Row'),
    WidgetData('Scaffold', 'Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.', '/Scaffold', 'Scaffold'),
    WidgetData('Text', 'A run of text with a single style.', '/Text', 'Text'),
  ]
};