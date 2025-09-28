// This is a generated file - do not edit.
//
// Generated from protobuf/ReponseAjoutTache.proto.

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

class ReponseAjoutTache extends $pb.GeneratedMessage {
  factory ReponseAjoutTache({
    $core.String? nom,
    $0.Timestamp? dateLimite,
  }) {
    final result = create();
    if (nom != null) result.nom = nom;
    if (dateLimite != null) result.dateLimite = dateLimite;
    return result;
  }

  ReponseAjoutTache._();

  factory ReponseAjoutTache.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReponseAjoutTache.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReponseAjoutTache',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nom')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'dateLimite',
        protoName: 'dateLimite', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseAjoutTache clone() => ReponseAjoutTache()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseAjoutTache copyWith(void Function(ReponseAjoutTache) updates) =>
      super.copyWith((message) => updates(message as ReponseAjoutTache))
          as ReponseAjoutTache;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReponseAjoutTache create() => ReponseAjoutTache._();
  @$core.override
  ReponseAjoutTache createEmptyInstance() => create();
  static $pb.PbList<ReponseAjoutTache> createRepeated() =>
      $pb.PbList<ReponseAjoutTache>();
  @$core.pragma('dart2js:noInline')
  static ReponseAjoutTache getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReponseAjoutTache>(create);
  static ReponseAjoutTache? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nom => $_getSZ(0);
  @$pb.TagNumber(1)
  set nom($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNom() => $_has(0);
  @$pb.TagNumber(1)
  void clearNom() => $_clearField(1);

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
