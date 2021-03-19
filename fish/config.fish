set -x fish_greeting # Remove the Fish welcome message
fish_vi_key_bindings # Enable Fish vi key bindings

# Source local configuration files
for local_config in $CONFIG/fish/conf.local/*.fish
    source $local_config
end
