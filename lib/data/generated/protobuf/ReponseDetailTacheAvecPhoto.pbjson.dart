// This is a generated file - do not edit.
//
// Generated from protobuf/ReponseDetailTacheAvecPhoto.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use reponseDetailTacheAvecPhotoDescriptor instead')
const ReponseDetailTacheAvecPhoto$json = {
  '1': 'ReponseDetailTacheAvecPhoto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'nom', '3': 2, '4': 1, '5': 9, '10': 'nom'},
    {
      '1': 'dateLimite',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'dateLimite'
    },
    {
      '1': 'changements',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kickmyb.ChangementAvancement',
      '10': 'changements'
    },
    {
      '1': 'pourcentageAvancement',
      '3': 5,
      '4': 1,
      '5': 5,
      '10': 'pourcentageAvancement'
    },
    {'1': 'pourcentageTemps', '3': 6, '4': 1, '5': 1, '10': 'pourcentageTemps'},
    {'1': 'photoId', '3': 7, '4': 1, '5': 3, '10': 'photoId'},
  ],
};

/// Descriptor for `ReponseDetailTacheAvecPhoto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reponseDetailTacheAvecPhotoDescriptor = $convert.base64Decode(
    'ChtSZXBvbnNlRGV0YWlsVGFjaGVBdmVjUGhvdG8SDgoCaWQYASABKANSAmlkEhAKA25vbRgCIA'
    'EoCVIDbm9tEjoKCmRhdGVMaW1pdGUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UgpkYXRlTGltaXRlEj8KC2NoYW5nZW1lbnRzGAQgAygLMh0ua2lja215Yi5DaGFuZ2VtZW50QX'
    'ZhbmNlbWVudFILY2hhbmdlbWVudHMSNAoVcG91cmNlbnRhZ2VBdmFuY2VtZW50GAUgASgFUhVw'
    'b3VyY2VudGFnZUF2YW5jZW1lbnQSKgoQcG91cmNlbnRhZ2VUZW1wcxgGIAEoAVIQcG91cmNlbn'
    'RhZ2VUZW1wcxIYCgdwaG90b0lkGAcgASgDUgdwaG90b0lk');
