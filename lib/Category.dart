import "package:flutter/material.dart";
import "package:meta/meta.dart";

final _rowHeight = 20.0;
final __borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation
  })
      : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: __borderRadius,
        highlightColor: color,
        splashColor: Colors.blue,
        onTap: () {
          print("I was tapped!");
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  iconLocation,
                  size: 60.0
                ),
              ),
              Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}