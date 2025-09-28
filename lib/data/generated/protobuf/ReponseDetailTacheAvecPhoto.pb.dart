// This is a generated file - do not edit.
//
// Generated from protobuf/ReponseDetailTacheAvecPhoto.proto.

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
import 'ChangementAvancement.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReponseDetailTacheAvecPhoto extends $pb.GeneratedMessage {
  factory ReponseDetailTacheAvecPhoto({
    $fixnum.Int64? id,
    $core.String? nom,
    $0.Timestamp? dateLimite,
    $core.Iterable<$1.ChangementAvancement>? changements,
    $core.int? pourcentageAvancement,
    $core.double? pourcentageTemps,
    $fixnum.Int64? photoId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (nom != null) result.nom = nom;
    if (dateLimite != null) result.dateLimite = dateLimite;
    if (changements != null) result.changements.addAll(changements);
    if (pourcentageAvancement != null)
      result.pourcentageAvancement = pourcentageAvancement;
    if (pourcentageTemps != null) result.pourcentageTemps = pourcentageTemps;
    if (photoId != null) result.photoId = photoId;
    return result;
  }

  ReponseDetailTacheAvecPhoto._();

  factory ReponseDetailTacheAvecPhoto.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReponseDetailTacheAvecPhoto.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReponseDetailTacheAvecPhoto',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'nom')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'dateLimite',
        protoName: 'dateLimite', subBuilder: $0.Timestamp.create)
    ..pc<$1.ChangementAvancement>(
        4, _omitFieldNames ? '' : 'changements', $pb.PbFieldType.PM,
        subBuilder: $1.ChangementAvancement.create)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'pourcentageAvancement', $pb.PbFieldType.O3,
        protoName: 'pourcentageAvancement')
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'pourcentageTemps', $pb.PbFieldType.OD,
        protoName: 'pourcentageTemps')
    ..aInt64(7, _omitFieldNames ? '' : 'photoId', protoName: 'photoId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseDetailTacheAvecPhoto clone() =>
      ReponseDetailTacheAvecPhoto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseDetailTacheAvecPhoto copyWith(
          void Function(ReponseDetailTacheAvecPhoto) updates) =>
      super.copyWith(
              (message) => updates(message as ReponseDetailTacheAvecPhoto))
          as ReponseDetailTacheAvecPhoto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReponseDetailTacheAvecPhoto create() =>
      ReponseDetailTacheAvecPhoto._();
  @$core.override
  ReponseDetailTacheAvecPhoto createEmptyInstance() => create();
  static $pb.PbList<ReponseDetailTacheAvecPhoto> createRepeated() =>
      $pb.PbList<ReponseDetailTacheAvecPhoto>();
  @$core.pragma('dart2js:noInline')
  static ReponseDetailTacheAvecPhoto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReponseDetailTacheAvecPhoto>(create);
  static ReponseDetailTacheAvecPhoto? _defaultInstance;

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
  $0.Timestamp get dateLimite => $_getN(2);
  @$pb.TagNumber(3)
  set dateLimite($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDateLimite() => $_has(2);
  @$pb.TagNumber(3)
  void clearDateLimite() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureDateLimite() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<$1.ChangementAvancement> get changements => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get pourcentageAvancement => $_getIZ(4);
  @$pb.TagNumber(5)
  set pourcentageAvancement($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPourcentageAvancement() => $_has(4);
  @$pb.TagNumber(5)
  void clearPourcentageAvancement() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get pourcentageTemps => $_getN(5);
  @$pb.TagNumber(6)
  set pourcentageTemps($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPourcentageTemps() => $_has(5);
  @$pb.TagNumber(6)
  void clearPourcentageTemps() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get photoId => $_getI64(6);
  @$pb.TagNumber(7)
  set photoId($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPhotoId() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhotoId() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
