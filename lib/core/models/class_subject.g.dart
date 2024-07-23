// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_subject.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClassSubjectCollection on Isar {
  IsarCollection<ClassSubject> get classSubjects => this.collection();
}

const ClassSubjectSchema = CollectionSchema(
  name: r'ClassSubject',
  id: 7163209069136644818,
  properties: {
    r'classDuration': PropertySchema(
      id: 0,
      name: r'classDuration',
      type: IsarType.object,
      target: r'ClassDuration',
    ),
    r'className': PropertySchema(
      id: 1,
      name: r'className',
      type: IsarType.string,
    ),
    r'classStatusInt': PropertySchema(
      id: 2,
      name: r'classStatusInt',
      type: IsarType.int,
      enumMap: _ClassSubjectclassStatusIntEnumValueMap,
    ),
    r'classroom': PropertySchema(
      id: 3,
      name: r'classroom',
      type: IsarType.string,
    ),
    r'professor': PropertySchema(
      id: 4,
      name: r'professor',
      type: IsarType.string,
    )
  },
  estimateSize: _classSubjectEstimateSize,
  serialize: _classSubjectSerialize,
  deserialize: _classSubjectDeserialize,
  deserializeProp: _classSubjectDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'subClasses': LinkSchema(
      id: 4423854757118173323,
      name: r'subClasses',
      target: r'ClassSubject',
      single: false,
    )
  },
  embeddedSchemas: {r'ClassDuration': ClassDurationSchema},
  getId: _classSubjectGetId,
  getLinks: _classSubjectGetLinks,
  attach: _classSubjectAttach,
  version: '3.1.7',
);

int _classSubjectEstimateSize(
  ClassSubject object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      ClassDurationSchema.estimateSize(
          object.classDuration, allOffsets[ClassDuration]!, allOffsets);
  bytesCount += 3 + object.className.length * 3;
  bytesCount += 3 + object.classroom.length * 3;
  bytesCount += 3 + object.professor.length * 3;
  return bytesCount;
}

void _classSubjectSerialize(
  ClassSubject object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<ClassDuration>(
    offsets[0],
    allOffsets,
    ClassDurationSchema.serialize,
    object.classDuration,
  );
  writer.writeString(offsets[1], object.className);
  writer.writeInt(offsets[2], object.classStatusInt?.index);
  writer.writeString(offsets[3], object.classroom);
  writer.writeString(offsets[4], object.professor);
}

ClassSubject _classSubjectDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ClassSubject();
  object.classDuration = reader.readObjectOrNull<ClassDuration>(
        offsets[0],
        ClassDurationSchema.deserialize,
        allOffsets,
      ) ??
      ClassDuration();
  object.className = reader.readString(offsets[1]);
  object.classStatusInt =
      _ClassSubjectclassStatusIntValueEnumMap[reader.readIntOrNull(offsets[2])];
  object.classroom = reader.readString(offsets[3]);
  object.id = id;
  object.professor = reader.readString(offsets[4]);
  return object;
}

P _classSubjectDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<ClassDuration>(
            offset,
            ClassDurationSchema.deserialize,
            allOffsets,
          ) ??
          ClassDuration()) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_ClassSubjectclassStatusIntValueEnumMap[
          reader.readIntOrNull(offset)]) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ClassSubjectclassStatusIntEnumValueMap = {
  'nadomescanje': 0,
  'zaposlitev': 1,
  'odpadlaUra': 2,
  'vecSkupin': 3,
  'dogodek': 4,
  'pocitnice': 5,
};
const _ClassSubjectclassStatusIntValueEnumMap = {
  0: ClassStatus.nadomescanje,
  1: ClassStatus.zaposlitev,
  2: ClassStatus.odpadlaUra,
  3: ClassStatus.vecSkupin,
  4: ClassStatus.dogodek,
  5: ClassStatus.pocitnice,
};

