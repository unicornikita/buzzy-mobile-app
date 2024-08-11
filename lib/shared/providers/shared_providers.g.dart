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
String _$weeklyScheduleListHash() =>
    r'3746f96ef384e461e44c885368d1b5ba0c639177';

/// See also [WeeklyScheduleList].
@ProviderFor(WeeklyScheduleList)
final weeklyScheduleListProvider = AutoDisposeAsyncNotifierProvider<
    WeeklyScheduleList, WeeklySchedule?>.internal(
  WeeklyScheduleList.new,
  name: r'weeklyScheduleListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weeklyScheduleListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WeeklyScheduleList = AutoDisposeAsyncNotifier<WeeklySchedule?>;
String _$classUrlHash() => r'2c5ad27a5fbdef873d7cd3b7b3de513d757aae83';

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
    r'8343819f77c11d27142cb26422d700bd3f90ed82';

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
String _$selectedClassSubjectHash() =>
    r'590fe7d6ca628fc8c42cb0837f651bbfe3a4abb6';

/// See also [SelectedClassSubject].
@ProviderFor(SelectedClassSubject)
final selectedClassSubjectProvider =
    AutoDisposeNotifierProvider<SelectedClassSubject, ClassSubject?>.internal(
  SelectedClassSubject.new,
  name: r'selectedClassSubjectProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedClassSubjectHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedClassSubject = AutoDisposeNotifier<ClassSubject?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
