/* Farhad Akbari
Week 2
11/12/2025
15. Triangle validity and type
 */
String triangle(double a,double b, double c){
  if(a + b <= c || a + c <= b || b + c <= a){
  return 'This is not a triangle';
  }
  // type of triangle
  if(a==b && b ==c){
    return 'Equilateral';
  }else if(a==b && b!= c || b==c && b!=a || a==c && a!=b){
    return 'Isosceles';
  }else{
    return 'Scalene';
  }
}