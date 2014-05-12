package com.technologyconversations.articles.cd;

import org.junit.Test;

import static org.hamcrest.Matchers.*;
import static org.hamcrest.MatcherAssert.assertThat;

public class PlayerTest {

    @Test
    public void pointsCanBeAddedToEachPlayer() {
        Player victor = new Player("Victor");
        Player sarah = new Player("Sarah");
        for (int index = 1; index <= 3; index++) {
            victor.winBall();
        }
        for (int index = 1; index <= 4; index++) {
            sarah.winBall();
        }
        assertThat(victor, hasProperty("score", is(3)));
        assertThat(sarah, hasProperty("score", is(4)));
    }
}
