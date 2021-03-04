BinaryTree tree;
int i = 0;
int[] num = new int[] {16,10,2,4,26,13,15,1,7,6,5};
int[] rem = new int[] {1, 6, 13, 10};

void setup() { 
    tree = new BinaryTree();
    frameRate(3);
    //size(512, 512);
    fullScreen();
} 

void draw() {
    if(i < num.length)
        tree.insert(new Number(num[i]));
    else if(i < num.length + rem.length)
        tree.remove(new Number(rem[i - num.length]));
    i++;
    background(255);
    textSize(20);
    fill(0);
    text(tree.count(), 100, 100);
	tree.draw();
    //int num = (int) random(0, 10000);
    //tree.insert(new Number(num));
} 
