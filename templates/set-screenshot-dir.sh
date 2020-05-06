SCREENSHOT_DIR="{{ gnome_screenshot_dir }}"

mkdir -p "$SCREENSHOT_DIR"

if [ ! "$(gsettings get org.gnome.gnome-screenshot auto-save-directory)" = "'$SCREENSHOT_DIR'" ]; then
    gsettings set org.gnome.gnome-screenshot auto-save-directory $SCREENSHOT_DIR
fi
