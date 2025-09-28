// This is a generated file - do not edit.
//
// Generated from protobuf/ReponseConnexion.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReponseConnexion extends $pb.GeneratedMessage {
  factory ReponseConnexion({
    $core.String? nomUtilisateur,
  }) {
    final result = create();
    if (nomUtilisateur != null) result.nomUtilisateur = nomUtilisateur;
    return result;
  }

  ReponseConnexion._();

  factory ReponseConnexion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReponseConnexion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReponseConnexion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'kickmyb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nomUtilisateur',
        protoName: 'nomUtilisateur')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseConnexion clone() => ReponseConnexion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReponseConnexion copyWith(void Function(ReponseConnexion) updates) =>
      super.copyWith((message) => updates(message as ReponseConnexion))
          as ReponseConnexion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReponseConnexion create() => ReponseConnexion._();
  @$core.override
  ReponseConnexion createEmptyInstance() => create();
  static $pb.PbList<ReponseConnexion> createRepeated() =>
      $pb.PbList<ReponseConnexion>();
  @$core.pragma('dart2js:noInline')
  static ReponseConnexion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReponseConnexion>(create);
  static ReponseConnexion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nomUtilisateur => $_getSZ(0);
  @$pb.TagNumber(1)
  set nomUtilisateur($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNomUtilisateur() => $_has(0);
  @$pb.TagNumber(1)
  void clearNomUtilisateur() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
