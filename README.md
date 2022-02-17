Cast error test for galileo_sqljockey5
====

# Create test tables

```
mysql -udart_jaguar -h127.0.0.1 -P3306 --password="dart_jaguar" example < sql/create_book.sql
```

# Execute ```book_test.dart```

```
dart test test/book_test.dart
```

## Got a cast error

``` 
00:00 +0 -1: book_test [E]                                                                                                                     
  type '_CompactIterable<dynamic>' is not a subtype of type 'List<dynamic>' in type cast
  package:galileo_sqljocky5/internal/connection/impl.dart 35:65  MySqlConnectionImpl.prepared
  ===== asynchronous gap ===========================
  test/book_test.dart 14:20                                      main.<fn>
  
00:00 +0 -1: Some tests failed.                                                                                                                

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

# Solution

galileo_sqljocky5/internal/connection/impl.dart 35
```
var handler = ExecuteQueryHandler(prepared, false, values as List<dynamic>);
```

The solution is: Replace ```values as List<dinamyc>``` to ```List<dinamyc>of(values)```.