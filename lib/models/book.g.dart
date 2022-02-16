// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// OrmGenerator
// **************************************************************************

class BookQuery extends Query<Book, BookQueryWhere> {
  BookQuery({Query? parent, Set<String>? trampoline}) : super(parent: parent) {
    trampoline ??= <String>{};
    trampoline.add(tableName);
    _where = BookQueryWhere(this);
    leftJoin(_page = PageQuery(trampoline: trampoline, parent: this), 'id',
        'book_id',
        additionalFields: const [
          'id',
          'status',
          'created_at',
          'page',
          'contents'
        ],
        trampoline: trampoline);
  }

  @override
  final BookQueryValues values = BookQueryValues();

  List<String> _selectedFields = [];

  BookQueryWhere? _where;

  late PageQuery _page;

  @override
  Map<String, String> get casts {
    return {};
  }

  @override
  String get tableName {
    return 'book';
  }

  @override
  List<String> get fields {
    const _fields = ['id', 'status', 'created_at', 'name', 'author'];
    return _selectedFields.isEmpty
        ? _fields
        : _fields.where((field) => _selectedFields.contains(field)).toList();
  }

  BookQuery select(List<String> selectedFields) {
    _selectedFields = selectedFields;
    return this;
  }

  @override
  BookQueryWhere? get where {
    return _where;
  }

  @override
  BookQueryWhere newWhereClause() {
    return BookQueryWhere(this);
  }

  Optional<Book> parseRow(List row) {
    if (row.every((x) => x == null)) {
      return Optional.empty();
    }
    var model = Book(
        id: fields.contains('id') ? (row[0] as int?) : null,
        status: fields.contains('status') ? (row[1] as String?) : null,
        createdAt: fields.contains('created_at') ? (row[2] as DateTime?) : null,
        name: fields.contains('name') ? (row[3] as String?) : null,
        author: fields.contains('author') ? (row[4] as String?) : null);
    if (row.length > 5) {
      var modelOpt = PageQuery().parseRow(row.skip(5).take(5).toList());
      modelOpt.ifPresent((m) {
        model = model.copyWith(page: [m]);
      });
    }
    return Optional.of(model);
  }

  @override
  Optional<Book> deserialize(List row) {
    return parseRow(row);
  }

  PageQuery get page {
    return _page;
  }

  @override
  Future<List<Book>> get(QueryExecutor executor) {
    return super.get(executor).then((result) {
      return result.fold<List<Book>>([], (out, model) {
        var idx = out.indexWhere((m) => m.id == model.id);

        if (idx == -1) {
          return out..add(model);
        } else {
          var l = out[idx];
          return out
            ..[idx] =
                l.copyWith(page: List<_Page>.from(l.page)..addAll(model.page));
        }
      });
    });
  }

  @override
  Future<List<Book>> update(QueryExecutor executor) {
    return super.update(executor).then((result) {
      return result.fold<List<Book>>([], (out, model) {
        var idx = out.indexWhere((m) => m.id == model.id);

        if (idx == -1) {
          return out..add(model);
        } else {
          var l = out[idx];
          return out
            ..[idx] =
                l.copyWith(page: List<_Page>.from(l.page)..addAll(model.page));
        }
      });
    });
  }

  @override
  Future<List<Book>> delete(QueryExecutor executor) {
    return super.delete(executor).then((result) {
      return result.fold<List<Book>>([], (out, model) {
        var idx = out.indexWhere((m) => m.id == model.id);

        if (idx == -1) {
          return out..add(model);
        } else {
          var l = out[idx];
          return out
            ..[idx] =
                l.copyWith(page: List<_Page>.from(l.page)..addAll(model.page));
        }
      });
    });
  }
}

class BookQueryWhere extends QueryWhere {
  BookQueryWhere(BookQuery query)
      : id = NumericSqlExpressionBuilder<int>(query, 'id'),
        status = StringSqlExpressionBuilder(query, 'status'),
        createdAt = DateTimeSqlExpressionBuilder(query, 'created_at'),
        name = StringSqlExpressionBuilder(query, 'name'),
        author = StringSqlExpressionBuilder(query, 'author');

