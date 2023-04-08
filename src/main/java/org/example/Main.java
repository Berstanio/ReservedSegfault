package org.example;

import com.badlogic.gdx.utils.SharedLibraryLoader;

public class Main {

    static {
        new SharedLibraryLoader().load("segfault");
    }

    public static void main(String[] args) {
        System.out.println("Hello world!");
        writeToReserved3();
    }

    public static native void writeToReserved3();/*
        JNINativeInterface_* inv = (JNINativeInterface_*) env->functions;
        inv->reserved3 = NULL;
    */
}