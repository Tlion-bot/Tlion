package a;

public class produce {
    private int id;
    private String name;
    private int num=0;
    private int price;

    public produce(String name, int num,int price){
        this.name=name;
        this.num=num;
        this.price=price;

    }

    public String getName() {
        return name;
    }

    public int getNum() {
        return num;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
