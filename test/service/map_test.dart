import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_mobx/feature/maps/service/IMapService.dart';
import 'package:google_maps_mobx/feature/maps/service/map_service.dart';
import 'package:vexana/vexana.dart';

void main() {
  late INetworkManager networkManager;
  late IMapService mapService;
  setUp(() {
    networkManager = NetworkManager(
        options:
            BaseOptions(baseUrl: 'https://fluttertr-ead5c.firebaseio.com/'));
    mapService = MapService(networkManager);
  });
  test('Fetch all map datas', () async {
    final response = await mapService.fetchMapItems();

    expect(response, isNotNull);
  });
}
