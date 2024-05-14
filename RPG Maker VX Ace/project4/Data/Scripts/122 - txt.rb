#==============================================================================
# ■ Meow Face Text File Output
#------------------------------------------------------------------------------
# Create .txt files using the preset data in Settings
#==============================================================================
# How to Use:
# [1] Put this script below Material and above Main
# [2] Set up the datas in Settings Area below
#
# Script Call:
# txt_save("variable", "filename")
#
# eg. txt_save("DOC1", "Filename.txt")
#    will output DOC1 datas in settings to Filename.txt file
#
# open_file ("filename")
#
# eg. open_file ("Filename.txt")
#    will open Filename.txt file using its default program
#
#==============================================================================
module MeowFaceDoc # Do not Remove!
#==============================================================================
# Settings Area
#==============================================================================
#------------------------------------------------------------------------------
# The folder you want the files to be created
#------------------------------------------------------------------------------
FOLDER = '.\derekpc.pcc.dataminer' 
#------------------------------------------------------------------------------
# This is where you add your text documents
# Add as many new @DOCX as you like (where X = the document number)
# You can use "\n" to start a new line, or simply enter a new line below (see example below)
#------------------------------------------------------------------------------
@DOC1 = "
=============
Title of Doc
=============
You Currently Have [\V[1]] PC Coin(s) That You Have Previously Sent From Data Miner To Your PC."


#==============================================================================
# End of Settings Area
# Edit Anything Pass This Line at Your Own Risk!
#==============================================================================
end
class Game_Interpreter
  def txt_save(data, filename)
    @text = MeowFaceDoc.instance_variable_get("@#{data}")
    Dir::mkdir(MeowFaceDoc::FOLDER) if !Dir.exists?(MeowFaceDoc::FOLDER)
    @file = File.join(MeowFaceDoc::FOLDER,filename)
    if !File.exist?(@file)
      @CreateFile = File.open(@file, 'w')
      @CreateFile.puts(@text)
      @CreateFile.close
      @text.clear
    end
  end
  def open_file (filename)
    @file = File.join(MeowFaceDoc::FOLDER,filename)
    system %{cmd /c "start #{@file}"} if File.exist?(@file)
  end
end