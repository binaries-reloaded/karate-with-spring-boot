package com.example.karatetestdemo;

import com.intuit.karate.junit5.Karate;

public class APITest {

    @Karate.Test
    Karate runAll() {
        return Karate.run().relativeTo(getClass());
    }
}
