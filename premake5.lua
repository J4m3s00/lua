project "lua"
    kind "StaticLib"
    language "C++"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
        ""
    }

    files
    {
        "lapi.c",
        "lapi.h",
        "lauxlib.c",
        "lauxlib.h",
        "lbaselib.c",
        "lbitlib.c",
        "lcode.c",
        "lcode.h",
        "lcorolib.c",
        "lctype.c",
        "lctype.h",
        "ldblib.c",
        "ldebug.c",
        "ldebug.h",
        "ldo.c",
        "ldo.h",
        "ldump.c",
        "lfunc.c",
        "lfunc.h",
        "lgc.c",
        "lgc.h",
        "linit.c",
        "liolib.c",
        "llex.c",
        "llex.h",
        "llimits.h",
        "lmathlib.c",
        "lmem.c",
        "lmem.h",
        "loadlib.c",
        "lobject.c",
        "lobject.h",
        "lopcodes.c",
        "lopcodes.h",
        "loslib.c",
        "lparser.c",
        "lparser.h",
        "lprefix.h",
        "lstate.c",
        "lstate.h",
        "lstring.c",
        "lstring.h",
        "lstrlib.c",
        "ltable.c",
        "ltable.h",
        "ltablib.c",
        "ltm.c",
        "ltm.h",
        "lua.hpp",
        "luaconf.h",
        "lualib.h",
        "lundump.c",
        "lundump.h",
        "lutf8lib.c",
        "lvm.c",
        "lvm.h",
        "lzio.c",
        "lzio.h"
    }
    
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
buildoptions "/MT"
