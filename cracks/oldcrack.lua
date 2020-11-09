--old crack, no need the obfuscated source its same thing from fullsource.lua lol

local old, old2;
local lp = game:GetService'Players'.LocalPlayer;
old = hookfunc(syn.request, newcclosure(function(tb)
    if (tb.Url == 'https://sypsehub.000webhostapp.com/SpookyWhitelist.lua') then
        return {
            Body = tostring(lp.UserId);
        };
    elseif (tb.Url == 'https://sypsehub.000webhostapp.com/SpookyBlacklist.lua') then
        return {
            Body = '';
        };
    elseif (tb.Url == 'https://api.ipify.org/') then
        return {
            Body = '127.0.0.1';
        };
    elseif (tb.Url):find'webhook' then
        return {
            Body = '';
        };
    end;
    return old(tb);
end));
old2 = hookfunc(game.HttpGet, function(ga, ur, ...)
    if (ur == 'https://sypsehub.000webhostapp.com/UILibrary.lua') then
        return old2(ga, 'https://paste.ee/r/Gdrlu', ...);
    end;
    return old2(ga, ur, ...);
end);
