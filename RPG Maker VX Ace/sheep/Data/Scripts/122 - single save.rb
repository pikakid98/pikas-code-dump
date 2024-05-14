#==============================================================================
# .: Single Save :.
# .: Version 1.0 :.
# .: By AABattery :.
# http://www.rpgmakervxace.net/topic/8772-single-save-file/
#==============================================================================
# Some games are better off with only one save file. That's what this does!
#==============================================================================
#  INSTRUCTIONS
#------------------------------------------------------------------------------
# This script is just a plug-n-play, and doesn't need any configuration,
# however, if you want to change the name of the save file, just change the
# word "Save" inside the quotes in the DataManager module.
#
# Be sure that both instances of "Save" are written the same and that the
# extension (.rvdata2) is intact. Otherwise you will receive some problems.
#==============================================================================
#   If you encounter any problems, please post in the thread shown above!
#==============================================================================
#==============================================================================
# ** DataManager
#------------------------------------------------------------------------------
#  This module manages the database and game objects. Almost all of the
# global variables used by the game are initialized by this module.
#==============================================================================
module DataManager
 #--------------------------------------------------------------------------
 # * Determine Existence of Save File
 #--------------------------------------------------------------------------
 def self.save_file_exists?
!Dir.glob('Save.rvdata2').empty? # Change 'Save' to whatever you want
 end
 #--------------------------------------------------------------------------
 # * Create Filename
 #     index : File Index
 #--------------------------------------------------------------------------
 def self.make_filename(index)
sprintf("Save.rvdata2")		  # Change "Save" to whatever you want
 end
end
#==============================================================================
# ** Scene_File
#------------------------------------------------------------------------------
#  This class performs common processing for the save screen and load screen.
#==============================================================================
class Scene_File < Scene_MenuBase
 #--------------------------------------------------------------------------
 # * Start Processing
 #--------------------------------------------------------------------------
 def start
super
save_load_file
 end
 def terminate
 end
 #--------------------------------------------------------------------------
 # * Saves/Loads
 #--------------------------------------------------------------------------
 def save_load_file
 end
end
#==============================================================================
# ** Scene_Load
#------------------------------------------------------------------------------
#  This class performs load screen processing.
#==============================================================================
class Scene_Load < Scene_File
 #--------------------------------------------------------------------------
 # * Loads
 #--------------------------------------------------------------------------
 def save_load_file
DataManager.load_game(0)
Graphics.transition(30)
fadeout_all
$game_system.on_after_load
SceneManager.goto(Scene_Map)
 end
end
#==============================================================================
# ** Scene_Save
#------------------------------------------------------------------------------
#  This class performs save screen processing.
#==============================================================================
class Scene_Save < Scene_File
 #--------------------------------------------------------------------------
 # * Saves
 #--------------------------------------------------------------------------
 def save_load_file
DataManager.save_game(0)
Sound.play_save
return_scene
 end
end