// This is a generated file - do not edit.
//
// Generated from protobuf/ReponseAccueilItem.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReponseAccueilItem extends $pb.GeneratedMessage {
  factory ReponseAccueilItem({
    $fixnum.Int64? id,
    $core.String? nom,
    $core.int? pourcentageAvancement,
    $core.int? pourcentageTemps,
    $0.Timestamp? dateLimite,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (nom != null) result.nom = nom;
    if (pourcentageAvancement != null)
      result.pourcentageAvancement = pourcentageAvancement;
    if (pourcentageTemps != null) result.pourcentageTemps = pourcentageTemps;
    if (dateLimite != null) result.dateLimite = dateLimite;
    return result;
  }

  ReponseAccueilItem._();

  factory ReponseAccueilItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReponseAccueilItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReponseAccueilItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'nom')
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'pourcentageAvancement', $pb.PbFieldType.O3,
        protoName: 'pourcentageAvancement')
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'pourcentageTemps', $pb.PbFieldType.O3,
        protoName: 'pourcentageTemps')
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'dateLimite',
        protoName: 'dateLimite', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseAccueilItem clone() => ReponseAccueilItem()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseAccueilItem copyWith(void Function(ReponseAccueilItem) updates) =>
      super.copyWith((message) => updates(message as ReponseAccueilItem))
          as ReponseAccueilItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReponseAccueilItem create() => ReponseAccueilItem._();
  @$core.override
  ReponseAccueilItem createEmptyInstance() => create();
  static $pb.PbList<ReponseAccueilItem> createRepeated() =>
      $pb.PbList<ReponseAccueilItem>();
  @$core.pragma('dart2js:noInline')
  static ReponseAccueilItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReponseAccueilItem>(create);
  static ReponseAccueilItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get nom => $_getSZ(1);
  @$pb.TagNumber(2)
  set nom($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNom() => $_has(1);
  @$pb.TagNumber(2)
  void clearNom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get pourcentageAvancement => $_getIZ(2);
  @$pb.TagNumber(3)
  set pourcentageAvancement($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPourcentageAvancement() => $_has(2);
  @$pb.TagNumber(3)
  void clearPourcentageAvancement() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pourcentageTemps => $_getIZ(3);
  @$pb.TagNumber(4)
  set pourcentageTemps($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPourcentageTemps() => $_has(3);
  @$pb.TagNumber(4)
  void clearPourcentageTemps() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get dateLimite => $_getN(4);
  @$pb.TagNumber(5)
  set dateLimite($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDateLimite() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateLimite() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureDateLimite() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
