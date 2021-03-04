class BinaryTree {
    ITreeItem root;

    BinaryTree() {
        root = new Ending();
    }

    void insert(IDataItem item){
        root = root.insert(item);
    }

    int count() {
        return root.count();
    }

    void remove(IDataItem data) {
        root.remove(data);
    }

    void draw() { root.draw(width/2, 100, 4); }
}