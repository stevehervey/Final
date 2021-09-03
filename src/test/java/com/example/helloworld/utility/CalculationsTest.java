package com.example.helloworld.utility;

import org.junit.Before;
import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class CalculationsTest {
    private Calculations calc;

    @Before
    public void setUp() throws Exception {
        calc = new Calculations();
    }

    @Test
    public void addTwoNumbers() {
        int result = 1+1;
        assertEquals(result,calc.addTwoNumbers(1,1));
    }

}