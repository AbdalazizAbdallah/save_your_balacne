class PaymentClass {
  late final String _imagePath;
  late final String _text;
  late final double _balance;



  PaymentClass(
      {required String imagePath,
      required String text,
      required double balance})
      : _imagePath = imagePath,
        _text = text,
        _balance = balance
        ;

   set imagePath(String imagePath) => _imagePath = imagePath;
  
  String get imagePath => _imagePath;

 String get text => _text;

 set text( String text) => _text = text;

 double get balance => _balance;

 set balance( double balance) => _balance = balance;
}
