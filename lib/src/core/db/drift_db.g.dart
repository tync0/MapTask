// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $ResponseTableTable extends ResponseTable
    with TableInfo<$ResponseTableTable, ResponseTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResponseTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, latitude, longitude, address];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'response_table';
  @override
  VerificationContext validateIntegrity(Insertable<ResponseTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResponseTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResponseTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
    );
  }

  @override
  $ResponseTableTable createAlias(String alias) {
    return $ResponseTableTable(attachedDatabase, alias);
  }
}

class ResponseTableData extends DataClass
    implements Insertable<ResponseTableData> {
  final int id;
  final double latitude;
  final double longitude;
  final String address;
  const ResponseTableData(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.address});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['address'] = Variable<String>(address);
    return map;
  }

  ResponseTableCompanion toCompanion(bool nullToAbsent) {
    return ResponseTableCompanion(
      id: Value(id),
      latitude: Value(latitude),
      longitude: Value(longitude),
      address: Value(address),
    );
  }

  factory ResponseTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResponseTableData(
      id: serializer.fromJson<int>(json['id']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      address: serializer.fromJson<String>(json['address']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'address': serializer.toJson<String>(address),
    };
  }

  ResponseTableData copyWith(
          {int? id, double? latitude, double? longitude, String? address}) =>
      ResponseTableData(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        address: address ?? this.address,
      );
  ResponseTableData copyWithCompanion(ResponseTableCompanion data) {
    return ResponseTableData(
      id: data.id.present ? data.id.value : this.id,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      address: data.address.present ? data.address.value : this.address,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResponseTableData(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, latitude, longitude, address);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResponseTableData &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.address == this.address);
}

class ResponseTableCompanion extends UpdateCompanion<ResponseTableData> {
  final Value<int> id;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<String> address;
  const ResponseTableCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.address = const Value.absent(),
  });
  ResponseTableCompanion.insert({
    this.id = const Value.absent(),
    required double latitude,
    required double longitude,
    required String address,
  })  : latitude = Value(latitude),
        longitude = Value(longitude),
        address = Value(address);
  static Insertable<ResponseTableData> custom({
    Expression<int>? id,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<String>? address,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (address != null) 'address': address,
    });
  }

  ResponseTableCompanion copyWith(
      {Value<int>? id,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<String>? address}) {
    return ResponseTableCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      address: address ?? this.address,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResponseTableCompanion(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ResponseTableTable responseTable = $ResponseTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [responseTable];
}

typedef $$ResponseTableTableCreateCompanionBuilder = ResponseTableCompanion
    Function({
  Value<int> id,
  required double latitude,
  required double longitude,
  required String address,
});
typedef $$ResponseTableTableUpdateCompanionBuilder = ResponseTableCompanion
    Function({
  Value<int> id,
  Value<double> latitude,
  Value<double> longitude,
  Value<String> address,
});

class $$ResponseTableTableFilterComposer
    extends Composer<_$AppDatabase, $ResponseTableTable> {
  $$ResponseTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));
}

class $$ResponseTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ResponseTableTable> {
  $$ResponseTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));
}

class $$ResponseTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ResponseTableTable> {
  $$ResponseTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);
}

class $$ResponseTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ResponseTableTable,
    ResponseTableData,
    $$ResponseTableTableFilterComposer,
    $$ResponseTableTableOrderingComposer,
    $$ResponseTableTableAnnotationComposer,
    $$ResponseTableTableCreateCompanionBuilder,
    $$ResponseTableTableUpdateCompanionBuilder,
    (
      ResponseTableData,
      BaseReferences<_$AppDatabase, $ResponseTableTable, ResponseTableData>
    ),
    ResponseTableData,
    PrefetchHooks Function()> {
  $$ResponseTableTableTableManager(_$AppDatabase db, $ResponseTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResponseTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResponseTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResponseTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<String> address = const Value.absent(),
          }) =>
              ResponseTableCompanion(
            id: id,
            latitude: latitude,
            longitude: longitude,
            address: address,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required double latitude,
            required double longitude,
            required String address,
          }) =>
              ResponseTableCompanion.insert(
            id: id,
            latitude: latitude,
            longitude: longitude,
            address: address,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResponseTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ResponseTableTable,
    ResponseTableData,
    $$ResponseTableTableFilterComposer,
    $$ResponseTableTableOrderingComposer,
    $$ResponseTableTableAnnotationComposer,
    $$ResponseTableTableCreateCompanionBuilder,
    $$ResponseTableTableUpdateCompanionBuilder,
    (
      ResponseTableData,
      BaseReferences<_$AppDatabase, $ResponseTableTable, ResponseTableData>
    ),
    ResponseTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ResponseTableTableTableManager get responseTable =>
      $$ResponseTableTableTableManager(_db, _db.responseTable);
}
