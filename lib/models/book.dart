import 'package:angel3_orm/angel3_orm.dart';
import 'package:angel3_migration/angel3_migration.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
import 'package:optional/optional.dart';

part 'book.g.dart';

@serializable
abstract class _Base {
  @primaryKey
  int? get id;

  String? get status;
  DateTime? get createdAt;
}

@serializable
@Orm(generateMigrations: false, tableName: 'book')
abstract class _Book extends _Base {
  String? get name;
  String? get author;

  @HasMany(localKey: 'id', foreignKey: 'book_id')
  List<_Page> get page;
}

@serializable
@Orm(generateMigrations: false, tableName: 'page')
abstract class _Page extends _Base {
  int? get page;
  String? get contents;
}

