class File extends Object {
    File() {super();}
    File read() { return this; }
    File write() { return this; }
    File close() { return this; }
}
class TFile extends Object {
    TFile() {super();}
    File read() { return read: this; }
    File write() { return write: this; }
    File close() { return close: this; }
}
class Main extends Object {
    Main() {super();}
    File loop(File fr, File fw) {
	if_ then return this.end(fr.close(), fw.close())
	else return this.loop(fr.read(),fw.write()); 
    }
    File end(File fr, File fw) { return fr; }
}
main () {
	if_ then 
	    if_ then return new Main().loop(new File(), new File())
	    else return new Main().loop(newr: new TFile(), new File())
	else
	    if_ then return new Main().loop(new File(), neww: new TFile())
	    else return new Main().loop(newr: new TFile(), neww: new TFile());
}