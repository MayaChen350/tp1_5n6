// This is a generated file - do not edit.
//
// Generated from protobuf/ChangementAvancement.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ChangementAvancement extends $pb.GeneratedMessage {
  factory ChangementAvancement({
    $core.int? valeur,
    $0.Timestamp? dateLimite,
  }) {
    final result = create();
    if (valeur != null) result.valeur = valeur;
    if (dateLimite != null) result.dateLimite = dateLimite;
    return result;
  }

  ChangementAvancement._();

  factory ChangementAvancement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangementAvancement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangementAvancement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'valeur', $pb.PbFieldType.O3)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'dateLimite',
        protoName: 'dateLimite', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangementAvancement clone() =>
      ChangementAvancement()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangementAvancement copyWith(void Function(ChangementAvancement) updates) =>
      super.copyWith((message) => updates(message as ChangementAvancement))
          as ChangementAvancement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangementAvancement create() => ChangementAvancement._();
  @$core.override
  ChangementAvancement createEmptyInstance() => create();
  static $pb.PbList<ChangementAvancement> createRepeated() =>
      $pb.PbList<ChangementAvancement>();
  @$core.pragma('dart2js:noInline')
  static ChangementAvancement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangementAvancement>(create);
  static ChangementAvancement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get valeur => $_getIZ(0);
  @$pb.TagNumber(1)
  set valeur($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValeur() => $_has(0);
  @$pb.TagNumber(1)
  void clearValeur() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timestamp get dateLimite => $_getN(1);
  @$pb.TagNumber(2)
  set dateLimite($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDateLimite() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateLimite() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureDateLimite() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
