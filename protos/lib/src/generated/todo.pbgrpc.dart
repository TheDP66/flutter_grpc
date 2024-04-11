///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$getTodo = $grpc.ClientMethod<$0.GetTodoByIdRequest, $0.Todo>(
      '/TodoService/getTodo',
      ($0.GetTodoByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));
  static final _$getTodoStream =
      $grpc.ClientMethod<$0.GetTodoByIdRequest, $0.Todo>(
          '/TodoService/getTodoStream',
          ($0.GetTodoByIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Todo.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Todo> getTodo($0.GetTodoByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodo, request, options: options);
  }

  $grpc.ResponseStream<$0.Todo> getTodoStream($0.GetTodoByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getTodoStream, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetTodoByIdRequest, $0.Todo>(
        'getTodo',
        getTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTodoByIdRequest.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTodoByIdRequest, $0.Todo>(
        'getTodoStream',
        getTodoStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.GetTodoByIdRequest.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
  }

  $async.Future<$0.Todo> getTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetTodoByIdRequest> request) async {
    return getTodo(call, await request);
  }

  $async.Stream<$0.Todo> getTodoStream_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetTodoByIdRequest> request) async* {
    yield* getTodoStream(call, await request);
  }

  $async.Future<$0.Todo> getTodo(
      $grpc.ServiceCall call, $0.GetTodoByIdRequest request);
  $async.Stream<$0.Todo> getTodoStream(
      $grpc.ServiceCall call, $0.GetTodoByIdRequest request);
}
