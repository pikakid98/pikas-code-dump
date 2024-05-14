# --------------------------------------------------------
# ▼ "Unable to find" Skip [VX Ace] - v1.0
#    by Krosk - thanks to Wawower and berka
# --------------------------------------------------------
#   If a graphic or audio resource is missing,
# the game will prompt the player with an error message
# and shut down, making it impossible to go further. 
# This situation should NOT happen when, as a maker, 
# you release a game, but mistakes happen sometimes.
#
#   This script allows the player to continue playing
# even if a graphic or audio resource is missing,
# regardless of if the project is encrypted or not.
# A warning message will still prompt the player that 
# a resource is missing, but he/she will be able to continue
# playing.
#
#   It will not prevent the crash if a map or a data file 
# is missing.
# 
#   A missing image is replaced by an empty transparent 
# sprite, although you can replaced it by yourself with 
# an image of your choice.
#   Set UTFSSUB = "Graphics/Picture/image_example"
# with the path of the picture.
#
#   A missing sound is just skipped altogether.
# 
#   You can custom the warning message with UTFSTEXT
# to tell the player what to do (e.g. send you a mail).
#   Use \n to jump a line
#   Use %s to indicate the name of the missing resource
#   
#   Warning messages use a popup (VX/Ace feature msgbox)
# You can use the console instead, by setting UTFSBOX = true.
# --------------------------------------------------------

UTFSTEXT = "Pikakid98 (Developer)\n     Oops. Looks like [%s] is missing.\n     Either I forgot it or you removed it.\n     Yes. This is a real error.\n     This is not the game trying to fool you"
UTFSSUB  = ""
UTFSBOX  = false

# --------------------------------------------------------
# ▼ No need to edit below this line
# --------------------------------------------------------

UTFS_print = UTFSBOX ? method(:print) : method(:msgbox)

class << Bitmap
  alias_method :utfs_new, :new unless method_defined?(:utfs_new)
  def new(*args)
    utfs_new(*args)
  rescue
    if args.size == 1
      UTFS_print.call sprintf UTFSTEXT, args[0]
    end
    begin
      utfs_new(UTFSSUB)
    rescue
      utfs_new(32, 32)
    end
  end
end

module Audio
  class << self
    alias_method :utfs_se_play, :se_play
    alias_method :utfs_me_play, :me_play
    alias_method :utfs_bgm_play, :bgm_play
    alias_method :utfs_bgs_play, :bgs_play
  end

  def self.se_play(filename, volume = 100, pitch = 100)
    self.utfs_se_play(filename, volume, pitch)
  rescue
    UTFS_print.call sprintf UTFSTEXT, filename
  end
  
  def self.me_play(filename, volume = 100, pitch = 100)
    self.utfs_me_play(filename, volume, pitch)
  rescue
    UTFS_print.call sprintf UTFSTEXT, filename
  end
  
  def self.bgm_play(filename, volume = 100, pitch = 100, pos = 0)
    self.utfs_bgm_play(filename, volume, pitch, pos)
  rescue
    UTFS_print.call sprintf UTFSTEXT, filename
  end
  
  def self.bgs_play(filename, volume = 100, pitch = 100, pos = 0)
    self.utfs_bgs_play(filename, volume, pitch, pos)
  rescue
    UTFS_print.call sprintf UTFSTEXT, filename
  end
end

#==============================================================================
# End of file
#==============================================================================