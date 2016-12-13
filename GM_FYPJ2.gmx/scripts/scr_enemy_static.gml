///scr_enemy_static();
var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist <= aggroRange){
    state = scr_enemy_follow;
}


