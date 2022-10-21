if keyboard_check(ord("R")) then room_restart()
if keyboard_check(ord("L")) then lives = 999
if keyboard_check(ord("W")) then room_goto_next()
if keyboard_check(ord("T")) then timerObj.countdown = 999