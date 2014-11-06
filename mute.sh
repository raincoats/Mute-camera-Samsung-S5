function raincoats(){

	# mounting the fs read/write
	mount -o remount,rw /system 
	cd /system/media/audio/ui

	# This is where the magic happens!
	# Camera_empty.ogg is an empty sound.
	for sound in "camera_click.ogg"          \
                 "Camera_click_short.ogg"        \
                 "Shutter.ogg"                   \
                 "Shutter_multiple.ogg"          \
                 "Camera_Timer.ogg"              \
                 "Camera_Timer_2sec.ogg"         \
                 "lens_flare_lock.ogg"           \
                 "lens_flare_unlock_silence.ogg" \
                 "Auto_focus.ogg"                \
                 "Auto_focus_error.ogg";
	do 
		mv $sound $sound.backup;
		ln -s Camera_empty.ogg $sound;

	done

	# Making the fs read-only again.
	# You can always `reboot now` instead if you like
	mount -o remount,ro /system
}

raincoats
