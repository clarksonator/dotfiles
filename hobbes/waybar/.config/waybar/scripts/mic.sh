#!/bin/bash
MICSTATUS=`wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep MUTED`

if [ -n "$MICSTATUS" ]; then
  echo '{"text": "muted", "alt": "muted"}'
else
  echo '{"text": "", "alt": ""}'
fi
