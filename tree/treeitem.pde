interface ITreeItem{
    ITreeItem getLeft();
    ITreeItem getRight();

    ITreeItem insert(IDataItem item);

    void setLeft(ITreeItem item);
    void setRight(ITreeItem item);

    IDataItem getDataItem();

    boolean isEnding();
    boolean isLeaf();

    int count();

    int height();
    int balance();

    void draw(int x, int y, int div);
}