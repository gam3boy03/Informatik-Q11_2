class Ending implements ITreeItem{
    Ending() {}

    ITreeItem getLeft() {
        return this;
    }
    ITreeItem getRight() {
        return this;
    }

    void setLeft(ITreeItem item) {

    }

    void setRight(ITreeItem item) {
    }

    ITreeItem insert(IDataItem item){
        return new Node(item);
    }

    IDataItem getDataItem(){
        return null;
    }

    boolean isEnding(){
        return true;
    }

    boolean isLeaf(){
        return true;
    }

    int height(){
        return 0;
    }

    int balance(){
        return 0;
    }

    void draw(int x, int y, int div){
        fill(0);
        circle(x, y, 10);
    }
}