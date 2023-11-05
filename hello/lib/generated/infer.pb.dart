///
//  Generated code. Do not modify.
//  source: infer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class InferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shape', $pb.PbFieldType.KU6)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  InferRequest._() : super();
  factory InferRequest({
    $core.Iterable<$fixnum.Int64>? shape,
    $core.Iterable<$core.double>? data,
  }) {
    final _result = create();
    if (shape != null) {
      _result.shape.addAll(shape);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory InferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InferRequest clone() => InferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InferRequest copyWith(void Function(InferRequest) updates) => super.copyWith((message) => updates(message as InferRequest)) as InferRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InferRequest create() => InferRequest._();
  InferRequest createEmptyInstance() => create();
  static $pb.PbList<InferRequest> createRepeated() => $pb.PbList<InferRequest>();
  @$core.pragma('dart2js:noInline')
  static InferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InferRequest>(create);
  static InferRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get shape => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.double> get data => $_getList(1);
}

class InferResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InferResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shape', $pb.PbFieldType.KU6)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  InferResponse._() : super();
  factory InferResponse({
    $core.Iterable<$fixnum.Int64>? shape,
    $core.Iterable<$core.double>? data,
  }) {
    final _result = create();
    if (shape != null) {
      _result.shape.addAll(shape);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory InferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InferResponse clone() => InferResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InferResponse copyWith(void Function(InferResponse) updates) => super.copyWith((message) => updates(message as InferResponse)) as InferResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InferResponse create() => InferResponse._();
  InferResponse createEmptyInstance() => create();
  static $pb.PbList<InferResponse> createRepeated() => $pb.PbList<InferResponse>();
  @$core.pragma('dart2js:noInline')
  static InferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InferResponse>(create);
  static InferResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get shape => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.double> get data => $_getList(1);
}

class PreProcessRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PreProcessRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PreProcessRequest._() : super();
  factory PreProcessRequest({
    $core.List<$core.int>? image,
  }) {
    final _result = create();
    if (image != null) {
      _result.image = image;
    }
    return _result;
  }
  factory PreProcessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreProcessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreProcessRequest clone() => PreProcessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreProcessRequest copyWith(void Function(PreProcessRequest) updates) => super.copyWith((message) => updates(message as PreProcessRequest)) as PreProcessRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PreProcessRequest create() => PreProcessRequest._();
  PreProcessRequest createEmptyInstance() => create();
  static $pb.PbList<PreProcessRequest> createRepeated() => $pb.PbList<PreProcessRequest>();
  @$core.pragma('dart2js:noInline')
  static PreProcessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreProcessRequest>(create);
  static PreProcessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get image => $_getN(0);
  @$pb.TagNumber(1)
  set image($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);
}

class PreProcessResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PreProcessResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shape', $pb.PbFieldType.KU6)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  PreProcessResponse._() : super();
  factory PreProcessResponse({
    $core.Iterable<$fixnum.Int64>? shape,
    $core.Iterable<$core.double>? data,
  }) {
    final _result = create();
    if (shape != null) {
      _result.shape.addAll(shape);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory PreProcessResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreProcessResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreProcessResponse clone() => PreProcessResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreProcessResponse copyWith(void Function(PreProcessResponse) updates) => super.copyWith((message) => updates(message as PreProcessResponse)) as PreProcessResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PreProcessResponse create() => PreProcessResponse._();
  PreProcessResponse createEmptyInstance() => create();
  static $pb.PbList<PreProcessResponse> createRepeated() => $pb.PbList<PreProcessResponse>();
  @$core.pragma('dart2js:noInline')
  static PreProcessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreProcessResponse>(create);
  static PreProcessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get shape => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.double> get data => $_getList(1);
}

class PostProcessRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PostProcessRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shape', $pb.PbFieldType.KU6)
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  PostProcessRequest._() : super();
  factory PostProcessRequest({
    $core.Iterable<$fixnum.Int64>? shape,
    $core.Iterable<$core.double>? data,
  }) {
    final _result = create();
    if (shape != null) {
      _result.shape.addAll(shape);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory PostProcessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostProcessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostProcessRequest clone() => PostProcessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostProcessRequest copyWith(void Function(PostProcessRequest) updates) => super.copyWith((message) => updates(message as PostProcessRequest)) as PostProcessRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostProcessRequest create() => PostProcessRequest._();
  PostProcessRequest createEmptyInstance() => create();
  static $pb.PbList<PostProcessRequest> createRepeated() => $pb.PbList<PostProcessRequest>();
  @$core.pragma('dart2js:noInline')
  static PostProcessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostProcessRequest>(create);
  static PostProcessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get shape => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.double> get data => $_getList(1);
}

class Pred extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pred', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'probability', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Pred._() : super();
  factory Pred({
    $core.String? name,
    $core.double? probability,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (probability != null) {
      _result.probability = probability;
    }
    return _result;
  }
  factory Pred.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pred.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pred clone() => Pred()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pred copyWith(void Function(Pred) updates) => super.copyWith((message) => updates(message as Pred)) as Pred; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pred create() => Pred._();
  Pred createEmptyInstance() => create();
  static $pb.PbList<Pred> createRepeated() => $pb.PbList<Pred>();
  @$core.pragma('dart2js:noInline')
  static Pred getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pred>(create);
  static Pred? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get probability => $_getN(1);
  @$pb.TagNumber(2)
  set probability($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProbability() => $_has(1);
  @$pb.TagNumber(2)
  void clearProbability() => clearField(2);
}

class PostProcessResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PostProcessResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..pc<Pred>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preds', $pb.PbFieldType.PM, subBuilder: Pred.create)
    ..hasRequiredFields = false
  ;

  PostProcessResponse._() : super();
  factory PostProcessResponse({
    $core.Iterable<Pred>? preds,
  }) {
    final _result = create();
    if (preds != null) {
      _result.preds.addAll(preds);
    }
    return _result;
  }
  factory PostProcessResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostProcessResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostProcessResponse clone() => PostProcessResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostProcessResponse copyWith(void Function(PostProcessResponse) updates) => super.copyWith((message) => updates(message as PostProcessResponse)) as PostProcessResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostProcessResponse create() => PostProcessResponse._();
  PostProcessResponse createEmptyInstance() => create();
  static $pb.PbList<PostProcessResponse> createRepeated() => $pb.PbList<PostProcessResponse>();
  @$core.pragma('dart2js:noInline')
  static PostProcessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostProcessResponse>(create);
  static PostProcessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Pred> get preds => $_getList(0);
}

class WebRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  WebRequest._() : super();
  factory WebRequest({
    $core.List<$core.int>? image,
  }) {
    final _result = create();
    if (image != null) {
      _result.image = image;
    }
    return _result;
  }
  factory WebRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebRequest clone() => WebRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebRequest copyWith(void Function(WebRequest) updates) => super.copyWith((message) => updates(message as WebRequest)) as WebRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebRequest create() => WebRequest._();
  WebRequest createEmptyInstance() => create();
  static $pb.PbList<WebRequest> createRepeated() => $pb.PbList<WebRequest>();
  @$core.pragma('dart2js:noInline')
  static WebRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebRequest>(create);
  static WebRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get image => $_getN(0);
  @$pb.TagNumber(1)
  set image($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);
}

class WebResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'infer'), createEmptyInstance: create)
    ..pc<Pred>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preds', $pb.PbFieldType.PM, subBuilder: Pred.create)
    ..hasRequiredFields = false
  ;

  WebResponse._() : super();
  factory WebResponse({
    $core.Iterable<Pred>? preds,
  }) {
    final _result = create();
    if (preds != null) {
      _result.preds.addAll(preds);
    }
    return _result;
  }
  factory WebResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebResponse clone() => WebResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebResponse copyWith(void Function(WebResponse) updates) => super.copyWith((message) => updates(message as WebResponse)) as WebResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebResponse create() => WebResponse._();
  WebResponse createEmptyInstance() => create();
  static $pb.PbList<WebResponse> createRepeated() => $pb.PbList<WebResponse>();
  @$core.pragma('dart2js:noInline')
  static WebResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebResponse>(create);
  static WebResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Pred> get preds => $_getList(0);
}

