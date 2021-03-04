interface IDataItem{
    String getData();
    int getKey();
    int compareTo(IDataItem data);

    void draw(int x, int y);
}