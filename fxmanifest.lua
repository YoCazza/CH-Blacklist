fx_version 'cerulean'
game 'gta5'
author 'YoCazza'
description 'Blacklist vehicles and weapons on your FiveM Server!'
version '2.0'
lua54 'yes'

shared_script '@ox_lib/init.lua'
client_scripts {'config.lua', 'client.lua'}
server_scripts {'config.lua', 'server.lua'}