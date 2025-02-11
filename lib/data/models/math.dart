class Mathfact{
  final String type;
  final bool found;
  final int number;
  final String text;
  Mathfact({
    required this.type,
    required this.found,
    required this.number,
    required this.text,
  });
  factory Mathfact.fromJson(Map<String,dynamic> inputJson){
    return Mathfact(
      type:inputJson["type"],
      found:inputJson["found"],
      number:inputJson["number"],
      text:inputJson["text"]);
  }

}