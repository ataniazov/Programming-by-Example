package com.delta;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Created by delta on 1/4/17.
 * <p>
 * java.lang.RunTimeException
 * java.lang.Exception
 * <p>
 * ArithmeticException
 * ClassNotFoundException
 * IllegalArgumentException
 * IndexOUtOfBoundsException
 * InputMismatchException
 * IOException
 */
public class LessonSix {

    static Scanner userInput = new Scanner(System.in);

    public static void main(String[] args) {
        divideByZero(2);

        System.out.print("How old are you? ");
        int age = checkValidAge();

        if (age != 0) {
            System.out.println("You are " + age + " years old");
        }

        getAFile("./somestuff.txt");

        try {
            getAFileWithThrow("./somestuff.txt");
        } catch (IOException e) {
            System.out.println("An IO Err Occurred");
        }
    }

    public static void divideByZero(int a) {
        try {
            System.out.println(a / 0);
        } catch (ArithmeticException e) {
            System.out.println("You can't do that");
            System.out.println(e.getMessage());
            System.out.println(e.toString());
//            e.printStackTrace();
        }
    }

    public static int checkValidAge() {
        try {
            return userInput.nextInt();
        } catch (InputMismatchException e) {
            System.out.println(e.toString());
            userInput.next();
            System.out.print("That isn't a whole number");
            return 0;
        }
    }

    public static void getAFile(String fileName) {

        try {
            FileInputStream file = new FileInputStream(fileName);

        } catch (FileNotFoundException e) {
            System.out.println("Sorry can't find that file");

        } catch (IOException e) {
            System.out.println("Unknown IO Error");
        }
//        catch (ClassNotFoundException | IOException e) {}

        catch (Exception e) {
            System.out.println("Some error occurred");
        } finally {
            System.out.println("Clean up...");
        }
    }

    public static void getAFileWithThrow(String fileName) throws IOException, FileNotFoundException {
        FileInputStream file = new FileInputStream(fileName);

    }
}
