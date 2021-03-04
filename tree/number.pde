class Number implements IDataItem{
    int value;

    Number(int value){
        this.value = value;
    }

    String getData() { return str(value); }

    int compareTo(IDataItem data) { 
        return data.getKey() - this.getKey();
    }

    int getKey() { return value; }

    void draw(int x, int y) {
        fill(#51A35F);
        circle(x, y, 60);
        textAlign(CENTER);
        textSize(20);
        fill(0);
        text(value, x, y + 5);
    }
}