import 'package:http_interceptor/http_interceptor.dart';

class MovieInterceptor implements InterceptorContract {
    @override
    Future<RequestData> interceptRequest({required RequestData data}) async {
        print('Request');
        print('headers: ${data.headers}');
        print('body: ${data.body}');
        return data;
    }

    @override
    Future<ResponseData> interceptResponse({required ResponseData data}) async {
        print('Response');
        print('status code: ${data.statusCode}');
        print('headers: ${data.headers}');
        print('body: ${data.body}');
        return data;
    }
}