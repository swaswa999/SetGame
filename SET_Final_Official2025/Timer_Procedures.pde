public void togglePauseResume() {
  if (state == State.PAUSED) {
    resumeGame();
  } else {
    pauseGame();
  }
}

public void pauseGame() {
  state = State.PAUSED;
  timeElapsed += millis() - runningTimerStart;
  message = 9;
}

public void resumeGame() {
  state = State.PLAYING;
  runningTimerStart = millis();
  message = 10;
}

void showTimer() {
  textFont(timerFont);
  fill(TIMER_FILL);
  // If the game is paused, show time elapsed
  // If the game is over, show time to complete
  // Otherwise, show time elapsed so far in current game
  if (state == State.PAUSED) {
    text("Time: " + timeElapsed/1000, TIMER_LEFT_OFFSET, TIMER_TOP_OFFSET);
  } else if (state == State.GAME_OVER) { 
    text("Time: " + (runningTimerEnd - runningTimerStart + timeElapsed)/1000, TIMER_LEFT_OFFSET, TIMER_TOP_OFFSET);
  } else {
    text("Time: " + (millis() - runningTimerStart + timeElapsed)/1000, TIMER_LEFT_OFFSET, TIMER_TOP_OFFSET);
  }
}

public int timerScore() {
    // Calculate the total time taken in milliseconds
    int totalMillis = (int)(runningTimerEnd - runningTimerStart + timeElapsed);
    // Convert milliseconds to full seconds
    int totalSeconds = totalMillis / 1000;
    // Calculate bonus: 300 seconds minus total time, ensuring it's not negative
    return Math.max(0, 300 - totalSeconds);
}
