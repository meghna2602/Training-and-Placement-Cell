package Servelets;

import java.util.Random;

public class otp {
   public static void main(String[] args) {

     
   }

   public static char[] generateOTP(int length) {
      String numbers = "1234567890";
      Random random = new Random();
      char[] otp1 = new char[length];

      for(int i = 0; i< length ; i++) {
         otp1[i] = numbers.charAt(random.nextInt(numbers.length()));
      }
      return otp1;
   }
}