  final NumericSqlExpressionBuilder<int> id;

  final StringSqlExpressionBuilder status;

  final DateTimeSqlExpressionBuilder createdAt;

  final StringSqlExpressionBuilder name;

  final StringSqlExpressionBuilder author;

  @override
  List<SqlExpressionBuilder> get expressionBuilders {
    return [id, status, createdAt, name, author];
  }
}

class BookQueryValues extends MapQueryValues {
  @override
  Map<String, String> get casts {
    return {};
  }

  int? get id {
    return (values['id'] as int?);
  }

  set id(int? value) => values['id'] = value;
  String? get status {
    return (values['status'] as String?);
  }

  set status(String? value) => values['status'] = value;
  DateTime? get createdAt {
    return (values['created_at'] as DateTime?);
  }

  set createdAt(DateTime? value) => values['created_at'] = value;
  String? get name {
    return (values['name'] as String?);
  }

  set name(String? value) => values['name'] = value;
  String? get author {
    return (values['author'] as String?);
  }

  set author(String? value) => values['author'] = value;
  void copyFrom(Book model) {
    id = model.id;
    status = model.status;
    createdAt = model.createdAt;
    name = model.name;
    author = model.author;
  }
}

class PageQuery extends Query<Page, PageQueryWhere> {
  PageQuery({Query? parent, Set<String>? trampoline}) : super(parent: parent) {
    trampoline ??= <String>{};
    trampoline.add(tableName);
    _where = PageQueryWhere(this);
  }

  @override
  final PageQueryValues values = PageQueryValues();

  List<String> _selectedFields = [];

  PageQueryWhere? _where;

  @override
  Map<String, String> get casts {
    return {};
  }

  @override
  String get tableName {
    return 'page';
  }

  @override
  List<String> get fields {
    const _fields = ['id', 'status', 'created_at', 'page', 'contents'];
    return _selectedFields.isEmpty
        ? _fields
        : _fields.where((field) => _selectedFields.contains(field)).toList();
  }

  PageQuery select(List<String> selectedFields) {
    _selectedFields = selectedFields;
    return this;
  }

  @override
  PageQueryWhere? get where {
    return _where;
  }

  @override
  PageQueryWhere newWhereClause() {
    return PageQueryWhere(this);
  }

  Optional<Page> parseRow(List row) {
    if (row.every((x) => x == null)) {
      return Optional.empty();
    }
    var model = Page(
        id: fields.contains('id') ? (row[0] as int?) : null,
        status: fields.contains('status') ? (row[1] as String?) : null,
        createdAt: fields.contains('created_at') ? (row[2] as DateTime?) : null,
        page: fields.contains('page') ? (row[3] as int?) : null,
        contents: fields.contains('contents') ? (row[4] as String?) : null);
    return Optional.of(model);
  }

  @override
  Optional<Page> deserialize(List row) {
    return parseRow(row);
  }
}

class PageQueryWhere extends QueryWhere {
  PageQueryWhere(PageQuery query)
      : id = NumericSqlExpressionBuilder<int>(query, 'id'),
        status = StringSqlExpressionBuilder(query, 'status'),
        createdAt = DateTimeSqlExpressionBuilder(query, 'created_at'),
        page = NumericSqlExpressionBuilder<int>(query, 'page'),
        contents = StringSqlExpressionBuilder(query, 'contents');

  final NumericSqlExpressionBuilder<int> id;

  final StringSqlExpressionBuilder status;

  final DateTimeSqlExpressionBuilder createdAt;

  final NumericSqlExpressionBuilder<int> page;

  final StringSqlExpressionBuilder contents;

  @override
  List<SqlExpressionBuilder> get expressionBuilders {
    return [id, status, createdAt, page, contents];
  }
}

