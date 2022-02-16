import 'package:angel3_orm_mysql/angel3_orm_mysql.dart';
import 'package:cast_error_galileo_sqljockey5/models/book.dart';
import 'package:test/test.dart';
import 'package:galileo_sqljocky5/public/connection/connection.dart';
import 'package:logging/logging.dart';

void main() async {
  test('book_test', () async {
      var settings = ConnectionSettings(host: '127.0.0.1', port: 3306, user: 'dart_jaguar', password: 'dart_jaguar', db: 'example');
      var connection = await MySqlConnection.connect(settings);
      var logger = Logger('book_logger');
      var executor = MySqlExecutor(connection, logger: logger);
      var query = PageQuery();
      var values = await query.get(executor);
      print(values);
  });
}