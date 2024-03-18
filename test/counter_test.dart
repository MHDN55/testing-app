import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/counter.dart';

void main() {
  //* given when then :

  late Counter counter;

  //? before every test
  setUp(() {
    counter = Counter();
  });

  //? before all tests
  setUpAll(() {});

  group(
    'counter Class -',
    () {
      // Arrange

      test(
        'given counter class when it is instantiated then value of count shoule be 0',
        () {
          // Act
          final val = counter.count;
          // Assert
          expect(val, 1);
        },
      );
      test(
        'given counter class when it is incremented then the value of count should be incrementing',
        () {
          // Act
          counter.incrementCounter();
          final val = counter.count;
          // Assert
          expect(val, 1);
        },
      );
      test(
        'given counter class when it is incremented then the value of count should be decrementing',
        () {
          // Act
          counter.decrementCounter();
          final val = counter.count;
          // Assert
          expect(val, -1);
        },
      );
      test(
        'reset the value of the counter to be 0',
        () {
          counter.reset();

          expect(counter.count, 0);
        },
      );
    },
  );

  //? after every test
  tearDown(() {});

  //? after all tests
  tearDownAll(() {});
}

//! full info (unit) : (https://youtu.be/mxTW020pyuc?si=Of4-JrbYDvGQyNWQ)

//! full info (widget) : (https://youtu.be/6usqzoKYXag?si=IB7iXvTpQOL5tnBs)
