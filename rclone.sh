wget2 -q -c -O "$1" "$2"; \
echo "$1 downloaded"; \
echo "$1 UPLOADING DRIVE"; \
rclone copy /app/"$1" new:; \
echo "$1 uploaded drive"; \
