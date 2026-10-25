#!/system/bin/sh

# log to dmesg, 6 = info
log() {
    echo "<6>KernelSU: Watchdog Feeder: $1" > /dev/kmsg
}

log "Watchdog Feeder loaded, waiting for vendor.hotboot.rom=1"

until [ "$(getprop vendor.hotboot.rom)" = "1" ]; do
    log "vendor.hotboot.rom=$(getprop vendor.hotboot.rom)"
    sleep 2
done

log "vendor.hotboot.rom is true, waiting 40 seconds before feeding softdog."

i=0
while [ "$i" -lt "40" ]; do
    log "$((40 - $i)) seconds remaining before feeding the watchdog."
    sleep 1
    i=$(($i + 1))
done

log "Feeding /dev/softdog"

while true; do
    log "Is this an error?: $(echo "1" > /dev/softdog)"
    sleep 5
done
