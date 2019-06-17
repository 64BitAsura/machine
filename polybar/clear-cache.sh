#!/bin/sh
# move dirty cache to persistent storage
$(sync)
# mark ununsed cache to remove from RAM
$(echo 3 > /proc/sys/vm/drop_caches)
