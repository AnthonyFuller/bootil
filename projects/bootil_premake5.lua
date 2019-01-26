project "bootil_static"

	uuid ( "AB8E7B19-A70C-4767-88DE-F02160167C2E" )
	defines { "BOOTIL_COMPILE_STATIC", "BOOST_ALL_NO_LIB" }
	files { "../src/**.cpp", "../include/**.h", "../src/**.c", "../src/**.cc", "premake4.lua" }
	kind "StaticLib"
	targetname( "bootil_static" )
	symbols "On"
	editandcontinue "Off"
	staticruntime "On"
	vectorextensions "SSE"
	includedirs { "../include/", "../src/3rdParty/" }
	
	if os.host(  ) == "linux" or os.host(  ) == "macosx" then
		buildoptions { "-fPIC" }
	end
