BinaryTree tree;

void setup() { 
    tree = new BinaryTree();
    frameRate(10);
    //size(512, 512);
    fullScreen();
} 

void draw() {
    background(255);
	tree.draw();
    int num = (int) random(0, 255);
    tree.insert(new Number(num));
} 
