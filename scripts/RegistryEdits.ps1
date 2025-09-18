
# --- Registry edits and configurations for Windows 11 ---

# Src: https://old.reddit.com/r/sysadmin/comments/1frq94l/guide_restore_old_rightclick_context_menu_in/m76ku4u/

# Set "Old" Explorer Context Menu as Default
reg add "HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /f

# Remove Explorer "Command Bar"
reg add "HKCU\Software\Classes\CLSID\{d93ed569-3b3e-4bff-8355-3c44f6a52bb5}\InprocServer32" /f /ve

# Restart Windows Explorer. (Applies the above settings without needing a reboot)
taskkill /f /im explorer.exe
start explorer.exe
