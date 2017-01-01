package com.delta;

import java.util.Scanner;

/**
 * Created by delta on 1/1/17.
 */
public class LessonTwo {
    static Scanner userInput = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("Your favorite number: ");
        // .hasNextDouble .hasNextFloat, .hasNextBoolean, .hasNextByte, .hasNextShort, .hasNextLong
        if (userInput.hasNextInt()) {
            // nextDouble(), nextFloat(), nextLine()
            int numberEntered = userInput.nextInt();
            System.out.println("You entered: " + numberEntered);

            int numEnteredTimes2 = numberEntered + numberEntered;
            System.out.println(numberEntered + " + " + numberEntered + " = " + numEnteredTimes2);

            int numEnteredMinus2 = numberEntered - 2;
            System.out.println(numberEntered + " - " + 2 + " = " + numEnteredMinus2);

            int numEnteredTimesSelf = numberEntered * numberEntered;
            System.out.println(numberEntered + " * " + numberEntered + " = " + numEnteredTimesSelf);

            int numEnteredDivide2 = numberEntered / 2;
            System.out.println(numberEntered + " / " + 2 + " = " + numEnteredDivide2);

            int numEnteredRemainder2 = numberEntered % 2;
            System.out.println(numberEntered + " % " + 2 + " = " + numEnteredRemainder2);

//            numberEntered = numberEntered + 2;
//            numberEntered += 2;
//            numberEntered -= 2;
//            numberEntered--;
//            numberEntered++;

            int numberABS = Math.abs(numberEntered);
            int whichIsBigger = Math.max(5, 7);     // 7
            int whichIsSmaller = Math.min(5, 7);    // 5

            double numSqrt = Math.sqrt(5.23);

            int numCeiling = (int) Math.ceil(5.23); // 6
            int numFloor = (int) Math.floor(5.23);  // 5

            int numRound = (int) Math.round(5.63);  // 6

            int randomNumber = (int) (Math.random() * 11);
            System.out.println("Random Number: " + randomNumber);
        } else {
            System.out.println("Enter an integer next time");
        }
    }
}
