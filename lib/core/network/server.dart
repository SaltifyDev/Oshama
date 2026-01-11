// ignore_for_file: implementation_imports
import 'dart:convert';
import 'dart:io';

import 'package:alfred/alfred.dart';
import 'package:alfred/src/type_handlers/websocket_type_handler.dart';
import 'package:oshama/model/milky_types.dart';

class MilkyHttpServer {
  final String host;
  final int port;
  final String accessToken;

  final app = Alfred();
  final wsClients = <WebSocket>[];

  MilkyHttpServer({
    this.host = 'localhost',
    required this.port,
    this.accessToken = '',
  }) {
    app.all('*', cors());

    app.post('/api/:endpoint', (req, res) async {
      final _ = req.params['endpoint']!;
      final token = req.headers['authorization'] ?? '';

      if (accessToken.isNotEmpty && token != 'Bearer $accessToken') {
        res.statusCode = 401;
        return 'Unauthorized';
      }

      // TODO: Handle different API endpoints
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
          return 'Unauthorized';
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
