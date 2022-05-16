local startedTime = tick();
for i,v in pairs(getgc(true)) do -- credits to bye..#0001 this was before i knew how to make anticheat bypasses
    if not KickFunc and type(v) == 'function' and getfenv(v).script and getfenv(v).script == game:GetService('Players').LocalPlayer.PlayerScripts.LocalScript then
        if debug.getconstants(v) and table.find(debug.getconstants(v),'FailedPcall') then
            KickFunc = v
        end
    end
end

x = debug.getupvalues(KickFunc)[1]
OldFire = getupvalue(x,1)
local FireServerHook = newcclosure(function(TEvent, Key, ...)
    if Key then
        Args = {...}
        if tostring(Key) == 'JumpPower' then
            return
        end
        if string.match(tostring(Key),'NoClip') then
            return
        end
        if string.match(tostring(Key),'Flying') then
            return
        end
        if tostring(Key) == 'Getupvalues' then
            return
        end
    end
    return OldFire(TEvent, Key, ...)
end)
setupvalue(x,1,FireServerHook)

if not KickFunc then
    return nil 
end

