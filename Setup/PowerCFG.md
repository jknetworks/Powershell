# Set active plan to High Performance (create if not present)
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

# Disable sleep (AC + DC)
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0

# Disable hibernate entirely (removes hiberfil.sys)
powercfg -hibernate off

# Disable monitor timeout (optional — comment out if you want screen to still turn off)
powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0

# Disable turning off the hard disk
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0

# Disable USB selective suspend (prevents peripheral drops on "high performance" boxes)
powercfg -setacvalueindex SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setdcvalueindex SCHEME_CURRENT 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 0
powercfg -setactive SCHEME_CURRENT
