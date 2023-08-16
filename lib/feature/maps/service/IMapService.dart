import 'package:vexana/vexana.dart';

import '../model/map_model.dart';

abstract class IMapService {
  final INetworkManager networkManager;

  IMapService(this.networkManager);

  Future<List<MapModel>?> fetchMapItems();
}
