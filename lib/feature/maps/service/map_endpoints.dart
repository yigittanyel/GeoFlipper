part of 'map_service.dart';

enum _MapEndPoint { maps }

extension MapEndPointExtension on _MapEndPoint {
  String get withJson => '$name.json';
}
