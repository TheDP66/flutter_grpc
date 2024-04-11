import 'dart:io';

import 'package:server/todo_service.dart';

void main(List<String> arguments) async {
  final server = Server([
    TodoService(),
  ]);

  final port = int.parse(Platform.environment['PORT'] ?? '8080');

  await server.serve(
    port: port,
  );

  print("Server listnening on port ${server.port}...");
}
