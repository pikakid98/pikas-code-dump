#==============================================================================
# â–  Modify Event Behaviour 6
#   @version 0.14 12/01/21 RGSS3
#   @author Saba Kan
#   @translator kirinelf
#------------------------------------------------------------------------------
# ã€€ Makes it so events only move after player does. 
#   ã„ã‚ã„ã‚ã¤ãã‚Šã‹ã‘ã§ã™ã€‚ <= Various things are still in the making?
#==============================================================================

module Saba
 module Dungeon
   # Events always move towards player?
   ENEMY_ALWAYS_TOWARD_PLAYER = true
 end
end

#=========================================================================
# Do not edit anything under this line unless you know what you're doing!
#=========================================================================

class Game_Event
 attr_reader :event_waiting
 #--------------------------------------------------------------------------
 # â— ã‚ªãƒ–ã‚¸ã‚§ã‚¯ãƒˆåˆæœŸåŒ–
 #     event : RPG::Event
 #--------------------------------------------------------------------------
 alias saba_dungeon_initialize initialize
 def initialize(map_id, event)
   saba_dungeon_initialize(map_id, event)
   @event_id = event.id
 end
 #--------------------------------------------------------------------------
 # â— åœæ­¢æ™‚ã®æ›´æ–°
 #--------------------------------------------------------------------------
 alias saba_dungeon_update_stop update_stop
 def update_stop
   unless $game_map.dungeon?
     saba_dungeon_update_stop
     return
   end
   super
   unless @move_route_forcing
     update_self_movement if $game_player.start_move
   end
 end
 def check_waiting_event
   if @event_waiting
     start
   end
 end
 #--------------------------------------------------------------------------
 # â— ãƒ€ãƒƒã‚·ãƒ¥çŠ¶æ…‹åˆ¤å®š
 #--------------------------------------------------------------------------
 def dash?
   return super unless $game_map.dungeon?
   return $game_player.dash?
 end
 #--------------------------------------------------------------------------
 # â— ã‚¤ãƒ™ãƒ³ãƒˆèµ·å‹•
 #--------------------------------------------------------------------------
 alias saba_dungeon_start start
 def start
   @event_waiting = false
   saba_dungeon_start
 end
 alias saba_dungeon_update_self_movement update_self_movement
 def update_self_movement
   if stop_by_encounter?
     @stop_by_encounter_turn -= 1
     return
   end
   saba_dungeon_update_self_movement
   update_move
 end

 #--------------------------------------------------------------------------
 # â— æŽ¥è§¦ã‚¤ãƒ™ãƒ³ãƒˆã®èµ·å‹•åˆ¤å®š
 #--------------------------------------------------------------------------
 alias saba_dungeon_check_event_trigger_touch check_event_trigger_touch
 def check_event_trigger_touch(x, y)
   return if stop_by_encounter?
   return if $game_map.interpreter.running?
   return if @starting
   return if @trigger != 2

   return if jumping?
   return unless normal_priority?
   if @trigger == 2 && $game_player.pos?(x, y)
     @event_waiting = true
     return
   end

   return unless $game_player.followers.visible
   $game_player.followers.each do |follower|
     if follower.pos?(x, y)
       @event_waiting = true
       return
     end
   end
 end
 #--------------------------------------------------------------------------
 # â— ã‚¨ãƒ³ã‚«ã‚¦ãƒ³ãƒˆã«ã‚ˆã‚Šã‚¤ãƒ™ãƒ³ãƒˆä¸€æ™‚åœæ­¢
 #--------------------------------------------------------------------------
 def stop_by_encounter(turn)
   @stop_by_encounter_turn = turn
 end
 #--------------------------------------------------------------------------
 # â— ã‚¨ãƒ³ã‚«ã‚¦ãƒ³ãƒˆã«ã‚ˆã‚Šã‚¤ãƒ™ãƒ³ãƒˆãŒåœæ­¢ã—ã¦ã„ã‚‹ã‹ï¼Ÿ
 #--------------------------------------------------------------------------
 def stop_by_encounter?
   return @stop_by_encounter_turn != nil && @stop_by_encounter_turn > 0
 end
 #--------------------------------------------------------------------------
 # â— ã‚¢ãƒ‹ãƒ¡ãƒ‘ã‚¿ãƒ¼ãƒ³ã®æ›´æ–°
 #--------------------------------------------------------------------------
 def update_anime_pattern
   return if stop_by_encounter?
   super
 end
 #--------------------------------------------------------------------------
 # â— ç§»å‹•ã‚¿ã‚¤ãƒ— : è¿‘ã¥ã
 #--------------------------------------------------------------------------
 alias saba_dungeon_move_type_toward_player move_type_toward_player
 def move_type_toward_player
   unless Saba::Dungeon::ENEMY_ALWAYS_TOWARD_PLAYER
     saba_dungeon_move_type_toward_player
     return
   end
   if near_the_player?
     move_toward_player
   else
     move_random
   end
 end
 #--------------------------------------------------------------------------
 # â— ãƒ—ãƒ¬ã‚¤ãƒ¤ãƒ¼ã«è¿‘ã¥ã
 #--------------------------------------------------------------------------
 def move_toward_player
   char = $game_player.nearest_char(x, y)
   move_toward_character(char)
 end
 #--------------------------------------------------------------------------
 # â— ã‚­ãƒ£ãƒ©ã‚¯ã‚¿ãƒ¼ã«è¿‘ã¥ã
 #--------------------------------------------------------------------------
 def move_toward_character(character)
   sx = distance_x_from(character.x)
   sy = distance_y_from(character.y)
   if sx.abs > sy.abs
     move_straight(sx > 0 ? 4 : 6)
     if !@move_succeed && sy != 0 && !@event_waiting
       if @last_pos == [x, y + 1]
         move_straight(2)
       elsif @last_pos == [x, y - 1]
         move_straight(8)
       else
         move_straight(sy > 0 ? 8 : 2)
       end
     end
   elsif sy != 0
     move_straight(sy > 0 ? 8 : 2)
     if !@move_succeed && sx != 0 && !@event_waiting
       if @last_pos == [x + 1, y]
         move_straight(4)
       elsif @last_pos == [x + 1, y]
         move_straight(6)
       else
         move_straight(sx > 0 ? 4 : 6)
       end
     end
   end
   @last_pos = [x, y] if $game_map.room(x, y) == nil
 end
