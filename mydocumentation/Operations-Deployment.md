# Operations Deployment 

## BOOT, REBOOT and SHUT DOWN

Essential Linux commands for starting, restarting and shutting down a system

Command used to restart the system immediately: `sudo systemctl reboot` 

Command used to force close all programs: `sudo systermctl reboot --force`

Command used for scheduled reboot: `sudo shutdown -r +1 'scheduled restart'`

**NOTE** A wall message was added in the last illustration to be displayed to other users logged into Linux systems

Command used to shutdown: `sudo systemctl poweroff` 

Comman to schedule shutdown: `sudo shutdown +1` 

## SCRIPTING 

Command used: `touch simple_script.sh`

Then open the file: `nano simple_script.sh`

📷 [Click here to view the script command screenshot](operation-images/script-command.png)

Then: `chmod +x simple_script.sh`

To execute file: `./simple_script.sh`

📷 [Click here to view the script result screenshot](operation-images/script-result.png)

## LOCATE AND ANALYSE SYSTEM LOG FILES


