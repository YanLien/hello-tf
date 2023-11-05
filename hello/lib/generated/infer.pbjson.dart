///
//  Generated code. Do not modify.
//  source: infer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use inferRequestDescriptor instead')
const InferRequest$json = const {
  '1': 'InferRequest',
  '2': const [
    const {'1': 'shape', '3': 1, '4': 3, '5': 4, '10': 'shape'},
    const {'1': 'data', '3': 2, '4': 3, '5': 2, '10': 'data'},
  ],
};

/// Descriptor for `InferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferRequestDescriptor = $convert.base64Decode('CgxJbmZlclJlcXVlc3QSFAoFc2hhcGUYASADKARSBXNoYXBlEhIKBGRhdGEYAiADKAJSBGRhdGE=');
@$core.Deprecated('Use inferResponseDescriptor instead')
const InferResponse$json = const {
  '1': 'InferResponse',
  '2': const [
    const {'1': 'shape', '3': 1, '4': 3, '5': 4, '10': 'shape'},
    const {'1': 'data', '3': 2, '4': 3, '5': 2, '10': 'data'},
  ],
};

/// Descriptor for `InferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferResponseDescriptor = $convert.base64Decode('Cg1JbmZlclJlc3BvbnNlEhQKBXNoYXBlGAEgAygEUgVzaGFwZRISCgRkYXRhGAIgAygCUgRkYXRh');
@$core.Deprecated('Use preProcessRequestDescriptor instead')
const PreProcessRequest$json = const {
  '1': 'PreProcessRequest',
  '2': const [
    const {'1': 'image', '3': 1, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `PreProcessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preProcessRequestDescriptor = $convert.base64Decode('ChFQcmVQcm9jZXNzUmVxdWVzdBIUCgVpbWFnZRgBIAEoDFIFaW1hZ2U=');
@$core.Deprecated('Use preProcessResponseDescriptor instead')
const PreProcessResponse$json = const {
  '1': 'PreProcessResponse',
  '2': const [
    const {'1': 'shape', '3': 1, '4': 3, '5': 4, '10': 'shape'},
    const {'1': 'data', '3': 2, '4': 3, '5': 2, '10': 'data'},
  ],
};

/// Descriptor for `PreProcessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preProcessResponseDescriptor = $convert.base64Decode('ChJQcmVQcm9jZXNzUmVzcG9uc2USFAoFc2hhcGUYASADKARSBXNoYXBlEhIKBGRhdGEYAiADKAJSBGRhdGE=');
@$core.Deprecated('Use postProcessRequestDescriptor instead')
const PostProcessRequest$json = const {
  '1': 'PostProcessRequest',
  '2': const [
    const {'1': 'shape', '3': 1, '4': 3, '5': 4, '10': 'shape'},
    const {'1': 'data', '3': 2, '4': 3, '5': 2, '10': 'data'},
  ],
};

/// Descriptor for `PostProcessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postProcessRequestDescriptor = $convert.base64Decode('ChJQb3N0UHJvY2Vzc1JlcXVlc3QSFAoFc2hhcGUYASADKARSBXNoYXBlEhIKBGRhdGEYAiADKAJSBGRhdGE=');
@$core.Deprecated('Use predDescriptor instead')
const Pred$json = const {
  '1': 'Pred',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'probability', '3': 2, '4': 1, '5': 2, '10': 'probability'},
  ],
};

/// Descriptor for `Pred`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predDescriptor = $convert.base64Decode('CgRQcmVkEhIKBG5hbWUYASABKAlSBG5hbWUSIAoLcHJvYmFiaWxpdHkYAiABKAJSC3Byb2JhYmlsaXR5');
@$core.Deprecated('Use postProcessResponseDescriptor instead')
const PostProcessResponse$json = const {
  '1': 'PostProcessResponse',
  '2': const [
    const {'1': 'preds', '3': 1, '4': 3, '5': 11, '6': '.infer.Pred', '10': 'preds'},
  ],
};

/// Descriptor for `PostProcessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postProcessResponseDescriptor = $convert.base64Decode('ChNQb3N0UHJvY2Vzc1Jlc3BvbnNlEiEKBXByZWRzGAEgAygLMgsuaW5mZXIuUHJlZFIFcHJlZHM=');
@$core.Deprecated('Use webRequestDescriptor instead')
const WebRequest$json = const {
  '1': 'WebRequest',
  '2': const [
    const {'1': 'image', '3': 1, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `WebRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webRequestDescriptor = $convert.base64Decode('CgpXZWJSZXF1ZXN0EhQKBWltYWdlGAEgASgMUgVpbWFnZQ==');
@$core.Deprecated('Use webResponseDescriptor instead')
const WebResponse$json = const {
  '1': 'WebResponse',
  '2': const [
    const {'1': 'preds', '3': 1, '4': 3, '5': 11, '6': '.infer.Pred', '10': 'preds'},
  ],
};

/// Descriptor for `WebResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webResponseDescriptor = $convert.base64Decode('CgtXZWJSZXNwb25zZRIhCgVwcmVkcxgBIAMoCzILLmluZmVyLlByZWRSBXByZWRz');
