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
String _$weeklyScheduleHash() => r'ce47ab29062cfcf0ba5b10b54d652fa5b76236fe';

/// See also [weeklySchedule].
@ProviderFor(weeklySchedule)
final weeklyScheduleProvider =
    AutoDisposeFutureProvider<WeeklySchedule?>.internal(
  weeklySchedule,
  name: r'weeklyScheduleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weeklyScheduleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeeklyScheduleRef = AutoDisposeFutureProviderRef<WeeklySchedule?>;
String _$classUrlHash() => r'596a1abf2c584923906aceea6b3f738064c47850';

/// See also [ClassUrl].
@ProviderFor(ClassUrl)
final classUrlProvider =
    AutoDisposeAsyncNotifierProvider<ClassUrl, String?>.internal(
  ClassUrl.new,
  name: r'classUrlProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$classUrlHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClassUrl = AutoDisposeAsyncNotifier<String?>;
String _$selectedDayHash() => r'b9519c65833fc797fb5e138bb692ee1998a381e8';

/// See also [SelectedDay].
@ProviderFor(SelectedDay)
final selectedDayProvider =
    AutoDisposeNotifierProvider<SelectedDay, int>.internal(
  SelectedDay.new,
  name: r'selectedDayProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedDayHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedDay = AutoDisposeNotifier<int>;
String _$selectedDailyScheduleIndexHash() =>
    r'8d1c6ccbf54a7c6fc62cca3addc8ce1cc0ce91e2';

/// See also [SelectedDailyScheduleIndex].
@ProviderFor(SelectedDailyScheduleIndex)
final selectedDailyScheduleIndexProvider =
    AutoDisposeNotifierProvider<SelectedDailyScheduleIndex, int>.internal(
  SelectedDailyScheduleIndex.new,
  name: r'selectedDailyScheduleIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedDailyScheduleIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedDailyScheduleIndex = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
