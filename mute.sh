#!/system/bin/sh

su
cd /system/media/audio/ui/

# mounting the fs read/write
mount -o remount,rw /system

# may as well back up the sounds
mv camera_click.ogg camera_click.ogg.backup
mv Camera_click_short.ogg Camera_click_short.ogg.backup
mv Shutter.ogg Shutter.ogg.backup
mv Shutter_multiple.ogg Shutter_multiple.ogg.backup

# Camera_empty is an empty sound
ln -s Camera_empty.ogg camera_click.ogg
ln -s Camera_empty.ogg Camera_click_short.ogg
ln -s Camera_empty.ogg Shutter.ogg
ln -s Camera_empty.ogg Shutter_multiple.ogg

# Making the fs read-only again.
# You can always `reboot now` instead if you like
mount -o remount,ro /system
