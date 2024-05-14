#==============================================================================
# ** SceneManager
#------------------------------------------------------------------------------
#  This module manages scene transitions. For example, it can handle
# hierarchical structures such as calling the item screen from the main menu
# or returning from the item screen to the main menu.
#==============================================================================
module SceneManager
  #--------------------------------------------------------------------------
  # * Execute
  #--------------------------------------------------------------------------
  def self.run
    DataManager.init
    Audio.setup_midi if use_midi?
    self.run_map
    @scene.main while @scene
  end
  #--------------------------------------------------------------------------
  # * Run Map
  #--------------------------------------------------------------------------
  def self.run_map
    DataManager.setup_new_game
    $game_map.autoplay
    SceneManager.goto(Scene_Map)
  end
end