end

class Game_Player
 attr_reader :start_move
 #--------------------------------------------------------------------------
 # â— æ–¹å‘ãƒœã‚¿ãƒ³å…¥åŠ›ã«ã‚ˆã‚‹ç§»å‹•å‡¦ç†
 #--------------------------------------------------------------------------
 alias saba_dungeon_move_by_input move_by_input
 def move_by_input
   unless $game_map.dungeon?
     saba_dungeon_move_by_input
     return
   end

   if !movable? || $game_map.interpreter.running?
     @start_move = false
     return
   end
   if Input.dir4 > 0
     return if $game_map.wait_for_event?
     unless passable?(@x, @y, Input.dir4)
       set_direction(Input.dir4)
       check_event_trigger_touch_front
       return
     end
     move_straight(Input.dir4)
     @start_move = true
   else
     @start_move = false
   end
 end
 #--------------------------------------------------------------------------
 # â—‹ éšŠåˆ—ã®ã‚­ãƒ£ãƒ©ã‚‚å«ã‚“ã§ã€ä¸€ç•ªè¿‘ã„ã‚­ãƒ£ãƒ©ã‚’å–å¾—
 #--------------------------------------------------------------------------
 def nearest_char(x, y)
   return self unless $game_player.followers.visible
   min = $game_player.distance_x_from(x) + $game_player.distance_x_from(y)
   return self if min >= 5
   min_char = self
   for follower in $game_player.followers
     dist = follower.distance_x_from(x) + follower.distance_x_from(y)
     if dist < min
       min = dist
       min_char = follower
     end
   end
   return min_char
 end
end


class Game_Map
 #--------------------------------------------------------------------------
 # â— ã‚¤ãƒ™ãƒ³ãƒˆã®æ›´æ–°
 #--------------------------------------------------------------------------
 alias saba_dungeon_update_events update_events
 def update_events
   saba_dungeon_update_events
   return unless dungeon?
   moving = $game_player.moving?
   if ! moving
     @events.each_value {|event| event.check_waiting_event }
   end
   @last_moving = moving
 end
 #--------------------------------------------------------------------------
 # â— ã‚¨ãƒãƒŸãƒ¼ã‚¤ãƒ™ãƒ³ãƒˆã®å‡¦ç†ã‚’å¾…ã£ã¦ã„ã‚‹ã‹ï¼Ÿ
 #--------------------------------------------------------------------------
 def wait_for_event?
   @events.each_value {|event| return true if event.event_waiting || event.starting }
   return false
 end
 #--------------------------------------------------------------------------
 # â— ã‚¤ãƒ™ãƒ³ãƒˆã®æ›´æ–°
 #--------------------------------------------------------------------------
 def stop_by_encounter(event_id, turn)
   @events[event_id].stop_by_encounter(turn)
 end
end

class Game_Interpreter
 def stop(turn)
   $game_map.stop_by_encounter(self.event_id, turn)
 end
end