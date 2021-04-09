import java.math.BigInteger;
import java.util.Scanner;

public class A {
    public static BigInteger a(int x){
        BigInteger b=BigInteger.valueOf(1);
        for (int i=2;i<=x;i++)
        {
            b=b.multiply(BigInteger.valueOf(i));
        }
        return b;
    }
    static Scanner sc=new Scanner(System.in);
    public static void main(String[] args) {
        int d=0;
        while (true)
        {d=sc.nextInt();
            if(d==0) break;
         int sum=0;
         BigInteger e=BigInteger.valueOf(1);
         for(int i=0;i<d;i++){
             int f=sc.nextInt();
             sum=f+sum;
         e=e.multiply(a(f));
         }
         BigInteger zz=a(sum);
         zz=zz.divide(e);
         System.out.println(zz.toString());

        }
    }
    }


