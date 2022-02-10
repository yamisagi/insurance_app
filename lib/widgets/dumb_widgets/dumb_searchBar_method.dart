 import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

Padding searchBar() {
    return const Padding(
                padding: EdgeInsets.all(20),
                child: OutlineSearchBar(
                    autoCorrect: false,
                    borderColor: Colors.black,
                    cursorColor: Colors.black),
              );
  }