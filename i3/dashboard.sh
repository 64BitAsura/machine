#!/bin/bash

i3-msg "exec termite -e htop" && \
i3-msg "exec termite -e i3conf" && \
i3-msg "exec termite -e zedit" && \
i3-msg "exec termite -e down" && \
i3-msg "exec nautilus"
