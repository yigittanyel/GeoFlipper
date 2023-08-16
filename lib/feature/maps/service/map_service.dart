import 'package:vexana/vexana.dart';

import '../model/map_model.dart';
import 'IMapService.dart';

part 'map_endpoints.dart';

class MapService extends IMapService {
  MapService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<MapModel>?> fetchMapItems() async {
    final response = await networkManager.send<MapModel, List<MapModel>>(
        _MapEndPoint.maps.withJson,
        parseModel: MapModel(),
        method: RequestType.GET);

    return response.data;
  }
}
