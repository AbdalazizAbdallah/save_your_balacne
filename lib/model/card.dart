
class CardClass{
  
  late final String _imagePath;
  late final double _balance;
  late final String _cardNumber;
  late final bool _verified;
 

  CardClass({required String imagePath,required double balance, required String cardNumber,required bool verified}):
    _imagePath = imagePath,
    _balance = balance,
    _cardNumber=cardNumber,
    _verified=verified
  ;

  String get imagePath => _imagePath;

 set imagePath(String imagePath) => _imagePath = imagePath;

  double get balance => _balance;

 set balance(double balance) => _balance = balance;

  String get cardNumber => _cardNumber.replaceAll(RegExp(r'.{4}(?!$)'), r'**** ');

 set cardNumber( String cardNumber) => _cardNumber = cardNumber;

 bool get verified => _verified;

 set verified( bool verified ) => _verified = verified;
}