class PageQueryValues extends MapQueryValues {
  @override
  Map<String, String> get casts {
    return {};
  }

  int? get id {
    return (values['id'] as int?);
  }

  set id(int? value) => values['id'] = value;
  String? get status {
    return (values['status'] as String?);
  }

  set status(String? value) => values['status'] = value;
  DateTime? get createdAt {
    return (values['created_at'] as DateTime?);
  }

  set createdAt(DateTime? value) => values['created_at'] = value;
  int? get page {
    return (values['page'] as int?);
  }

  set page(int? value) => values['page'] = value;
  String? get contents {
    return (values['contents'] as String?);
  }

  set contents(String? value) => values['contents'] = value;
  void copyFrom(Page model) {
    id = model.id;
    status = model.status;
    createdAt = model.createdAt;
    page = model.page;
    contents = model.contents;
  }
}

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Base implements _Base {
  Base({this.id, this.status, this.createdAt});

  @override
  int? id;

  @override
  String? status;

  @override
  DateTime? createdAt;

  Base copyWith({int? id, String? status, DateTime? createdAt}) {
    return Base(
        id: id ?? this.id,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt);
  }

  @override
  bool operator ==(other) {
    return other is _Base &&
        other.id == id &&
        other.status == status &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return hashObjects([id, status, createdAt]);
  }

  @override
  String toString() {
    return 'Base(id=$id, status=$status, createdAt=$createdAt)';
  }

  Map<String, dynamic> toJson() {
    return BaseSerializer.toMap(this);
  }
}

@generatedSerializable
class Book implements _Book {
  Book(
      {this.id,
      this.status,
      this.createdAt,
      this.name,
      this.author,
      this.page = const []});

  @override
  int? id;

  @override
  String? status;

  @override
  DateTime? createdAt;

  @override
  String? name;

  @override
  String? author;

  @override
  List<_Page> page;

  Book copyWith(
      {int? id,
      String? status,
      DateTime? createdAt,
      String? name,
      String? author,
      List<_Page>? page}) {
    return Book(
        id: id ?? this.id,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        name: name ?? this.name,
        author: author ?? this.author,
        page: page ?? this.page);
  }

  @override
  bool operator ==(other) {
    return other is _Book &&
        other.id == id &&
        other.status == status &&
        other.createdAt == createdAt &&
        other.name == name &&
        other.author == author &&
        ListEquality<_Page>(DefaultEquality<_Page>()).equals(other.page, page);
  }

  @override
  int get hashCode {
    return hashObjects([id, status, createdAt, name, author, page]);
  }

  @override
  String toString() {
    return 'Book(id=$id, status=$status, createdAt=$createdAt, name=$name, author=$author, page=$page)';
  }

  Map<String, dynamic> toJson() {
    return BookSerializer.toMap(this);
  }
}

@generatedSerializable
class Page implements _Page {
  Page({this.id, this.status, this.createdAt, this.page, this.contents});

  @override
  int? id;

  @override
  String? status;

  @override
  DateTime? createdAt;

  @override
  int? page;

  @override
  String? contents;

  Page copyWith(
      {int? id,
      String? status,
      DateTime? createdAt,
      int? page,
      String? contents}) {
    return Page(
        id: id ?? this.id,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        page: page ?? this.page,
        contents: contents ?? this.contents);
  }

  @override
  bool operator ==(other) {
    return other is _Page &&
        other.id == id &&
        other.status == status &&
        other.createdAt == createdAt &&
        other.page == page &&
        other.contents == contents;
  }

  @override
  int get hashCode {
    return hashObjects([id, status, createdAt, page, contents]);
  }

  @override
  String toString() {
    return 'Page(id=$id, status=$status, createdAt=$createdAt, page=$page, contents=$contents)';
  }

