fx_version 'cerulean'
game 'gta5'
author 'YoCazza#0001'
description 'Blacklist vehicles and weapons on your FiveM Server!'
version '1.0'
lua54 'yes'

client_scripts {
	"config.lua",
	"cl_main.lua"
}

server_scripts {
	"config.lua",
	"sv_check.lua"
}