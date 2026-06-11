#!/bin/bash

echo 1: Start a second desktop environment
echo 2: End this second desktop environment
read -p "choice> " choice

if [  "$choice" = "1" ]; then
   dbus-run-session startplasma-wayland --device /dev/tty3
else
   qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logout
fi
