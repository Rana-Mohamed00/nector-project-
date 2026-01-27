class ApiError {

  final String message;

  ApiError({required this.message});

  String toString(){
    return message;
  }
}