sprite_index = playerDeath
instance_create_layer(x, y, layer, playerDeathObj)
lives -= 1
audio_stop_sound(backgroundMusic)