// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps_data.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetStepsDataCollection on Isar {
  IsarCollection<int, StepsData> get stepsDatas => this.collection();
}

const StepsDataSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'StepsData',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'date',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'stepsTaken',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, StepsData>(
    serialize: serializeStepsData,
    deserialize: deserializeStepsData,
    deserializeProperty: deserializeStepsDataProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeStepsData(IsarWriter writer, StepsData object) {
  IsarCore.writeLong(writer, 1, object.date.toUtc().microsecondsSinceEpoch);
  IsarCore.writeLong(writer, 2, object.stepsTaken);
  return object.id;
}

@isarProtected
StepsData deserializeStepsData(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final DateTime _date;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _date = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _date = DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final int _stepsTaken;
  _stepsTaken = IsarCore.readLong(reader, 2);
  final object = StepsData(
    id: _id,
    date: _date,
    stepsTaken: _stepsTaken,
  );
  return object;
}

@isarProtected
dynamic deserializeStepsDataProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        final value = IsarCore.readLong(reader, 1);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 2:
      return IsarCore.readLong(reader, 2);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _StepsDataUpdate {
  bool call({
    required int id,
    DateTime? date,
    int? stepsTaken,
  });
}

class _StepsDataUpdateImpl implements _StepsDataUpdate {
  const _StepsDataUpdateImpl(this.collection);

  final IsarCollection<int, StepsData> collection;

  @override
  bool call({
    required int id,
    Object? date = ignore,
    Object? stepsTaken = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (date != ignore) 1: date as DateTime?,
          if (stepsTaken != ignore) 2: stepsTaken as int?,
        }) >
        0;
  }
}

sealed class _StepsDataUpdateAll {
  int call({
    required List<int> id,
    DateTime? date,
    int? stepsTaken,
  });
}

class _StepsDataUpdateAllImpl implements _StepsDataUpdateAll {
  const _StepsDataUpdateAllImpl(this.collection);

  final IsarCollection<int, StepsData> collection;

  @override
  int call({
    required List<int> id,
    Object? date = ignore,
    Object? stepsTaken = ignore,
  }) {
    return collection.updateProperties(id, {
      if (date != ignore) 1: date as DateTime?,
      if (stepsTaken != ignore) 2: stepsTaken as int?,
    });
  }
}

extension StepsDataUpdate on IsarCollection<int, StepsData> {
  _StepsDataUpdate get update => _StepsDataUpdateImpl(this);

  _StepsDataUpdateAll get updateAll => _StepsDataUpdateAllImpl(this);
}

sealed class _StepsDataQueryUpdate {
  int call({
    DateTime? date,
    int? stepsTaken,
  });
}

class _StepsDataQueryUpdateImpl implements _StepsDataQueryUpdate {
  const _StepsDataQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<StepsData> query;
  final int? limit;

  @override
  int call({
    Object? date = ignore,
    Object? stepsTaken = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (date != ignore) 1: date as DateTime?,
      if (stepsTaken != ignore) 2: stepsTaken as int?,
    });
  }
}

extension StepsDataQueryUpdate on IsarQuery<StepsData> {
  _StepsDataQueryUpdate get updateFirst =>
      _StepsDataQueryUpdateImpl(this, limit: 1);

  _StepsDataQueryUpdate get updateAll => _StepsDataQueryUpdateImpl(this);
}

class _StepsDataQueryBuilderUpdateImpl implements _StepsDataQueryUpdate {
  const _StepsDataQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<StepsData, StepsData, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? date = ignore,
    Object? stepsTaken = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (date != ignore) 1: date as DateTime?,
        if (stepsTaken != ignore) 2: stepsTaken as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension StepsDataQueryBuilderUpdate
    on QueryBuilder<StepsData, StepsData, QOperations> {
  _StepsDataQueryUpdate get updateFirst =>
      _StepsDataQueryBuilderUpdateImpl(this, limit: 1);

  _StepsDataQueryUpdate get updateAll => _StepsDataQueryBuilderUpdateImpl(this);
}

extension StepsDataQueryFilter
    on QueryBuilder<StepsData, StepsData, QFilterCondition> {
  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> dateEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> dateGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition>
      dateGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> dateLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition>
      dateLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> stepsTakenEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition>
      stepsTakenGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition>
      stepsTakenGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> stepsTakenLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition>
      stepsTakenLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterFilterCondition> stepsTakenBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension StepsDataQueryObject
    on QueryBuilder<StepsData, StepsData, QFilterCondition> {}

extension StepsDataQuerySortBy on QueryBuilder<StepsData, StepsData, QSortBy> {
  QueryBuilder<StepsData, StepsData, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> sortByStepsTaken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> sortByStepsTakenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension StepsDataQuerySortThenBy
    on QueryBuilder<StepsData, StepsData, QSortThenBy> {
  QueryBuilder<StepsData, StepsData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> thenByStepsTaken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterSortBy> thenByStepsTakenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension StepsDataQueryWhereDistinct
    on QueryBuilder<StepsData, StepsData, QDistinct> {
  QueryBuilder<StepsData, StepsData, QAfterDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<StepsData, StepsData, QAfterDistinct> distinctByStepsTaken() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension StepsDataQueryProperty1
    on QueryBuilder<StepsData, StepsData, QProperty> {
  QueryBuilder<StepsData, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<StepsData, DateTime, QAfterProperty> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<StepsData, int, QAfterProperty> stepsTakenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension StepsDataQueryProperty2<R>
    on QueryBuilder<StepsData, R, QAfterProperty> {
  QueryBuilder<StepsData, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<StepsData, (R, DateTime), QAfterProperty> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<StepsData, (R, int), QAfterProperty> stepsTakenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension StepsDataQueryProperty3<R1, R2>
    on QueryBuilder<StepsData, (R1, R2), QAfterProperty> {
  QueryBuilder<StepsData, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<StepsData, (R1, R2, DateTime), QOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<StepsData, (R1, R2, int), QOperations> stepsTakenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}
