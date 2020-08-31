#!/bin/bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# get UBUNTU_CODENAME, ROS_DISTRO, REPO_DIR, CATKIN_DIR
source $SCRIPT_DIR/identify_environment.bash

#source /opt/ros/$ROS_DISTRO/setup.bash

main()
{
    create_catkin_ws
}


create_catkin_ws()
{
    # Check if workspace exists
    if [ -e "$CATKIN_DIR/.catkin_workspace" ] || [ -d "$CATKIN_DIR/.catkin_tools" ]; then
        echo "Catkin workspace detected at ~/catkin_ws"
    else
        echo "Creating catkin workspace in $HOME/catkin_ws ..."
        mkdir -p "$HOME/catkin_ws/src"
        cd "$HOME/catkin_ws"
        echo "Catkin workspace created successfully."
    fi

}

main
