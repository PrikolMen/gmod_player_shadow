local RunConsoleCommand = RunConsoleCommand
local convar = "cl_playershadow"

RunConsoleCommand( "cl_drawownshadow", CreateClientConVar( convar, "1", true, true, "Turn on/off shadow on firstpersion.", 0, 1 ):GetInt() )
cvars.AddChangeCallback( convar, function( name, old, new )
    RunConsoleCommand( "cl_drawownshadow", new )
end, "Player Shadow")