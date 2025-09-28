// This is a generated file - do not edit.
//
// Generated from protobuf/ReponseAccueilItemAvecPhoto.proto.

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

class ReponseAccueilItemAvecPhoto extends $pb.GeneratedMessage {
  factory ReponseAccueilItemAvecPhoto({
    $fixnum.Int64? id,
    $core.String? nom,
    $core.int? pourcentageAvancement,
    $core.int? pourcentageTemps,
    $0.Timestamp? dateLimite,
    $fixnum.Int64? idPhoto,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (nom != null) result.nom = nom;
    if (pourcentageAvancement != null)
      result.pourcentageAvancement = pourcentageAvancement;
    if (pourcentageTemps != null) result.pourcentageTemps = pourcentageTemps;
    if (dateLimite != null) result.dateLimite = dateLimite;
    if (idPhoto != null) result.idPhoto = idPhoto;
    return result;
  }

  ReponseAccueilItemAvecPhoto._();

  factory ReponseAccueilItemAvecPhoto.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReponseAccueilItemAvecPhoto.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReponseAccueilItemAvecPhoto',
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
    ..aInt64(6, _omitFieldNames ? '' : 'idPhoto', protoName: 'idPhoto')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseAccueilItemAvecPhoto clone() =>
      ReponseAccueilItemAvecPhoto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseAccueilItemAvecPhoto copyWith(
          void Function(ReponseAccueilItemAvecPhoto) updates) =>
      super.copyWith(
              (message) => updates(message as ReponseAccueilItemAvecPhoto))
          as ReponseAccueilItemAvecPhoto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReponseAccueilItemAvecPhoto create() =>
      ReponseAccueilItemAvecPhoto._();
  @$core.override
  ReponseAccueilItemAvecPhoto createEmptyInstance() => create();
  static $pb.PbList<ReponseAccueilItemAvecPhoto> createRepeated() =>
      $pb.PbList<ReponseAccueilItemAvecPhoto>();
  @$core.pragma('dart2js:noInline')
  static ReponseAccueilItemAvecPhoto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReponseAccueilItemAvecPhoto>(create);
  static ReponseAccueilItemAvecPhoto? _defaultInstance;

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

  @$pb.TagNumber(6)
  $fixnum.Int64 get idPhoto => $_getI64(5);
  @$pb.TagNumber(6)
  set idPhoto($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIdPhoto() => $_has(5);
  @$pb.TagNumber(6)
  void clearIdPhoto() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
