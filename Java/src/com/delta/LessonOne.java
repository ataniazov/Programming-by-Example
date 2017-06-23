package com.delta;

/**
 * Created by delta on 1/1/17.
 */
public class LessonOne {

    static String randomString = "String to print";

    static final double PINUM = 3.141529;

    public static void main(String[] args) {
        System.out.println("Hello World!");
        System.out.println(PINUM);

        int integerOne = 22;             // declaration statement
        int integerTwo = integerOne + 1; // expression statement

        // Primitives
        byte bigByte = 127;
        short bigShort = 32767;
        int bigInt = 2100000000;

        long bigLong = 9220000000000000000L;

        float bigFloat = 3.14F;
        double bigDouble = 3.14323423423423424242423433456456;

        System.out.println(Float.MAX_VALUE);
        System.out.println(Double.MAX_VALUE);

        boolean trueOrFalse = true;

        char randomChar = 65;
        char anotherChar = 'A';

        System.out.println(randomChar);
        System.out.println(anotherChar);
        // Escape chars: \n \t \b \f \r \" \' \\
        char escapedChars = '\n';

        String randomString = "I'm a random string";
        String anotherString = "Stuff";

        String andAnotherString = randomString + " " + anotherString;
        System.out.println(andAnotherString);

        String byteString = Byte.toString(bigByte);
        String shortString = Short.toString(bigByte);
        String intString = Integer.toString(bigByte);
        String longString = Long.toString(bigByte);
        String floatString = Float.toString(bigByte);
        String doubleString = Double.toString(bigByte);
//        String booleantring = Boolean.toString(bigByte);
        double aDoubleValue = 3.141529;
        int doubleToInt = (int) aDoubleValue;
        System.out.println(doubleToInt);
        // casting: (int) (byte) (short) (long) (double)

        int stringToInt = Integer.parseInt(intString);
        // parseShort, parseLong, parseByte, parseFloat, parseDouble, parseBoolean

    }
}
