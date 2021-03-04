class BinaryTree {
    ITreeItem root;

    BinaryTree() {
        root = new Ending();
    }

    void insert(IDataItem item){
        root = root.insert(item);
    }

    int balance() {
        return root.balance();
    }

    void draw() { root.draw(width/2, 100, 4); }
}