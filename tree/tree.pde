BinaryTree tree;

void setup() { 
    tree = new BinaryTree();
    frameRate(60);
    //size(512, 512);
    fullScreen();

    //16,10,2,4,26,13,15,14,1,7,6,5
    tree.insert(new Number(16));
    tree.insert(new Number(10));
    tree.insert(new Number(2));
    tree.insert(new Number(4));
    tree.insert(new Number(26));
    tree.insert(new Number(13));
    tree.insert(new Number(15));
    tree.insert(new Number(14));
    tree.insert(new Number(1));
    tree.insert(new Number(7));
    tree.insert(new Number(6));
    tree.insert(new Number(5));
} 

void draw() {
    background(255);
    textSize(20);
    fill(0);
    text(tree.count(), 100, 100);
	tree.draw();
    int num = (int) random(0, 10000);
    tree.insert(new Number(num));
} 
