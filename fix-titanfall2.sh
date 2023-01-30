# Fix the stuttering due to the Origin loader app.
# https://www.protondb.com/app/1237970/

# Disable all writing to Origin directory.  Should fix stuttering.
chmod -R -w /media/matt/Data/Steam/steamapps/compatdata/1237970/pfx/drive_c/users/steamuser/Application\ Data/Origin/

# Allow writing for Origin updates, sometimes necessary.
#chmod -R +w /media/matt/Data/Steam/steamapps/compatdata/1237970/pfx/drive_c/users/steamuser/Application\ Data/Origin/
