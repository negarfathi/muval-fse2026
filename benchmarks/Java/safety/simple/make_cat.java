class Mammal extends Object {
    Mammal(){ super(); }
}

class Cat extends Mammal {
    Cat(){ super(); }
}

main(){
    return (Cat)(Mammal)new Cat();
}
