#==============================================================================
# ■ Meow Face Exit Canceler
#------------------------------------------------------------------------------
# Hide Game Window's Border, Disable Close Button and Alt + F4
#==============================================================================
# How to Use:
# Plug & Play, Put this script below Material and above Main
#==============================================================================
MF_GPPSA = Win32API.new('kernel32', 'GetPrivateProfileStringA', 'PPPPLP', 'L')
MF_FW = Win32API.new('user32', 'FindWindow', 'pp', 'l')
MF_SCL = Win32API.new('user32', 'SetClassLong', 'lil', 'i')
MF_SWL = Win32API.new('user32', 'SetWindowLong', 'iii', 'i')
MF_TITLE = " " * 256
MF_GPPSA.call('Game','Title','',MF_TITLE,256,".\\Game.ini")
MF_TITLE.delete!(" ")
MF_HWND = MF_FW.call('RGSS Player', MF_TITLE)
MF_SCL.call(MF_HWND, -26, 0x0200)
MF_SWL.call(MF_HWND, -16, 0x14000000)