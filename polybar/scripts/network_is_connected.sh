#!/bin/bash

is_active=$(connmanctl state | grep State | cut -d "=" -f 2 | xargs)

if [ $is_active = "online" ] | [ $is_active = "ready" ] ; then
        echo 直
else
        echo 睊
fi
