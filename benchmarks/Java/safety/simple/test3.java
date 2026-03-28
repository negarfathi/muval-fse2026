class A extends Object {
  Object loop() { return this.loop(); }
  A() { super(); }
}

main() {
  return new A().loop();
}

