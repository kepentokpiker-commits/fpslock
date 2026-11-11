#!/system/bin/sh
SKIPUNZIP=0
CFG=/data/adb/fpslock
mkdir -p "$CFG"
[ -f "$CFG/fps.conf" ] || echo "FPS=90" > "$CFG/fps.conf"
[ -f "$CFG/spoof.conf" ] || cat > "$CFG/spoof.conf" <<'EOF'
# format: package|model|manufacturer|brand|device|product
# contoh:
# com.tencent.ig|ROG Phone 6|asus|asus|AI2201|WW_AI2201
EOF
chmod 644 "$CFG"/*.conf
ui_print "- Config: $CFG"
