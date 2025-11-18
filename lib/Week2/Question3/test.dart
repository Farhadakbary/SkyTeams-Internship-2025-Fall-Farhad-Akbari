import 'package:sky/Week2/Question3/areaAndperimeter.dart';
import 'package:test/test.dart';

void main(){
  test("Find the area and perimeter of rectangle", (){
    final result= areaAndPerimeter(10, 12);

    expect(result['area'], equals(120));
    expect(result['perimeter'], equals(44));
  });
  test("Find the area and perimeter of rectangle", (){
    final result= areaAndPerimeter(-10, -12);

    expect(result['area'], equals(120));
    expect(result['perimeter'], equals(44));
  });

}