fx_version 'cerulean'
game 'gta5'

author 'n0tsiege'
description 'A pack of 2021 vehicles, compiled and released by siege.'
version '1.0.0'
repository 'https://github.com/n0tsiege/SIEGE-2021-PACK'

files {
    'data/**/**/*.*',
    'audio/sfx/STREAMED_VEHICLES_GRANULAR/suv_1_eur_v6.awc',
    'vehicle_names.lua',
    'server/sv_main.lua',
    'client/cl_main.lua',
    'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/BebasNeue.ttf',
	'html/images/*.png'
}

client_scripts {
    'vehicle_names.lua',
    'config.lua',
	'client/cl_main.lua',
}
server_script 'server/sv_main.lua'

data_file 'HANDLING_FILE' 'data/**/**/handling.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/**/vehiclelayouts.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/**/carvariations.meta'
data_file 'AUDIO_WAVEPACK' 'audio/sfx/STREAMED_VEHICLES_GRANULAR/'
