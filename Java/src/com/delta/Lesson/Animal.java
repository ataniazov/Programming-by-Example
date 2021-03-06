package com.delta.Lesson;

// Single line comment

import java.util.Arrays;
import java.util.Scanner;

/**
 * Created by delta on 1/1/17.
 * <p>
 * Multi line comment
 */
public class Animal {
    public static final double FAVNUMBER = 1.609;

    // Variables can start with:
    // H,h or _ (underline) or $ (dollar sign)

    private String name;
    // int: -2^31 to 2^31
    private int weight;
    private boolean hasOwner = false;
    private byte age;
    private long uniqueID;
    private char favoriteChar;
    private double speed;
    private float height;

    protected static int numberOfAnimals = 0;

    static Scanner userInput = new Scanner(System.in);

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public boolean isHasOwner() {
        return hasOwner;
    }

    public void setHasOwner(boolean hasOwner) {
        this.hasOwner = hasOwner;
    }

    public byte getAge() {
        return age;
    }

    public void setAge(byte age) {
        this.age = age;
    }

    public long getUniqueID() {
        return uniqueID;
    }

    public void setUniqueID(long uniqueID) {
        this.uniqueID = uniqueID;
        System.out.println("Unique ID set to: " + this.uniqueID);
    }

    public void setUniqueID() {
        long minNumber = 1;
        long maxNumber = 1000000;
        // (byte) (int)
        // (long) for casting because Math.random() returns double
        this.uniqueID = minNumber + (long) (Math.random() * ((maxNumber - minNumber) + 1));

        // Byte.toString(); Integer.toString(); Float.toString(); Double.toString();
        String stringNumber = Long.toString(maxNumber);

        // Long.parseLong(); Float.parseFloat(); Double.parseDouble();
        int numberString = Integer.parseInt(stringNumber);

    }

    public char getFavoriteChar() {
        return favoriteChar;
    }

    public void setFavoriteChar(char favoriteChar) {
        this.favoriteChar = favoriteChar;
    }

    public void setFavoriteChar() {
        int randomNumber = (int) (Math.random() * 126) + 1;
        this.favoriteChar = (char) randomNumber;
        // > < == != >= <=
        if (randomNumber == 32) {
            System.out.println("Favorite character set to Space");

        } else if (randomNumber == 10) {
            System.out.println("Favorite character set to Newline");

        } else {
            System.out.println("Favorite character set to " + favoriteChar);
        }

        // Logical operators: ! & && | || ^
        if ((randomNumber > 97) && (randomNumber < 122)) {
            System.out.println("Favorite character is a lowercase letter");
        }

        if (((randomNumber > 97) && (randomNumber < 122)) || (randomNumber > 64) && (randomNumber < 91)) {
            System.out.println("Favorite character is a letter");
        }
        // !true, !false

        // terenary operator
        int whichIsBigger = (50 > randomNumber) ? 50 : randomNumber;

        switch (randomNumber) {
            case 8:
                System.out.println("Favorite character set to backspace");
                break;
            case 10:
            case 11:
            case 12:
                System.out.println("Favorite character set to 10,11 or 12");
                break;
            default:
                System.out.println();
                break;
        }

    }

    public double getSpeed() {
        return speed;
    }

    public void setSpeed(double speed) {
        this.speed = speed;
    }

    public float getHeight() {
        return height;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public Animal() {
        numberOfAnimals++;

        int sumOfNumbers = 5 + 3;
        System.out.println("5 + 3 = " + sumOfNumbers);

        int diffOfNumbers = 5 - 3;
        System.out.println("5 - 3 = " + diffOfNumbers);

        int multOfNumbers = 5 * 3;
        System.out.println("5 * 3 = " + multOfNumbers);

        int divOfNumbers = 5 / 3;
        System.out.println("5 / 3 = " + divOfNumbers);

        int modOfNumbers = 5 % 3;
        System.out.println("5 % 3 = " + modOfNumbers);

        System.out.print("Enter the name: \n");

        // hasNextInt, hasNextFloat, hasNextDouble
        // hasNextBoolean, hastNextByte
        // nextInt, nextFloat, nextDouble

        if (userInput.hasNextLine()) {
            this.setName(userInput.nextLine());
        }

        this.setFavoriteChar();
        this.setUniqueID();
    }

    protected static void countTo(int startingNumber) {
        for (int i = startingNumber; i <= 100; i++) {
            if (i == 90) continue;

            System.out.println(i);

        }
    }

    protected static String printNumbers(int maxNumbers) {
        int i = 1;

        while (i < (maxNumbers / 2)) {
            System.out.println(i);
            i++;
            if (i == (maxNumbers / 2)) break;

        }

        Animal.countTo(maxNumbers / 2);

        return "End of printNumers";
    }

    protected static void guessMyNumber() {
        int number;
        do {
            System.out.println("Guess Number up to 100");

            while (!userInput.hasNextInt()) {
                String numberEntered = userInput.next();
                System.out.printf("%s is not a number\n", numberEntered);

                // %d, %.2f
            }

            number = userInput.nextInt();
        } while (number != 50);
    }

    public String makeSound() {
        return "Grrr";
    }

    public static void speakAnimal(Animal randAnimal) {
        System.out.println("Animal says " + randAnimal.makeSound());
    }

    public static void main(String[] args) {
        Animal theAnimal = new Animal();
        Animal fido = new Dog();
        Animal fluffy = new Cat();

        Animal[] theAnimals = new Animal[10];

        theAnimals[0] = fido;
        theAnimals[1] = fluffy;

        System.out.println("Fido says " + theAnimals[0].makeSound());
        System.out.println("Fluffy says " + theAnimals[1].makeSound());

        speakAnimal(fluffy);

        // Arrays

        int[] favoriteNumber;
        favoriteNumber = new int[20];

        favoriteNumber[0] = 100;

        String[] stringArray = {"Random", "Words", "Here"};

        for (String word : stringArray) {
            System.out.println(word);
        }

        String[][][] arrayName = {{{"000"}, {"100"}, {"200"}, {"300"}},
                {{"010"}, {"110"}, {"210"}, {"310"}},
                {{"020"}, {"120"}, {"220"}, {"320"}}};

        for (int i = 0; i < arrayName.length; i++) {
            for (int j = 0; j < arrayName[i].length; j++) {
                for (int k = 0; k < arrayName[i][j].length; k++) {
                    System.out.print("| " + arrayName[i][j][k]);

                }
            }
            System.out.println("|");
        }

        String[] cloneOfArray = Arrays.copyOf(stringArray, 3);
        System.out.println(Arrays.toString(cloneOfArray));

        System.out.println(Arrays.binarySearch(cloneOfArray, "Random"));

    }


}