  Map<String, dynamic> toJson() {
    return PageSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const BaseSerializer baseSerializer = BaseSerializer();

class BaseEncoder extends Converter<Base, Map> {
  const BaseEncoder();

  @override
  Map convert(Base model) => BaseSerializer.toMap(model);
}

class BaseDecoder extends Converter<Map, Base> {
  const BaseDecoder();

  @override
  Base convert(Map map) => BaseSerializer.fromMap(map);
}

class BaseSerializer extends Codec<Base, Map> {
  const BaseSerializer();

  @override
  BaseEncoder get encoder => const BaseEncoder();
  @override
  BaseDecoder get decoder => const BaseDecoder();
  static Base fromMap(Map map) {
    return Base(
        id: map['id'] as int?,
        status: map['status'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null);
  }

  static Map<String, dynamic> toMap(_Base? model) {
    if (model == null) {
      return {};
    }
    return {
      'id': model.id,
      'status': model.status,
      'created_at': model.createdAt?.toIso8601String()
    };
  }
}

abstract class BaseFields {
  static const List<String> allFields = <String>[id, status, createdAt];

  static const String id = 'id';

  static const String status = 'status';

  static const String createdAt = 'created_at';
}

const BookSerializer bookSerializer = BookSerializer();

class BookEncoder extends Converter<Book, Map> {
  const BookEncoder();

  @override
  Map convert(Book model) => BookSerializer.toMap(model);
}

class BookDecoder extends Converter<Map, Book> {
  const BookDecoder();

  @override
  Book convert(Map map) => BookSerializer.fromMap(map);
}

class BookSerializer extends Codec<Book, Map> {
  const BookSerializer();

  @override
  BookEncoder get encoder => const BookEncoder();
  @override
  BookDecoder get decoder => const BookDecoder();
  static Book fromMap(Map map) {
    return Book(
        id: map['id'] as int?,
        status: map['status'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        name: map['name'] as String?,
        author: map['author'] as String?,
        page: map['page'] is Iterable
            ? List.unmodifiable(((map['page'] as Iterable).whereType<Map>())
                .map(PageSerializer.fromMap))
            : []);
  }

  static Map<String, dynamic> toMap(_Book? model) {
    if (model == null) {
      return {};
    }
    return {
      'id': model.id,
      'status': model.status,
      'created_at': model.createdAt?.toIso8601String(),
      'name': model.name,
      'author': model.author,
      'page': model.page.map((m) => PageSerializer.toMap(m)).toList()
    };
  }
}

abstract class BookFields {
  static const List<String> allFields = <String>[
    id,
    status,
    createdAt,
    name,
    author,
    page
  ];

  static const String id = 'id';

  static const String status = 'status';

  static const String createdAt = 'created_at';

  static const String name = 'name';

  static const String author = 'author';

  static const String page = 'page';
}

const PageSerializer pageSerializer = PageSerializer();

class PageEncoder extends Converter<Page, Map> {
  const PageEncoder();

  @override
  Map convert(Page model) => PageSerializer.toMap(model);
}

class PageDecoder extends Converter<Map, Page> {
  const PageDecoder();

  @override
  Page convert(Map map) => PageSerializer.fromMap(map);
}

class PageSerializer extends Codec<Page, Map> {
  const PageSerializer();

  @override
  PageEncoder get encoder => const PageEncoder();
  @override
  PageDecoder get decoder => const PageDecoder();
  static Page fromMap(Map map) {
    return Page(
        id: map['id'] as int?,
        status: map['status'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        page: map['page'] as int?,
        contents: map['contents'] as String?);
  }

  static Map<String, dynamic> toMap(_Page? model) {
    if (model == null) {
      return {};
    }
    return {
      'id': model.id,
      'status': model.status,
      'created_at': model.createdAt?.toIso8601String(),
      'page': model.page,
      'contents': model.contents
    };
  }
}

abstract class PageFields {
  static const List<String> allFields = <String>[
    id,
    status,
    createdAt,
    page,
    contents
  ];

  static const String id = 'id';

  static const String status = 'status';

  static const String createdAt = 'created_at';

  static const String page = 'page';

  static const String contents = 'contents';
}
