// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDailyScheduleCollection on Isar {
  IsarCollection<DailySchedule> get dailySchedules => this.collection();
}

const DailyScheduleSchema = CollectionSchema(
  name: r'DailySchedule',
  id: 448071483870728588,
  properties: {
    r'dayOfTheWeek': PropertySchema(
      id: 0,
      name: r'dayOfTheWeek',
      type: IsarType.string,
    )
  },
  estimateSize: _dailyScheduleEstimateSize,
  serialize: _dailyScheduleSerialize,
  deserialize: _dailyScheduleDeserialize,
  deserializeProp: _dailyScheduleDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'classSubjects': LinkSchema(
      id: 6546574639614181069,
      name: r'classSubjects',
      target: r'ClassSubject',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _dailyScheduleGetId,
  getLinks: _dailyScheduleGetLinks,
  attach: _dailyScheduleAttach,
  version: '3.1.7',
);

int _dailyScheduleEstimateSize(
  DailySchedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dayOfTheWeek.length * 3;
  return bytesCount;
}

void _dailyScheduleSerialize(
  DailySchedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dayOfTheWeek);
}

DailySchedule _dailyScheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DailySchedule();
  object.dayOfTheWeek = reader.readString(offsets[0]);
  object.id = id;
  return object;
}

P _dailyScheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dailyScheduleGetId(DailySchedule object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dailyScheduleGetLinks(DailySchedule object) {
  return [object.classSubjects];
}

void _dailyScheduleAttach(
    IsarCollection<dynamic> col, Id id, DailySchedule object) {
  object.id = id;
  object.classSubjects
      .attach(col, col.isar.collection<ClassSubject>(), r'classSubjects', id);
}

extension DailyScheduleQueryWhereSort
    on QueryBuilder<DailySchedule, DailySchedule, QWhere> {
  QueryBuilder<DailySchedule, DailySchedule, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DailyScheduleQueryWhere
    on QueryBuilder<DailySchedule, DailySchedule, QWhereClause> {
  QueryBuilder<DailySchedule, DailySchedule, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DailySchedule, DailySchedule, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterWhereClause> idBetween(
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

extension DailyScheduleQueryFilter
    on QueryBuilder<DailySchedule, DailySchedule, QFilterCondition> {
  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dayOfTheWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dayOfTheWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dayOfTheWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dayOfTheWeek',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dayOfTheWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dayOfTheWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dayOfTheWeek',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dayOfTheWeek',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dayOfTheWeek',
        value: '',
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      dayOfTheWeekIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dayOfTheWeek',
        value: '',
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
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

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition> idBetween(
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

extension DailyScheduleQueryObject
    on QueryBuilder<DailySchedule, DailySchedule, QFilterCondition> {}

extension DailyScheduleQueryLinks
    on QueryBuilder<DailySchedule, DailySchedule, QFilterCondition> {
  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjects(FilterQuery<ClassSubject> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'classSubjects');
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjectsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'classSubjects', length, true, length, true);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'classSubjects', 0, true, 0, true);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'classSubjects', 0, false, 999999, true);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjectsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'classSubjects', 0, true, length, include);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjectsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'classSubjects', length, include, 999999, true);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterFilterCondition>
      classSubjectsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'classSubjects', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DailyScheduleQuerySortBy
    on QueryBuilder<DailySchedule, DailySchedule, QSortBy> {
  QueryBuilder<DailySchedule, DailySchedule, QAfterSortBy>
      sortByDayOfTheWeek() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayOfTheWeek', Sort.asc);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterSortBy>
      sortByDayOfTheWeekDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayOfTheWeek', Sort.desc);
    });
  }
}

extension DailyScheduleQuerySortThenBy
    on QueryBuilder<DailySchedule, DailySchedule, QSortThenBy> {
  QueryBuilder<DailySchedule, DailySchedule, QAfterSortBy>
      thenByDayOfTheWeek() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayOfTheWeek', Sort.asc);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterSortBy>
      thenByDayOfTheWeekDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dayOfTheWeek', Sort.desc);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DailySchedule, DailySchedule, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DailyScheduleQueryWhereDistinct
    on QueryBuilder<DailySchedule, DailySchedule, QDistinct> {
  QueryBuilder<DailySchedule, DailySchedule, QDistinct> distinctByDayOfTheWeek(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dayOfTheWeek', caseSensitive: caseSensitive);
    });
  }
}

extension DailyScheduleQueryProperty
    on QueryBuilder<DailySchedule, DailySchedule, QQueryProperty> {
  QueryBuilder<DailySchedule, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DailySchedule, String, QQueryOperations> dayOfTheWeekProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dayOfTheWeek');
    });
  }
}
