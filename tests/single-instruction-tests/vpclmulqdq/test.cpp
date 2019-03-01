#include<iostream>
#include<cinttypes>
#include<cassert>
using namespace std;

uint64_t selectSlice(uint64_t NUM, int imm, int bit) {
  if((imm & (1 << bit)) != 0) {
    assert(0);
    return 0;
  }
  return NUM;  
}

int getBit(uint64_t NUM, int bit) {
  uint64_t one = 1;
  if((NUM & (one << bit)) != 0) 
    return 1;
  else
    return 0;
}

void setBit(uint64_t &NUM, int bit, int value) {
  uint64_t mask = 1;
  mask = mask << bit;

  if(value == 1) {
    NUM = NUM | mask;
  } else {
    NUM = NUM & ~mask;
  }

}


int main() {
  uint64_t SRC2 = 2147483648;
  uint64_t SRC1 = 9223372039002259456;
  int imm = 2;

  uint64_t TEMP1 = selectSlice(SRC1, imm,  0);
  uint64_t TEMP2 = selectSlice(SRC2, imm, 4);

  uint64_t DEST = 0; 
  uint64_t TmpB = 0; 
  //for(int i = 0; i<= 63; i++) {
  //  //TmpB [ i ]←(TEMP1[ 0 ] and TEMP2[ i ]);
  //  setBit(TmpB, i, getBit(TEMP1, 0) & getBit(TEMP2, i));
  //  //For j = 1 to i {
  //  //    TmpB [ i ]←TmpB [ i ] xor (TEMP1[ j ] and TEMP2[ i - j ])
  //  //}
  //  //DEST[ i ]←TmpB[ i ];
  //  for(int j = 1; j <= i; j++) {
  //    setBit(TmpB, i, 
  //        ( getBit(TmpB, i) ^  (getBit(TEMP1, j) &  getBit(TEMP2, i-j)))
  //        );
  //  }
  //  setBit(DEST, i, getBit(TmpB, i));
  //}


  for(int i = 64; i<= 126; i++) {
    int R = 0;
    //For j = i - 63 to 63 {
    for(int j = i-63; j <= 63; j++) {
        R = R ^  (getBit(TEMP1, j ) & getBit(TEMP2, i - j));
    }
    //DEST[ i ]←TmpB[ i ];
    setBit(DEST, i - 64, R);
  }

  
  cout << std::hex << DEST << "\n";
  cout << std::dec << DEST << "\n";

}
