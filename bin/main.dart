Future<List<String>> fetchSlowCityList() async {
  print("Loading...");
  await Future.delayed(Duration(seconds: 2));
  return fetchCityList();
}
List<String> fetchCityList() {
  print("[Simulated Network I/O]");
  return ['Samarqand', 'Toshkent'];
}
void printCities(List<String> cities) {
  print("Cities: ");
  for(final city in cities){
    print("    $city");
  }
}

void main() async {
  print("Welcome to the Cities program!");
  // final cities = await fetchSlowCityList();
  // printCities(cities);

  final future = Future.delayed(const Duration(seconds: 3), fetchCityList);

  print("The future object is actually: ${future.toString()}");

  future.then((value) => print(value));

  print("This happens before the futre complates");
  future.whenComplete(() => print("sa"));
}