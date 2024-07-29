
class ServiceHeader {
  Future<Map<String, String>> setLoginOrLoginHeaders() async {
    var params = {
      "params": {
        "vin" : "87654323456"
      }
    };
    return {
      "Content-type": "application/json;charset=UTF-8",
      "Accept": "*/*",
    };
  }
  Future<Map<String, String>> setHeaders({bool contentTypeJson = true}) async {
    return {
      "Content-type": "application/json;charset=UTF-8",
      "Accept": "*/*",
    };
  }
}