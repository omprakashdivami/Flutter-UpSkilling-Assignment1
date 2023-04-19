import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TxtField extends StatefulWidget {
 TxtField({super.key,required this.a,required this.label});
  TextInputType a;
  String label;
  @override
  State<TxtField> createState() => _TxtFieldState();
}

class _TxtFieldState extends State<TxtField> {
  bool hide=true;
  IconData ab=Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
   
    return Container(
      child: TextField(
    
       keyboardType: widget.a,
       decoration: InputDecoration(
        
        hintText:widget.label,
        // widget.a== TextInputType.visiblePassword?"Password".toString():"Username".toString(),
        // icon: widget.a==TextInputType.visiblePassword?const Icon(Icons.visibility_off,):null,
        suffixIcon: widget.a== TextInputType.visiblePassword?GestureDetector(child: Icon(ab),onTap:() {
          setState(() {
            if(ab==Icons.visibility_off)
            {
              ab=Icons.visibility;
              hide=false;
            }
            else
            {
              ab=Icons.visibility_off;
              hide=true;
            }
           
           
          });
        },):null, // no icon will be visible is textInputType is except visiblepasword
       ),
      
       obscureText: widget.a==TextInputType.visiblePassword?hide:false,
      ),
    );
  }
}