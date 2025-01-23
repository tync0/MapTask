import 'package:drift/drift.dart';

class ResponseTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  TextColumn get address => text().withLength(min: 1, max: 255)();
}
  