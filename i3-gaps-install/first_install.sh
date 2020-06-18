
#!/bin/bash

# Call 'apt-update.sh' to run updates
$HOME/.scripts/apt-update.sh

# Call '100-install-desk-first.sh' to install basic software
$HOME/.scripts/i3-gaps-install/100-install-desk-first.sh

# Call '140-install-extra-software.sh' to install extra software
$HOME/.scripts/i3-gaps-install/140-install-extra-software.sh

