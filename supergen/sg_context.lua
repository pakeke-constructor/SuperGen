

--[[

supergen contexts are structures that keep track of the generation state.

]]

local SGContext = {}
SGContext.__index = SGContext



function SGContext:generate(x, y, w, h)
    error("todo: what should this return?")
end



local function newContext(seed)
    local sgctx = setmetatable({
        seed = seed or 0,
    }, SGContext)
    return sgctx
end



return newContext

