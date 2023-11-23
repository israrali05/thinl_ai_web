import 'package:collection/collection.dart';

class GraphData {
  final double x;
  final double y;

  GraphData({required this.x, required this.y});
}

List<GraphData> get graphData {
  final data = <double>[60, 30, 100, 50, 120, 23, 40];

  return data
      .mapIndexed(
          (index, element) => GraphData(x: index.toDouble(), y: element))
      .toList();
}
