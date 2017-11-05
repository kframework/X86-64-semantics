extern int printf(const char *str, ...);

// void testfunc(float X, float D) {
void testfunc(float X) {
	printf("%f\n",  X);
}

int main() {
	testfunc(4.5);
  return 0;
}

