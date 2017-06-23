package com.delta.LessonSeven;

/**
 * Created by delta on 1/4/17.
 */
public class Monster {
    public final String TOMBSTONE = "Here Lies a Dead monster";

    private int health = 500;
    private int attack = 20;
    private int movement = 2;

    private int xPositon = 0;
    private int yPositon = 0;

    private boolean alive = true;

    public String name = "Big Monster";

    public int getAttack() {
        return attack;
    }

    public int getMovement() {
        return movement;
    }

    public int getHealth() {
        return health;
    }

    public void setHealth(int decreaseHealth) {
        health -= decreaseHealth;

        if (health < 0) {
            alive = false;
        }
    }

    public void setHealth(double decreaseHealth) {
        int intDecreaseHealth = (int) decreaseHealth;
        health -= intDecreaseHealth;

        if (health < 0) {
            alive = false;
        }
    }

    // Constuctor can not return value
    public Monster(int newHealth, int newAttack, int newMovement) {
        health = newHealth;
        attack = newAttack;
        movement = newMovement;
    }

//    public Monster(int health, int attack, int movement) {
//        this.health = health;
//        this.attack = attack;
//        this.movement = movement;
//    }

    // Default Constructor
    public Monster() {

    }

//    public Monster(int newHealth){
//        health = newHealth;
//    }
//
//    public Monster(int newHealth, int newAttack){
//        this(newHealth);
//        attack = newAttack;
//    }

    public static void main(String[] args) {
        Monster Frank = new Monster();
        System.out.println(Frank.attack);
    }
}

