package com.delta.LessonSeven;

/**
 * Created by delta on 1/4/17.
 */
public class Main {
    public static void main(String[] args) {
        Monster Frank = new Monster();
        Frank.name = "Frank";

//        System.out.println(Frank.attack);
        System.out.println(Frank.name + " has an attact of " + Frank.getAttack());
    }
}