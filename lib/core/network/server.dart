// ignore_for_file: implementation_imports
import 'dart:convert';
import 'dart:io';

import 'package:alfred/alfred.dart';
import 'package:alfred/src/type_handlers/websocket_type_handler.dart';
import 'package:oshama/core/context.dart';
import 'package:oshama/core/network/exception.dart';
import 'package:oshama/model/milky_types.dart';

class MilkyHttpServer {
  final String host;
  final int port;
  final String accessToken;

  late Context context;

  final app = Alfred();
  final wsClients = <WebSocket>[];

  MilkyHttpServer({
    this.host = 'localhost',
    required this.port,
    this.accessToken = '',
  }) {
    app.all('*', cors());

    app.all('/api/*', (req, res) {
      final token = req.headers['authorization'] ?? '';

      if (accessToken.isNotEmpty && token != 'Bearer $accessToken') {
        throw AlfredException(401, 'Unauthorized');
      }
    });

    app.post('/api/:endpoint', (req, res) async {
      final endpoint = req.params['endpoint']!;
      final handler = context.handlerMap['/$endpoint'];

      if (handler == null) {
        return ApiGeneralResponse(
          status: 'failed',
          retcode: -404,
          message: 'Requested API $endpoint not found',
        ).toJson();
      }

      final requestData = await req.bodyAsJsonMap;

      try {
        final response = await handler.handle(
          context,
          handler.api.fromJsonInput(requestData),
        );
        return ApiGeneralResponse(
          status: 'success',
          retcode: 0,
          data: response.toJson(),
        ).toJson();
      } on MilkyException catch (e) {
        return ApiGeneralResponse(
          status: 'ok',
          retcode: e.retcode,
          message: e.message,
        ).toJson();
      } catch (e) {
        return ApiGeneralResponse(
          status: 'failed',
          retcode: -500,
          message: 'Internal server error: $e',
        ).toJson();
      }
    });

    app.get('/event', (req, res) async {
      if (accessToken.isNotEmpty) {
        // First check Authorization header, then check query parameter
        final token =
            req.headers['authorization'] ??
            (req.uri.queryParameters.containsKey('access_token')
                ? 'Bearer ${req.uri.queryParameters['access_token']}'
                : '');
        if (token != 'Bearer $accessToken') {
          res.statusCode = 401;
          throw AlfredException(401, 'Unauthorized');
        }
      }

      return WebSocketSession(
        onOpen: (ws) {
          wsClients.add(ws);
        },
      );
    });
  }

  Future<void> start() async {
    await app.listen(port, host);
  }

  Future<void> sendEvent(Event event) async {
    final data = json.encode(event.toJson());
    for (final ws in wsClients) {
      ws.add(data);
    }
  }
}
