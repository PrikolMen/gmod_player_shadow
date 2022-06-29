local cvar = "cl_drawownshadow"
local convar = "cl_playershadow"

RunConsoleCommand( cvar, CreateClientConVar( convar, "1", true, true, "Turn on/off shadow on firstpersion.", 0, 1 ):GetInt() )
cvars.AddChangeCallback( convar, function( name, old, new )
    RunConsoleCommand( cvar, new )
end, cvar)