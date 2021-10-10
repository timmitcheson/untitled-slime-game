// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_constantsAndValues(){
	enum DIRS {
		UP = 0,
		DOWN = 180,
		LEFT = 90,
		RIGHT = 270
	}
	#macro NON_COLLIDE_TILE_INDEX_START 23
	#macro MAX_HP_PLAYER 30
	#macro MAX_HP_SKELETON 4
	#macro MAX_HP_STEGO 8
	
	#macro ATTACK_SPEED_PLAYER 1
	#macro ATTACK_SPEED_SKELETON 1
	#macro ATTACK_SPEED_STEGO 1
	
	#macro ATTACK_COOLDOWN_SKELETON 2
	#macro ATTACK_COOLDOWN_STEGO 4
	
	#macro ATTACK_DELAY_SKELETON 0.5;
	#macro ATTACK_DELAY_STEGO 0.5;
	
	#macro DAMAGE_PLAYER 1
	#macro DAMAGE_SKELETON 2
	#macro DAMAGE_STEGO 5
	
	#macro ATTACK_DISTANCE_PLAYER global.tile_size * 1
	#macro ATTACK_DISTANCE_SKELETON global.tile_size * 1.5
	#macro ATTACK_DISTANCE_STEGO global.tile_size * 1.5
	
	#macro ATTACK_RANGE_SKELETON global.tile_size * 0.5
	#macro ATTACK_RANGE_STEGO global.tile_size * 0.5
	
	#macro BASE_XP_SKELETON 20
	#macro BASE_XP_STEGO 50
	
	#macro STANDOFF_RANGE global.tile_size * 0.5
	#macro LEVEL_MODIFIER 0.25
	#macro LEVEL_XP_COST_SCALER 1.2
	#macro LEVEL_BASE_XP_COST 100
	#macro TAKEOVER_THRESHOLD 0.25
	#macro DEATH_TIME 2
}

function setupSpawnChance() {
	var _spawnChances = ds_map_create();
	
	// Add more values to map in same style as below:
	ds_map_add(_spawnChances,obj_skeleton,0.75);
	ds_map_add(_spawnChances,obj_stegosaurus, 0.15);
	
	return _spawnChances;
}