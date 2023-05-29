import 'package:thomas_s_application2/data/models/url/get_url_resp.dart';

import '../apiClient/api_client.dart';

class Repository {
  var _apiClient = ApiClient();

  Future<GetUrlResp> fetchUrl() async {
    return await _apiClient.fetchUrl();
  }
}
