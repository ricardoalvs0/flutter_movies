import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:movie_catalogs/http/interceptors/movie_interceptor.dart';

final Client client = InterceptedClient.build(
    interceptors: [MovieInterceptor()],
    requestTimeout: Duration(seconds: 5),
);