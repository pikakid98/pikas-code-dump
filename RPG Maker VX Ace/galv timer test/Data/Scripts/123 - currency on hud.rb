#Wherever you see $game_switches[1]
#Change 1 to the switch to turn the hud on/off

class Window_MapTime < Window_Base
 def initialize
super(0,0,200,80)
@ampm = "AM"
if $game_switches[1] == false
  self.opacity = 0
  time_draw
end
 end

 def time_draw
if $game_variables[100] == 1
  @ampm = "PM"
else
  @ampm = "AM"
end
@hours = $game_variables[97] # Hours
@mins = $game_variables[96] # Mins
@secs = $game_variables[95] #Seconds
text = @hours.to_s + ":" + @mins.to_s + ":" + @secs.to_s + " " + @ampm
draw_text(0,0,200,40,text)
 end

 def update
if $game_switches[1] == false
  contents.clear
  time_draw
end
if $game_switches[1] == true
  self.opacity = 255
end
 end
end

class Scene_Map < Scene_Base
 alias time_draw_on_map_time create_all_windows
 def create_all_windows
time_draw_on_map_time
@maptime_window = Window_MapTime.new
 end
end