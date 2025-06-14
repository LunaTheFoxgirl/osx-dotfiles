neofetch

# Setup pinentry for potential SSH.
export GPG_TTY=$(tty)
if [[ -n "$SSH_CONNECTION" ]] ;then
    echo "SSH Mode Enabled"
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi
echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1

# Add SDKs
for folder in /opt/SDKs/*; do
	if [ -d "$folder" ]; then
		echo "Added SDK $folder..."
		SDK_BIN="$folder/bin"
		SDK_LIB="$folder/lib"
		
		if [ -d "$SDK_BIN" ]; then
			export PATH="$SDK_BIN:$PATH"
		fi
	
		if [ -d "$SDK_LIB" ]; then
			export PATH="$SDK_LIB:$PATH"
		fi
	fi
done
