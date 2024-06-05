function variable_init() {
	#macro RESOLUTION_W 540
	#macro RESOLUTION_H 960
	#macro LAST_LEVEL Level068
	#macro GRID_SIZE 64
	#macro LEVEL_COUNT 67 // must be number of levels implemented + 1
	#macro SAVE_FILE "highscores.json"
	#macro VERSION "0.2.66"
	global.moves_in_level = 0;
	global.current_flag_count = 0;
	global.flag_count = 0;
	global.previous_level = room;
	global.next_level = room;
	global.final_score = 999;
	global.player_scores = array_create(LEVEL_COUNT, 999);
	global.par_scores = [0, 5, 2, 7, 8, 6, 8, 7, 7, 12, 21, 9, 14, 8, 9, 17, 21, 6, 13, 30, 9, 
						10, 10, 11, 9, 10, 14, 12, 12, 10, 26, 14, 21, 24, 27, 22, 27, 11, 16, 20, 17, 
						4, 6, 6, 8, 9, 6, 9, 8, 25, 8, 11, 17, 19, 13, 10, 22, 31, 22, 17, 19,
						2, 4, 12, 1, 5, 3];
	global.player_stars = array_create(LEVEL_COUNT, 0);
	global.player_stars_total = 0;
}