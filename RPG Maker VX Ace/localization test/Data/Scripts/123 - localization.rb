#+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
# Localization
# Edit for VX-ACE by KK20
# Author: ForeverZer0
# Version: 1.1
# Date: 7.26.12
#+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
#                             VERSION HISTORY
#+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
# v.1.0  7.26.12
#   - Initial release
# v.1.1  7.27.12
#   - Added ability to use any string as the ID instead of just numbers
#   - Added an alert message when a string is not found in the localization
#     file and the game is being ran in DEBUG mode
#+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
#
# Introduction:
#   This script adds support for creating games that support multiple languages.
#   The files for each culture are located externally so that they can be easily
#   translated and used by simply dropping the language file into the games 
#   "Localization" folder.
#
# Features:
#   - Uses IDs to get strings from external .ini files, which can be easily
#     edited in any text editor such as Notepad
#   - Supports special characters used by non-English languages
#   - Included message commands to simplify making your multilangual game, you
#     use the command the same as you would the normal switch and variable
#     commands
#   - Also supports using in the Bitmap#draw_text methods so that custom scripts
#     that draw onto Sprite bitmaps instead of Windows will still work without
#     the need for customization
#   - Automatically saves/loads the current culture
#
# Instructions:
#   - Place the script anywhere in the editor
#   - Define the name of the language directory and default culture below
#   - The names of the cultures can be anything, I would stick to the convention
#     of naming files in the normal convention of "language-region" initials, 
#     such as "en-US" (English, USA), "es-ES" (Spanish, Spain), etc., etc.
#   - Each language file should be a file with an .INI extension. If you are
#     unfamiliar with how .ini files are written, do a quick Google search, they
#     are quite simple.
#   - The .ini file should have only one section, which is the name of the 
#     culture.
#             ex. [en-US]
#             ex. [es-ES]
#   - After that, you can simply begin to write the id-value pairs of each 
#     string used in the culture.
#             ex. 1=This is a string
#             ex. 2=This is a string with ID 2
#             ex. GameIntro_01=This is a string with ID "GameIntro_01"
#   - Most importantly, the files must be saved in UTF-8 WITHOUT BOM. BOM stands
#     for "byte-order marker" and is a two byte value that is written to UTF8
#     files as a marker to other applications that they are encoded in UTF8. 
#     WinAPI does not support this, so it must be saved without it. The text
#     will not appear if you fail to do this.
#   - Simply drop the completed files into the Localization folder
#   - To change the culture in game, use the following script command:
#         Localization.culture = CULTURE
#     CULTURE should be a string value that is the name of the file, without
#     extension
#             ex. Localization.culture = "en-US"
#   
#+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+

#===============================================================================
# ** Localization
#-------------------------------------------------------------------------------
# Static module for reading localized strings from language files.
#===============================================================================

module Localization
  #-----------------------------------------------------------------------------
  # * Constants
  #-----------------------------------------------------------------------------
  DIRECTORY = "Localization"
  DEFAULT_CULTURE = 'en-GB'
  #-----------------------------------------------------------------------------
  # * Public instance variables.
  #-----------------------------------------------------------------------------
  attr_reader :culture
  attr_reader :filename
  #-----------------------------------------------------------------------------
  # * Initialize the localization module
  #-----------------------------------------------------------------------------
  def self.init
    @ini = Win32API.new('kernel32', 'GetPrivateProfileString', 'PPPPLP', 'L')
    unless File.directory?(DIRECTORY)
      Dir.mkdir(DIRECTORY)
    end
    path = ".\\#{DIRECTORY}\\CurrentCulture.txt"
    self.culture = File.exists?(path) ? IO.readlines(path)[0] : DEFAULT_CULTURE
  end
  #-----------------------------------------------------------------------------
  # * Set the current culture
  #-----------------------------------------------------------------------------
  def self.culture=(value)
    filename = ".\\#{DIRECTORY}\\#{value}.ini"
    if File.exists?(filename)
      @culture = value
      @filename = filename
      path = ".\\#{DIRECTORY}\\CurrentCulture.txt"
      File.open(path, 'wb') {|file| file.write(@culture) }
    else
      print "Cannot find language file for \"#{value}\"\n" +
        "Please ensure that the file \"#{filename}\" exists."
    end
  end
  #-----------------------------------------------------------------------------
  # * Read the string with the given ID of the current culture
  #-----------------------------------------------------------------------------
  def self.read(id)
    text = "\0" * 256
    @ini.call(@culture, id, '', text, 256, @filename)
    text.delete!("\0")
    if text == '' && $DEBUG
      print "No string defined!\nKey: \"#{id}\"\nCulture: \"#{@culture}\""
    end
    return text
  end
  #-----------------------------------------------------------------------------
  # * Parses a string for localization codes and returns it
  #-----------------------------------------------------------------------------
  def self.localize(string)
    if string != nil
      return string.gsub(/\\[Ll][Oo][Cc]\[(.+)\]/) { self.read($1) }
    end
  end
end

#===============================================================================
# ** Game_Message
#===============================================================================

class Game_Message
  alias localized_text_add add
  def add(text)
    text = Localization.localize(text)
    strings = text.split("\\n")
    while strings.size > 0
      localized_text_add(strings.shift)
    end
  end
end

#===============================================================================
# ** Window_Base
#===============================================================================

class Window_Base
  alias localize_draw_text_ex draw_text_ex
  def draw_text_ex(x, y, text)
    text = Localization.localize(text)
    localize_draw_text_ex(x, y, text)
  end
end

#===============================================================================
# ** Bitmap
#===============================================================================

class Bitmap
  #-----------------------------------------------------------------------------
  # * Replaces text based on the current culture
  #-----------------------------------------------------------------------------
  alias localized_draw_text draw_text
  def draw_text(*args)
    args.each_index {|i| 
      args[i] = Localization.localize(args[i]) if args[i].is_a?(String) }
    localized_draw_text(*args)
  end
end

# Initialize static variables used in the module
Localization.init