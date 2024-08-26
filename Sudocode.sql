#BEGIN
#    Yellow = button 1
#    Blue = button 2
#    green = button 3
#    red = button 4
#    leds = list(Yellow = button 1,Blue = button 2,green = button 3,red = button 4)
#    Game/reset = button 5
#    IF game True THEN
#        random button
#    IF button 1-4 True THEN
#        add random list 
#END

BEGIN
    Red = button 1
    Green = button 2
    Yellow = button 3
    Blue = button 4
    Leds = list(yellow = button1, blue = button 2, green = button 3, red = button 4)
    
    button 5 = game_formula
    game_formula()

END

BEGIN game_formula()

    playing = TRUE

    WHILE playing
        send_random = Random between 1-4
        pattern.add(send_random)
        Play LEDs pattern
        button_pressed = Wait for button press
        IF button_pressed != send_random THEN
            playing = FALSE
        END IF
    END WHILE


END

BEGIN game_formula()
    """generates random from list, sends to game formula"""
    send_random = add random led from list
    IF button.value() == true THEN
        send_random
    END IF
END