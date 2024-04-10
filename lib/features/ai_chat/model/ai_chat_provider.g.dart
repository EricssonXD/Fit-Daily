// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_provider.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetAIChatMessageCollection on Isar {
  IsarCollection<int, AIChatMessage> get aIChatMessages => this.collection();
}

const AIChatMessageSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'AIChatMessage',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'message',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isUser',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'time',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, AIChatMessage>(
    serialize: serializeAIChatMessage,
    deserialize: deserializeAIChatMessage,
    deserializeProperty: deserializeAIChatMessageProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeAIChatMessage(IsarWriter writer, AIChatMessage object) {
  IsarCore.writeString(writer, 1, object.message);
  IsarCore.writeBool(writer, 2, object.isUser);
  IsarCore.writeLong(writer, 3, object.time.toUtc().microsecondsSinceEpoch);
  return object.id;
}

@isarProtected
AIChatMessage deserializeAIChatMessage(IsarReader reader) {
  final String _message;
  _message = IsarCore.readString(reader, 1) ?? '';
  final bool _isUser;
  _isUser = IsarCore.readBool(reader, 2);
  final DateTime _time;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _time = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _time = DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final int _id;
  _id = IsarCore.readId(reader);
  final object = AIChatMessage(
    message: _message,
    isUser: _isUser,
    time: _time,
    id: _id,
  );
  return object;
}

@isarProtected
dynamic deserializeAIChatMessageProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readBool(reader, 2);
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 0:
      return IsarCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _AIChatMessageUpdate {
  bool call({
    required int id,
    String? message,
    bool? isUser,
    DateTime? time,
  });
}

class _AIChatMessageUpdateImpl implements _AIChatMessageUpdate {
  const _AIChatMessageUpdateImpl(this.collection);

  final IsarCollection<int, AIChatMessage> collection;

  @override
  bool call({
    required int id,
    Object? message = ignore,
    Object? isUser = ignore,
    Object? time = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (message != ignore) 1: message as String?,
          if (isUser != ignore) 2: isUser as bool?,
          if (time != ignore) 3: time as DateTime?,
        }) >
        0;
  }
}

sealed class _AIChatMessageUpdateAll {
  int call({
    required List<int> id,
    String? message,
    bool? isUser,
    DateTime? time,
  });
}

class _AIChatMessageUpdateAllImpl implements _AIChatMessageUpdateAll {
  const _AIChatMessageUpdateAllImpl(this.collection);

  final IsarCollection<int, AIChatMessage> collection;

  @override
  int call({
    required List<int> id,
    Object? message = ignore,
    Object? isUser = ignore,
    Object? time = ignore,
  }) {
    return collection.updateProperties(id, {
      if (message != ignore) 1: message as String?,
      if (isUser != ignore) 2: isUser as bool?,
      if (time != ignore) 3: time as DateTime?,
    });
  }
}

extension AIChatMessageUpdate on IsarCollection<int, AIChatMessage> {
  _AIChatMessageUpdate get update => _AIChatMessageUpdateImpl(this);

  _AIChatMessageUpdateAll get updateAll => _AIChatMessageUpdateAllImpl(this);
}

sealed class _AIChatMessageQueryUpdate {
  int call({
    String? message,
    bool? isUser,
    DateTime? time,
  });
}

class _AIChatMessageQueryUpdateImpl implements _AIChatMessageQueryUpdate {
  const _AIChatMessageQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<AIChatMessage> query;
  final int? limit;

  @override
  int call({
    Object? message = ignore,
    Object? isUser = ignore,
    Object? time = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (message != ignore) 1: message as String?,
      if (isUser != ignore) 2: isUser as bool?,
      if (time != ignore) 3: time as DateTime?,
    });
  }
}

extension AIChatMessageQueryUpdate on IsarQuery<AIChatMessage> {
  _AIChatMessageQueryUpdate get updateFirst =>
      _AIChatMessageQueryUpdateImpl(this, limit: 1);

  _AIChatMessageQueryUpdate get updateAll =>
      _AIChatMessageQueryUpdateImpl(this);
}

class _AIChatMessageQueryBuilderUpdateImpl
    implements _AIChatMessageQueryUpdate {
  const _AIChatMessageQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<AIChatMessage, AIChatMessage, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? message = ignore,
    Object? isUser = ignore,
    Object? time = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (message != ignore) 1: message as String?,
        if (isUser != ignore) 2: isUser as bool?,
        if (time != ignore) 3: time as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension AIChatMessageQueryBuilderUpdate
    on QueryBuilder<AIChatMessage, AIChatMessage, QOperations> {
  _AIChatMessageQueryUpdate get updateFirst =>
      _AIChatMessageQueryBuilderUpdateImpl(this, limit: 1);

  _AIChatMessageQueryUpdate get updateAll =>
      _AIChatMessageQueryBuilderUpdateImpl(this);
}

extension AIChatMessageQueryFilter
    on QueryBuilder<AIChatMessage, AIChatMessage, QFilterCondition> {
  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      isUserEqualTo(
    bool value,
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

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition> timeEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      timeGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      timeGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      timeLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      timeLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition> timeBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
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

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition>
      idLessThanOrEqualTo(
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

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterFilterCondition> idBetween(
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
}

extension AIChatMessageQueryObject
    on QueryBuilder<AIChatMessage, AIChatMessage, QFilterCondition> {}

extension AIChatMessageQuerySortBy
    on QueryBuilder<AIChatMessage, AIChatMessage, QSortBy> {
  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByMessageDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByIsUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByIsUserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension AIChatMessageQuerySortThenBy
    on QueryBuilder<AIChatMessage, AIChatMessage, QSortThenBy> {
  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByMessageDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByIsUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByIsUserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension AIChatMessageQueryWhereDistinct
    on QueryBuilder<AIChatMessage, AIChatMessage, QDistinct> {
  QueryBuilder<AIChatMessage, AIChatMessage, QAfterDistinct> distinctByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterDistinct>
      distinctByIsUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<AIChatMessage, AIChatMessage, QAfterDistinct> distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }
}

extension AIChatMessageQueryProperty1
    on QueryBuilder<AIChatMessage, AIChatMessage, QProperty> {
  QueryBuilder<AIChatMessage, String, QAfterProperty> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AIChatMessage, bool, QAfterProperty> isUserProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AIChatMessage, DateTime, QAfterProperty> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AIChatMessage, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension AIChatMessageQueryProperty2<R>
    on QueryBuilder<AIChatMessage, R, QAfterProperty> {
  QueryBuilder<AIChatMessage, (R, String), QAfterProperty> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AIChatMessage, (R, bool), QAfterProperty> isUserProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AIChatMessage, (R, DateTime), QAfterProperty> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AIChatMessage, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension AIChatMessageQueryProperty3<R1, R2>
    on QueryBuilder<AIChatMessage, (R1, R2), QAfterProperty> {
  QueryBuilder<AIChatMessage, (R1, R2, String), QOperations> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AIChatMessage, (R1, R2, bool), QOperations> isUserProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AIChatMessage, (R1, R2, DateTime), QOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AIChatMessage, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$aIChatManagerHash() => r'e46ee15c350482ae4dbef36d8e0580e1a1ebf6f1';

/// See also [AIChatManager].
@ProviderFor(AIChatManager)
final aIChatManagerProvider =
    AutoDisposeNotifierProvider<AIChatManager, List<AIChatMessage>>.internal(
  AIChatManager.new,
  name: r'aIChatManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$aIChatManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AIChatManager = AutoDisposeNotifier<List<AIChatMessage>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
