local module = {}
function module.JoinPath(...)
    local out = ""
    local args = {...}
    for i, subPath in ipairs(args) do
        if i ~= 1 then
            if wvim.is_windows then out = out .. "\\" .. subPath
            else out = out .. "/" .. subPath end
        else out = out .. subPath end
    end
    return out
end
return module
