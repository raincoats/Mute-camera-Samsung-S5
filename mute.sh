function raincoats(){

    mount -o remount,rw /system
    cd /system/media/audio/ui

    for sound in "camera_click.ogg"          \
                 "Camera_click_short.ogg"        \
                 "Shutter.ogg"                   \
                 "Shutter_multiple.ogg"          \
                 "Camera_Timer.ogg"              \
                 "Camera_Timer_2sec.ogg"         \
                 "lens_flare_lock.ogg"           \
                 "lens_flare_unlock_silence.ogg" \
                 "Auto_focus.ogg"                \
                 "Auto_focus_error.ogg"          \
                 "camera_focus.ogg";
    do
        mv $sound $sound.backup;
        ln -s Camera_empty.ogg $sound;
    done

    mount -o remount,ro /system || reboot

    echo "Done. Try taking a photo now."
}

raincoats