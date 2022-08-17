#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
DEBUG=1 # DEBUG=1 para depurar

# Termina todas las instancias de polybar
killall -q polybar
# Si las barras tienen `ipc` habilitado lo puedes utilizar con
# polybar-msg cmd quit

# Esperar hasta que el proceso haya finalizado
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Inicia la barra de estado `main`
if [ $DEBUG -eq 1 ]
then
  echo "---" | tee -a /tmp/polybar1.log
  polybar -q main -c "$DIR"/config.ini 2>&1 | tee -a /tmp/polybar1.log & disown
else
  polybar -q main -c "$DIR"/config.ini >/dev/null 2>&1 & disown
fi
