// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_schedule.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeeklyScheduleCollection on Isar {
  IsarCollection<WeeklySchedule> get weeklySchedules => this.collection();
}

const WeeklyScheduleSchema = CollectionSchema(
  name: r'WeeklySchedule',
  id: -6380558441113699971,
  properties: {},
  estimateSize: _weeklyScheduleEstimateSize,
  serialize: _weeklyScheduleSerialize,
  deserialize: _weeklyScheduleDeserialize,
  deserializeProp: _weeklyScheduleDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'dailySchedules': LinkSchema(
      id: -8201571956450588212,
      name: r'dailySchedules',
      target: r'DailySchedule',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _weeklyScheduleGetId,
  getLinks: _weeklyScheduleGetLinks,
  attach: _weeklyScheduleAttach,
  version: '3.1.7',
);

int _weeklyScheduleEstimateSize(
  WeeklySchedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _weeklyScheduleSerialize(
  WeeklySchedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
WeeklySchedule _weeklyScheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeeklySchedule();
  object.id = id;
  return object;
}

P _weeklyScheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _weeklyScheduleGetId(WeeklySchedule object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weeklyScheduleGetLinks(WeeklySchedule object) {
  return [object.dailySchedules];
}

void _weeklyScheduleAttach(
    IsarCollection<dynamic> col, Id id, WeeklySchedule object) {
  object.id = id;
  object.dailySchedules
      .attach(col, col.isar.collection<DailySchedule>(), r'dailySchedules', id);
}

extension WeeklyScheduleQueryWhereSort
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QWhere> {
  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeeklyScheduleQueryWhere
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QWhereClause> {
  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeeklyScheduleQueryFilter
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QFilterCondition> {
  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeeklyScheduleQueryObject
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QFilterCondition> {}

extension WeeklyScheduleQueryLinks
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QFilterCondition> {
  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedules(FilterQuery<DailySchedule> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'dailySchedules');
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedulesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'dailySchedules', length, true, length, true);
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedulesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'dailySchedules', 0, true, 0, true);
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedulesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'dailySchedules', 0, false, 999999, true);
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedulesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'dailySchedules', 0, true, length, include);
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedulesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'dailySchedules', length, include, 999999, true);
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterFilterCondition>
      dailySchedulesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'dailySchedules', lower, includeLower, upper, includeUpper);
    });
  }
}

extension WeeklyScheduleQuerySortBy
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QSortBy> {}

extension WeeklyScheduleQuerySortThenBy
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QSortThenBy> {
  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeeklySchedule, WeeklySchedule, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension WeeklyScheduleQueryWhereDistinct
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QDistinct> {}

extension WeeklyScheduleQueryProperty
    on QueryBuilder<WeeklySchedule, WeeklySchedule, QQueryProperty> {
  QueryBuilder<WeeklySchedule, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
