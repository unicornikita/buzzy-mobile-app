// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'd2aad74e1c983d5602173322805bb4b4e3671081';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$apiServiceHash() => r'fcd109800a33230d938c593a35ea765a179fec0c';

/// See also [apiService].
@ProviderFor(apiService)
final apiServiceProvider = AutoDisposeProvider<ApiService>.internal(
  apiService,
  name: r'apiServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$apiServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ApiServiceRef = AutoDisposeProviderRef<ApiService>;
String _$weeklyScheduleRepositoryHash() =>
    r'f29b2b5575b46098bb88f8c00976f8005b6c48c5';

/// See also [weeklyScheduleRepository].
@ProviderFor(weeklyScheduleRepository)
final weeklyScheduleRepositoryProvider =
    AutoDisposeProvider<WeeklyScheduleRepository>.internal(
  weeklyScheduleRepository,
  name: r'weeklyScheduleRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weeklyScheduleRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeeklyScheduleRepositoryRef
    = AutoDisposeProviderRef<WeeklyScheduleRepository>;
String _$weeklyScheduleHash() => r'8a8222cf81cea2f629144c56c79ae32acd7f4307';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [weeklySchedule].
@ProviderFor(weeklySchedule)
const weeklyScheduleProvider = WeeklyScheduleFamily();

/// See also [weeklySchedule].
class WeeklyScheduleFamily extends Family<AsyncValue<WeeklySchedule?>> {
  /// See also [weeklySchedule].
  const WeeklyScheduleFamily();

  /// See also [weeklySchedule].
  WeeklyScheduleProvider call(
    String classURL,
  ) {
    return WeeklyScheduleProvider(
      classURL,
    );
  }

  @override
  WeeklyScheduleProvider getProviderOverride(
    covariant WeeklyScheduleProvider provider,
  ) {
    return call(
      provider.classURL,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weeklyScheduleProvider';
}

/// See also [weeklySchedule].
class WeeklyScheduleProvider
    extends AutoDisposeFutureProvider<WeeklySchedule?> {
  /// See also [weeklySchedule].
  WeeklyScheduleProvider(
    String classURL,
  ) : this._internal(
          (ref) => weeklySchedule(
            ref as WeeklyScheduleRef,
            classURL,
          ),
          from: weeklyScheduleProvider,
          name: r'weeklyScheduleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weeklyScheduleHash,
          dependencies: WeeklyScheduleFamily._dependencies,
          allTransitiveDependencies:
              WeeklyScheduleFamily._allTransitiveDependencies,
          classURL: classURL,
        );

  WeeklyScheduleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.classURL,
  }) : super.internal();

  final String classURL;

  @override
  Override overrideWith(
    FutureOr<WeeklySchedule?> Function(WeeklyScheduleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeeklyScheduleProvider._internal(
        (ref) => create(ref as WeeklyScheduleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        classURL: classURL,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WeeklySchedule?> createElement() {
    return _WeeklyScheduleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeeklyScheduleProvider && other.classURL == classURL;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, classURL.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeeklyScheduleRef on AutoDisposeFutureProviderRef<WeeklySchedule?> {
  /// The parameter `classURL` of this provider.
  String get classURL;
}

class _WeeklyScheduleProviderElement
    extends AutoDisposeFutureProviderElement<WeeklySchedule?>
    with WeeklyScheduleRef {
  _WeeklyScheduleProviderElement(super.provider);

  @override
  String get classURL => (origin as WeeklyScheduleProvider).classURL;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
