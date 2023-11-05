///
//  Generated code. Do not modify.
//  source: infer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'infer.pb.dart' as $0;
export 'infer.pb.dart';

class InferClient extends $grpc.Client {
  static final _$infer = $grpc.ClientMethod<$0.InferRequest, $0.InferResponse>(
      '/infer.Infer/Infer',
      ($0.InferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InferResponse.fromBuffer(value));

  InferClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.InferResponse> infer($0.InferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$infer, request, options: options);
  }
}

abstract class InferServiceBase extends $grpc.Service {
  $core.String get $name => 'infer.Infer';

  InferServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InferRequest, $0.InferResponse>(
        'Infer',
        infer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InferRequest.fromBuffer(value),
        ($0.InferResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.InferResponse> infer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.InferRequest> request) async {
    return infer(call, await request);
  }

  $async.Future<$0.InferResponse> infer(
      $grpc.ServiceCall call, $0.InferRequest request);
}

class ProcessClient extends $grpc.Client {
  static final _$preProcess =
      $grpc.ClientMethod<$0.PreProcessRequest, $0.PreProcessResponse>(
          '/infer.Process/PreProcess',
          ($0.PreProcessRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PreProcessResponse.fromBuffer(value));
  static final _$postProcess =
      $grpc.ClientMethod<$0.PostProcessRequest, $0.PostProcessResponse>(
          '/infer.Process/PostProcess',
          ($0.PostProcessRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PostProcessResponse.fromBuffer(value));

  ProcessClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PreProcessResponse> preProcess(
      $0.PreProcessRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preProcess, request, options: options);
  }

  $grpc.ResponseFuture<$0.PostProcessResponse> postProcess(
      $0.PostProcessRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postProcess, request, options: options);
  }
}

abstract class ProcessServiceBase extends $grpc.Service {
  $core.String get $name => 'infer.Process';

  ProcessServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PreProcessRequest, $0.PreProcessResponse>(
        'PreProcess',
        preProcess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PreProcessRequest.fromBuffer(value),
        ($0.PreProcessResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PostProcessRequest, $0.PostProcessResponse>(
            'PostProcess',
            postProcess_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PostProcessRequest.fromBuffer(value),
            ($0.PostProcessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PreProcessResponse> preProcess_Pre($grpc.ServiceCall call,
      $async.Future<$0.PreProcessRequest> request) async {
    return preProcess(call, await request);
  }

  $async.Future<$0.PostProcessResponse> postProcess_Pre($grpc.ServiceCall call,
      $async.Future<$0.PostProcessRequest> request) async {
    return postProcess(call, await request);
  }

  $async.Future<$0.PreProcessResponse> preProcess(
      $grpc.ServiceCall call, $0.PreProcessRequest request);
  $async.Future<$0.PostProcessResponse> postProcess(
      $grpc.ServiceCall call, $0.PostProcessRequest request);
}

class WebClient extends $grpc.Client {
  static final _$process = $grpc.ClientMethod<$0.WebRequest, $0.WebResponse>(
      '/infer.Web/Process',
      ($0.WebRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WebResponse.fromBuffer(value));

  WebClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.WebResponse> process($0.WebRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$process, request, options: options);
  }
}

abstract class WebServiceBase extends $grpc.Service {
  $core.String get $name => 'infer.Web';

  WebServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.WebRequest, $0.WebResponse>(
        'Process',
        process_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WebRequest.fromBuffer(value),
        ($0.WebResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.WebResponse> process_Pre(
      $grpc.ServiceCall call, $async.Future<$0.WebRequest> request) async {
    return process(call, await request);
  }

  $async.Future<$0.WebResponse> process(
      $grpc.ServiceCall call, $0.WebRequest request);
}
