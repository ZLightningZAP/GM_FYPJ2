///scr_enemy_follow

var dist = point_distance(x, y, obj_player.x, obj_player.y);

if(dist <= aggroRange){
    //move towards player
    mp_potential_step(obj_player.x, obj_player.y, moveSpeed, true);
}
