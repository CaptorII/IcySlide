move_string = string(global.moves_in_level);
flag_string = string(global.current_flag_count) + "/" + string(global.flag_count);
stamina_step = ((global.stamina - global.moves_in_level) / global.stamina) * 10;