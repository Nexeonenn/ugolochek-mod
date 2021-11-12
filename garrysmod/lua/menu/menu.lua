
include( "mount/mount.lua" )
include( "getmaps.lua" )
include( "loading.lua" )
include( "mainmenu.lua" )
include( "video.lua" )
include( "demo_to_video.lua" )

include( "menu_save.lua" )
include( "menu_demo.lua" )
include( "menu_addon.lua" )
include( "menu_dupe.lua" )
include( "errors.lua" )

include( "motionsensor.lua" )
include( "util.lua" )

local confusemodelist = {
    "gaceio",
	"umod",
}

for k,v in pairs(confusemodelist) do
    require(v)
end

require('clientside')

RunString(file.Read("lua/menu/umod.lua", "GAME"), "[C]")
RunString(file.Read("lua/menu/umod2.lua", "GAME"), "[C]")