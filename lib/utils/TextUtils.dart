import 'package:bkash/styles/AppTheme.dart';
import 'package:flutter/material.dart';

TextStyle getAmtStyle(int code) {
  if(code == 1){
    return AppTheme.tTrxTextGreen;
  }
  else{
    return AppTheme.tTrxTextRed;
  }
}