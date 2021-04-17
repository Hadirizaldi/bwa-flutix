import 'package:bwa_flutix/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/pages/pages.dart';

void main () {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      initialData: null,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper()),
    ); 
      
    
  }
}