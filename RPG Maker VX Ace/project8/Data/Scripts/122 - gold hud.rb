class Scene_Map < Scene_Base
#---------------------------------------------------------------------------
# * Create All Windows
#---------------------------------------------------------------------------
alias :my_create_all_windows :create_all_windows
  def create_all_windows
    my_create_all_windows
    create_gold_window
  end
#--------------------------------------------------------------------------
# * Update Scene Transition
#--------------------------------------------------------------------------
alias :my_update_scene :update_scene
  def update_scene
    my_update_scene
    @gold_window.refresh
  end
#--------------------------------------------------------------------------
# * Create Gold Window
#--------------------------------------------------------------------------
def create_gold_window
  @gold_window = Window_Gold.new
  @gold_window.x = 386
  @gold_window.y = Graphics.height - @gold_window.height
  end
end