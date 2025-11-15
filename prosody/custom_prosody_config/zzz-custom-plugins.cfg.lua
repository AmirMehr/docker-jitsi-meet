-- This file enables our custom token plugins
-- This path '/prosody-plugins-custom' matches the mount point in docker-compose.yml
plugin_paths = { "/prosody-plugins-custom" }

-- Enable the plugins for the conference component
Component "conference.{{ .Env.XMPP_DOMAIN }}" "muc"
    modules_enabled = {
        "token_affiliation"; -- Reads 'affiliation' from JWT
    }