package com.delta;

/**
 * Created by delta on 1/2/17.
 */
public class LessonThree {
    public static void main(String[] args) {
        int randomNumber = (int) (Math.random() * 50);

        /* Relational Operators:
        * Java has 6 relational operators
        * > : Greater Than
        * < : Less Than
        * == : Equal To
        * != : Not Equal To
        * >= : Greater Than Or Equal To
        * <= : Less Than Or Equal To
         */

        if (randomNumber < 25) {
            System.out.println("The random number is less than 25");
        } else if (randomNumber > 40) {
            System.out.println("The random number is greater than 40");
        } else if (randomNumber <= 18) {
            System.out.println("The random number is equal to 18");
        } else if (randomNumber >= 40) {
            System.out.println("The random number is not equal to 40");
        } else {
            System.out.println("Nothing Worked");
        }
        System.out.println("The random number is " + randomNumber);

        /* Logical Operators:
         * Java has 6 logical operators
		 * ! : Converts the boolean value to its right to its opposite form ie. true to false
		 * & : Returns true if boolean value on the right and left are both true (Always evaluates both boolean values)
		 * && : Returns true if boolean value on the right and left are both true (Stops evaluating after first false)
		 * | : Returns true if either boolean value on the right or left are true (Always evaluates both boolean values)
		 * || : Returns true if either boolean value on the right or left are true (Stops evaluating after first true)
		 * ^ : Returns true if there is 1 true and 1 false boolean value on the right or left
		 */

        if (!false) {
            System.out.println("\nI turned false into true");
        }

        if (false && true) {
            System.out.println("Both are true");
        }

        if (false & true) {
            System.out.println("Both are true");
        }

        if (false | true) {
            System.out.println("One is true");
        }

        if (!false | true) {
            System.out.println("One or Both are true");
        }

        if (false ^ true) {
            System.out.println("One is true and Another is false");
        }

        if (true && true) {
            System.out.println("Both are true");
        }

        // Terenary operators:
        int valueOne = 1, valueTwo = 2;
        int biggestValue = (valueOne > valueTwo) ? valueOne : valueTwo;
        System.out.println(biggestValue);

        // Switch statement:

        char theGrade = 'b';

        switch (theGrade) {
            case 'A':
            case 'a':
                System.out.println("Great job");
                break;
            case 'B':
            case 'b':
                System.out.println("Good job");
                break;
            case 'C':
            case 'c':
                System.out.println("OK");
                break;
            case 'D':
            case 'd':
                System.out.println("Bad");
                break;
            default:
                System.out.println("You Failed");
                break;
        }

    }
}
