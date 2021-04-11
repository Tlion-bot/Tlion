package Mybean;

public class user {
    private double incom;
    private double tax;



    public double getIncom() {
        return incom;
    }

    public void setIncom(double incom) {
        this.incom = incom;
    }

    public double getTax() {
        if (incom==0)
        { tax=0;
            return tax ;}
        else {
            double i=incom-1600;
            if (i > 0 && i <= 500)
                tax= i * 0.05;
            else if (i > 500 && i<=3000)
                tax=i*0.1-25;
            else if(i>3000&&i<=5000)
                tax=i*0.15-125;
            else if(i>5000&&i<=20000)
                tax=i*0.2-375;
            else if(i>20000&&i<=40000)
                tax=i*0.25-1375;
            else if(i>40000&&i<=60000)
                tax=i*0.3-3375;
            else if(i>60000&&i<=80000)
                tax=i*0.35-6375;
            else if(i>80000&&i<=100000)
                tax=i*0.4-10375;
            else if(i>100000)
                tax=i*0.45-15375;
        }
        return tax ;
    }

    }

