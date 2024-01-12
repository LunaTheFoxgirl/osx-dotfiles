# Add SDKs
for folder in ~/SDKs/*; do
	echo "Added SDK $folder..."
	SDK_BIN="$folder/bin"
	SDK_LIB="$folder/lib"
	
	if [ -d "$SDK_BIN" ]; then
		export PATH="$SDK_BIN:$PATH"
	fi

	if [ -d "$SDK_LIB" ]; then
		export PATH="$SDK_LIB:$PATH"
	fi
done

