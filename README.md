# Unhandled Empty JSON Response in Dart Async/Await

This repository demonstrates a common error in Dart when using `async`/`await` with HTTP requests and JSON responses. The code doesn't handle the case where the JSON response is an empty array, leading to an `IndexOutOfRangeException`.

The `bug.dart` file contains the problematic code, while `bugSolution.dart` provides a corrected version that checks for empty responses before accessing elements.