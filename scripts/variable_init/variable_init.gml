function variable_init() {
	#macro RESOLUTION_W 540
	#macro RESOLUTION_H 960
	#macro LAST_LEVEL Level051
	#macro GRID_SIZE 64
	#macro LEVEL_COUNT 52 // must be number of levels implemented + 1
	global.moves_in_level = 0;
	global.current_flag_count = 0;
	global.flag_count = 0;
	global.game_paused = false;
	global.previous_level = room;
	global.next_level = room;
	global.final_score = 999;
	global.player_scores = array_create(LEVEL_COUNT, 999);
	global.par_scores = [0, 5, 2, 7, 8, 6, 8, 7, 7, 12, 21, 9, 14, 9, 9, 17, 21, 6, 13, 30, 9, 10, 10, 11, 23, 27, 11, 16, 12, 10, 26, 10, 17, 24, 20, 27, 21, 9, 12, 14, 17, 4, 6, 6, 8, 9, 6, 9, 8, 25, 8, 11];
	global.player_stars = array_create(LEVEL_COUNT, 0);
	global.player_stars_total = 0;
}