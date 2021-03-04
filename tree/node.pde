class Node implements ITreeItem{
    ITreeItem left;
    ITreeItem right;

    IDataItem data;

    Node(IDataItem data){
        this.data = data;
        this.left = new Ending();
        this.right = new Ending();
    }

    ITreeItem getLeft(){ return left; }
    ITreeItem getRight(){ return right; }


    void setLeft(ITreeItem item){ left = item; }
    void setRight(ITreeItem item){ right = item; }
    
    ITreeItem insert(IDataItem item){
        if(this.data.compareTo(item) > 0) right = right.insert(item);
        else left = left.insert(item);

        int balance = balance();
        if(balance > 1){
            if(left.balance() > 0) return rotateRight(this);
            else {
                this.right = rotateLeft(this.right);
                return rotateRight(this);
            }
        }
        else if(balance < -1){
            if(right.balance() < 0) return rotateLeft(this);
            else {
                this.right = rotateRight(this.right);
                return rotateLeft(this);
            }
        }
        
        return this;
    }

    ITreeItem rotateRight(ITreeItem y) {
        ITreeItem x = y.getLeft();
        ITreeItem z = x.getRight();
        x.setRight(y);
        y.setLeft(z);
        return x;
    }

    ITreeItem rotateLeft(ITreeItem y) {
        ITreeItem x = y.getRight();
        ITreeItem z = x.getLeft();
        x.setLeft(y);
        y.setRight(z);
        return x;
    }

    IDataItem getDataItem(){ return data; }

    boolean isEnding(){ return false; }
    boolean isLeaf(){
        return left.isEnding() && right.isEnding();
    }

    int count() {
        return left.count() + right.count() + 1;
    }

    int height() {
        return Max(left.height(), right.height()) + 1;
    }

    int Max(int a, int b){
        return a > b ? a : b;
    }

    int Min(int a, int b){
        return a < b ? a : b;
    }

    int balance() {
        return left.height() - right.height();
    }

    void draw(int x, int y, int div){
        strokeWeight(2);
        line(x, y, x - width/div, y + 100);
        line(x, y, x + width/div, y + 100);

        left.draw(x - width/div, y + 100, div * 2);
        data.draw(x, y);
        right.draw(x + width/div, y + 100, div * 2);

        int balance = balance();
        textAlign(CENTER);
        textSize(20);
        fill(#0000FF);
        text(balance, x, y - 40);
    }

}