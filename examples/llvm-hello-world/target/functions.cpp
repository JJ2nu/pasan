int add(int a, int b) { return a + b; }

void inc(int &i) { ++i; }

int source( int a ) {return a;}


int main(int argc, char **argv) {
  int a = 10;
  source(a);
  int b = add(a, 42);
  inc(b);
  int c = b;
  return 0;
}
