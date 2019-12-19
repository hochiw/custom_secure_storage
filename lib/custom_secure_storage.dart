import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomSecureStorage extends FlutterSecureStorage {
  CustomSecureStorage({this.iOSGroupName}):super();
  final String iOSGroupName;
  
  @override
  Future<void> write({@required String key, @required String value, IOSOptions iOptions, AndroidOptions aOptions}) {
    return super.write(key: key,value: value,iOptions: IOSOptions(groupId: iOSGroupName), aOptions: aOptions);
  }

  @override
  Future<String> read({@required String key, IOSOptions iOptions, AndroidOptions aOptions}) async {
    return super.read(key: key,iOptions: IOSOptions(groupId: iOSGroupName), aOptions: aOptions);
  }

  @override
  Future<Map<String, String>> readAll({IOSOptions iOptions, AndroidOptions aOptions}) async {
    return super.readAll(iOptions: IOSOptions(groupId: iOSGroupName), aOptions: aOptions);
  }

  @override
  Future<void> delete({@required String key, IOSOptions iOptions, AndroidOptions aOptions}) =>
    super.delete(key: key,iOptions: IOSOptions(groupId: iOSGroupName));
  
  @override 
  Future<void> deleteAll({IOSOptions iOptions, AndroidOptions aOptions}) => 
    super.deleteAll(iOptions: IOSOptions(groupId: iOSGroupName));
}