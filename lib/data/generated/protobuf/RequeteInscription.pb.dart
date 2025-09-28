// This is a generated file - do not edit.
//
// Generated from protobuf/RequeteInscription.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RequeteConnexion extends $pb.GeneratedMessage {
  factory RequeteConnexion({
    $core.String? nom,
    $core.String? motDePasse,
  }) {
    final result = create();
    if (nom != null) result.nom = nom;
    if (motDePasse != null) result.motDePasse = motDePasse;
    return result;
  }

  RequeteConnexion._();

  factory RequeteConnexion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequeteConnexion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequeteConnexion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nom')
    ..aOS(2, _omitFieldNames ? '' : 'motDePasse', protoName: 'motDePasse')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequeteConnexion clone() => RequeteConnexion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequeteConnexion copyWith(void Function(RequeteConnexion) updates) =>
      super.copyWith((message) => updates(message as RequeteConnexion))
          as RequeteConnexion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequeteConnexion create() => RequeteConnexion._();
  @$core.override
  RequeteConnexion createEmptyInstance() => create();
  static $pb.PbList<RequeteConnexion> createRepeated() =>
      $pb.PbList<RequeteConnexion>();
  @$core.pragma('dart2js:noInline')
  static RequeteConnexion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequeteConnexion>(create);
  static RequeteConnexion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nom => $_getSZ(0);
  @$pb.TagNumber(1)
  set nom($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNom() => $_has(0);
  @$pb.TagNumber(1)
  void clearNom() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get motDePasse => $_getSZ(1);
  @$pb.TagNumber(2)
  set motDePasse($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMotDePasse() => $_has(1);
  @$pb.TagNumber(2)
  void clearMotDePasse() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
