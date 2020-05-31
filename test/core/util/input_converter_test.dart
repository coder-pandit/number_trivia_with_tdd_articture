import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/core/util/input_converter.dart';

void main() {
  InputConverter inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  group('stringToUnsignedInt', () {
    test(
        'should retrun an integer when the string represents an unsigned integer',
        () {
      // arragne
      final str = '123';

      // act
      final result = inputConverter.stringToUnsignedInteger(str);

      // expect
      expect(result, Right(123));
    });

    test('should return a failure when the string is not an integer', () {
      // arragne
      final str = 'abc';

      // act
      final result = inputConverter.stringToUnsignedInteger(str);

      // expect
      expect(result, Left(InvalidInputFailure()));
    });

    test('should return a failure when the string is a negetive integer', () {
      // arragne
      final str = '-123';

      // act
      final result = inputConverter.stringToUnsignedInteger(str);

      // expect
      expect(result, Left(InvalidInputFailure()));
    });
  });
}
