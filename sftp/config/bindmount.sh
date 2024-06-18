#!/bin/bash
# File mounted as: /etc/sftp.d/bindmount.sh

function bindmount() {
    if [ -d "$1" ]; then
        mkdir -p "$2"
    fi
    mount --bind $3 "$1" "$2"
}

# Read users from /etc/sftp/users.conf
while IFS=':' read -r username password group; do
    if [ -z "$username" ]; then
        continue  # Skip empty lines or lines without a username
    fi

    home_dir="/home/$username"

    # Create home directory if it doesn't exist
    mkdir -p "$home_dir"
    chown root:$group "$home_dir"
    chmod 755 "$home_dir"

    # Mount read-only directories into user's home
    bindmount /media/Videos/Shows "$home_dir/Shows" --read-only
    bindmount /media/Movies "$home_dir/Movies" --read-only
    bindmount /media/Music "$home_dir/Music" --read-only

    # Create and mount a writable Watch-later directory
    mkdir -p "$home_dir/Watch-later"
    chown $username:$group "$home_dir/Watch-later"
    chmod 755 "$home_dir/Watch-later"
    bindmount /home/*/Watch-later "$home_dir/Watch-later"

    # Print out user information for debugging or logging
    echo "User '$username' with group '$group' created."
done < /etc/sftp/users.conf
