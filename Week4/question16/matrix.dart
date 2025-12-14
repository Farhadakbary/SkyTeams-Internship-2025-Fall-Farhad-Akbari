/*
 Farhad Akbari
 12/5/2025
16. Matrix Multiplication
Description: Multiply matrix A × B manually.
Example:
[[1,2],[3,4]] × [[5,6],[7,8]] → [[19,22],[43,50]]
 */
List<List<int>> matrixMultiplication(List<List<int>>matrixA, List<List<int>> matrixB) {
  int rowsA = matrixA.length;
  int colsA = matrixA[0].length;
  int rowsB = matrixB.length;
  int colsB = matrixB[0].length;

  if(rowsA != colsB) {
    throw ArgumentError('the rowsA should be like colsB');
  }
  List<List<int>> result= List.generate(rowsA, (_)=> List.filled(colsB, 0));
  for(int i=0;i<rowsA; i++){
    for(int j=0; j< colsB; j++){
      for(int k=0; k<colsA; k++){
        result[i][j] += matrixA[i][k] * matrixB[k][j];
      }
    }
  }
  return result;
}
void main(){
  print(matrixMultiplication([[1,2],[3,4]], [[5,6],[7,8]]));
}