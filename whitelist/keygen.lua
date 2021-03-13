--made by Cyclops#0001 (very very old)
local sets = {
    action = setclipboard,
    howmuchkeys = 10,
    keylen = 32;
};

local totalkeys = '';
local randompattern = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'; --pattern to randomize alphanumerics
local function randomizeAlphanumeric()
    local randomized = math.random(1, randompattern:len());
    return randompattern:sub(randomized, randomized);
end;

local function randomkey()
    local newkey = '';
    for i = 1, sets.keylen, 1 do
        newkey = newkey.. randomizeAlphanumeric();
    end;
    return 'key_'.. newkey;
end;

for i = 1, sets.howmuchkeys, 1 do
    totalkeys = totalkeys .. randomkey() .. ((i == sets.howmuchkeys) and '\0' or '\n');
end;
sets.action(totalkeys)
