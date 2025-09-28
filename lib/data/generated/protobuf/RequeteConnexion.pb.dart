// This is a generated file - do not edit.
//
// Generated from protobuf/RequeteConnexion.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RequeteInscription extends $pb.GeneratedMessage {
  factory RequeteInscription({
    $core.String? nom,
    $core.String? motDePasse,
    $core.String? confirmationMotDePasse,
  }) {
    final result = create();
    if (nom != null) result.nom = nom;
    if (motDePasse != null) result.motDePasse = motDePasse;
    if (confirmationMotDePasse != null)
      result.confirmationMotDePasse = confirmationMotDePasse;
    return result;
  }

  RequeteInscription._();

  factory RequeteInscription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequeteInscription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequeteInscription',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nom')
    ..aOS(2, _omitFieldNames ? '' : 'motDePasse', protoName: 'motDePasse')
    ..aOS(3, _omitFieldNames ? '' : 'confirmationMotDePasse',
        protoName: 'confirmationMotDePasse')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequeteInscription clone() => RequeteInscription()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequeteInscription copyWith(void Function(RequeteInscription) updates) =>
      super.copyWith((message) => updates(message as RequeteInscription))
          as RequeteInscription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequeteInscription create() => RequeteInscription._();
  @$core.override
  RequeteInscription createEmptyInstance() => create();
  static $pb.PbList<RequeteInscription> createRepeated() =>
      $pb.PbList<RequeteInscription>();
  @$core.pragma('dart2js:noInline')
  static RequeteInscription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequeteInscription>(create);
  static RequeteInscription? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get confirmationMotDePasse => $_getSZ(2);
  @$pb.TagNumber(3)
  set confirmationMotDePasse($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConfirmationMotDePasse() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmationMotDePasse() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
