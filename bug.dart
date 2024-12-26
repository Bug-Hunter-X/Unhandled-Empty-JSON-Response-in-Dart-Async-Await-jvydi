```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing the data (e.g., printing the first element)
      print(data[0]); // This might throw an error if the list is empty!
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, such as showing an error message to the user
  }
}
```