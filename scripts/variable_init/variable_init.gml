function variable_init() {
	#macro RESOLUTION_W 540
	#macro RESOLUTION_H 960
	#macro LAST_LEVEL Level020
	#macro GRID_SIZE 64
	#macro LEVEL_COUNT 21 // must be number of levels implemented + 1
	global.moves_in_level = 0;
	global.current_flag_count = 0;
	global.flag_count = 0;
	global.game_paused = false;
	global.previous_level = room;
	global.next_level = room;
	global.final_score = 999;
	global.player_scores = array_create(LEVEL_COUNT, 999);
	global.par_scores = [0, 5, 7, 2, 8, 7, 9, 12, 14, 17, 21, 7, 11, 9, 6, 21, 30, 13, 6, 10, 8];
}