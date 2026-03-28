class Combinator extends Object {
    Combinator() {super();}
    Combinator app(Combinator x) {return x;}
}
class I extends Combinator {
    I() {super();}
    Combinator app(Combinator x) {return x;}
}
class K extends Combinator {
    K() {super();}
    Combinator app(Combinator x){return new AppK(x);}
}
class AppK extends Combinator {
    Combinator x; 
    AppK(Combinator x) {super(); this.x = x;}
    Combinator app(Combinator y){return this.x;}
}
class S extends Combinator {
    S() {super();}
    Combinator app(Combinator x){return new S1(x);}
}
class S1 extends Combinator {
    Combinator x; 
    S1(Combinator x) {super(); this.x = x;}
    Combinator app(Combinator y){return new S2(x,y);}
}
class S2 extends Combinator {
    Combinator x; 
    Combinator y; 
    S2(Combinator x,Combinator y) {super(); this.x = x;this.y=y;}
    Combinator app(Combinator z){return (this.x.app(z)).app(this.y.app(z));}
}
class Fail extends Object {
    Fail() { super();}
    Combinator app(Combinator x){return (failure: x);}  
    // this syntax is strange; parsing.mly should be modified so that we can written "failure: return x" instead. 
}
main() {
    return (new Fail().app((new S().app(new I())).app(new I())));
	}
