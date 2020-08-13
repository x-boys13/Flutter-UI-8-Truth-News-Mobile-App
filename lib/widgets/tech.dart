// This fiile has the widget which is to be displayed then we click on the tech in top navigation bar.

import 'package:flutter/material.dart';

Widget tech(context) {
  return Container(
    child: Container(
      height: MediaQuery.of(context).size.height / 1.44,
      width: MediaQuery.of(context).size.width,
      child:

          // This is the widget having the things which are to be displayed inisde the world thing.
          Container(
        child: Center(
          child: Text("No widget for tech developed 101"),
        ),
      ),
    ),
  );
}
