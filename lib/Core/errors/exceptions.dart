class CustomException implements Exception {
  const CustomException({required this.message});

  final String message;

  @override
  String toString() => message;
}

class CancelledException implements Exception {
  const CancelledException();
}