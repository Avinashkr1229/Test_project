import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    // Complete the plusMinus function below.
    static void plusMinus() 
    {
        int count=0;
        int count1=0;
        int count2=0;
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        int a[]=new int[n];
        
        for(int i=0;i<a.length;i++)
        {
            a[i]=sc.nextInt();
        }
        
        for(int j=0;j<a.length;j++)
        {
            if(a[j]>0)
            {
                count++;
            }
            else if(a[j]<0)
            {
                count1++;
            }
            else
            {
                count2++;
            }
        }
         
    double positive=(double)count/a.length;
    double negative=(double)count1/a.length;
    double zero=(double)count2/a.length;
    
    System.out.println(positive+"\n"+negative+"\n"+zero);

    }

    
    public static void main(String[] args)
    {
        Solution.plusMinus();
    }
}
