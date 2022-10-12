import 'dart:math' show Random;

//////////////TESTE PI USANDO DART MATH/////////////////////////
/////////////////TESTE PI USANDO DART MATH/////////////////////////
/////////////////TESTE PI USANDO DART MATH/////////////////////////
void main() async {
  print('TESTE PI COM DART MATH::::::::::::::::::::');
  await for (final estimativa_ in computePi().take(100)) {
    print('π ≅ $estimativa_');
  }
}

Stream<double> computePi({int batch = 100000}) async* {
  var total = 0;
  var contador_ = 0;
  while (true) {
    final points = generateRandom().take(batch);
    final inside = points.where((p) => p.isInsideUnitCircle);

    total += batch;
    contador_ += inside.length;
    final ratio = contador_ / total;

    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int? seed]) sync* {
  final random = Random(seed);
  while (true) {
    yield Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  bool get isInsideUnitCircle => x * x + y * y <= 1;
}

//////////////TESTE PI USANDO DART MATH/////////////////////////
/////////////////TESTE PI USANDO DART MATH/////////////////////////
/////////////////TESTE PI USANDO DART MATH/////////////////////////