Id _classSubjectGetId(ClassSubject object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _classSubjectGetLinks(ClassSubject object) {
  return [object.subClasses];
}

void _classSubjectAttach(
    IsarCollection<dynamic> col, Id id, ClassSubject object) {
  object.id = id;
  object.subClasses
      .attach(col, col.isar.collection<ClassSubject>(), r'subClasses', id);
}

extension ClassSubjectQueryWhereSort
    on QueryBuilder<ClassSubject, ClassSubject, QWhere> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClassSubjectQueryWhere
    on QueryBuilder<ClassSubject, ClassSubject, QWhereClause> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ClassSubject, ClassSubject, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterWhereClause> idBetween(
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

extension ClassSubjectQueryFilter
    on QueryBuilder<ClassSubject, ClassSubject, QFilterCondition> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'className',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'className',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'className',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'className',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classStatusIntIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'classStatusInt',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classStatusIntIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'classStatusInt',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classStatusIntEqualTo(ClassStatus? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classStatusInt',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classStatusIntGreaterThan(
    ClassStatus? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'classStatusInt',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classStatusIntLessThan(
    ClassStatus? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'classStatusInt',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classStatusIntBetween(
    ClassStatus? lower,
    ClassStatus? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'classStatusInt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classroom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'classroom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'classroom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'classroom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'classroom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'classroom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'classroom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'classroom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classroom',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      classroomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'classroom',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'professor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'professor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'professor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'professor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'professor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'professor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'professor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'professor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'professor',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      professorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'professor',
        value: '',
      ));
    });
  }
}

extension ClassSubjectQueryObject
    on QueryBuilder<ClassSubject, ClassSubject, QFilterCondition> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition> classDuration(
      FilterQuery<ClassDuration> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'classDuration');
    });
  }
}

extension ClassSubjectQueryLinks
    on QueryBuilder<ClassSubject, ClassSubject, QFilterCondition> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition> subClasses(
      FilterQuery<ClassSubject> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'subClasses');
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      subClassesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subClasses', length, true, length, true);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      subClassesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subClasses', 0, true, 0, true);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      subClassesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subClasses', 0, false, 999999, true);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      subClassesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subClasses', 0, true, length, include);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      subClassesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'subClasses', length, include, 999999, true);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterFilterCondition>
      subClassesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'subClasses', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ClassSubjectQuerySortBy
    on QueryBuilder<ClassSubject, ClassSubject, QSortBy> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> sortByClassName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> sortByClassNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy>
      sortByClassStatusInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classStatusInt', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy>
      sortByClassStatusIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classStatusInt', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> sortByClassroom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classroom', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> sortByClassroomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classroom', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> sortByProfessor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'professor', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> sortByProfessorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'professor', Sort.desc);
    });
  }
}

extension ClassSubjectQuerySortThenBy
    on QueryBuilder<ClassSubject, ClassSubject, QSortThenBy> {
  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByClassName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByClassNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy>
      thenByClassStatusInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classStatusInt', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy>
      thenByClassStatusIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classStatusInt', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByClassroom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classroom', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByClassroomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classroom', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByProfessor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'professor', Sort.asc);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QAfterSortBy> thenByProfessorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'professor', Sort.desc);
    });
  }
}

extension ClassSubjectQueryWhereDistinct
    on QueryBuilder<ClassSubject, ClassSubject, QDistinct> {
  QueryBuilder<ClassSubject, ClassSubject, QDistinct> distinctByClassName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'className', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QDistinct>
      distinctByClassStatusInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'classStatusInt');
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QDistinct> distinctByClassroom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'classroom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClassSubject, ClassSubject, QDistinct> distinctByProfessor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'professor', caseSensitive: caseSensitive);
    });
  }
}

extension ClassSubjectQueryProperty
    on QueryBuilder<ClassSubject, ClassSubject, QQueryProperty> {
  QueryBuilder<ClassSubject, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ClassSubject, ClassDuration, QQueryOperations>
      classDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classDuration');
    });
  }

  QueryBuilder<ClassSubject, String, QQueryOperations> classNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'className');
    });
  }

  QueryBuilder<ClassSubject, ClassStatus?, QQueryOperations>
      classStatusIntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classStatusInt');
    });
  }

  QueryBuilder<ClassSubject, String, QQueryOperations> classroomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classroom');
    });
  }

  QueryBuilder<ClassSubject, String, QQueryOperations> professorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'professor');
    });
  }
}
