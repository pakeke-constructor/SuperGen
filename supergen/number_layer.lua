

local NumberLayer = {}
NumberLayer.__index = NumberLayer


local function init(width, height)
    local nl = {
        width = width,
        height = height,
        offsetX = 0,
        offsetY = 0,

        heightmap = {}
    }

    for i=1, width*height do
        nl.heightmap[i] = 0
    end
    setmetatable(nl, NumberLayer)
    return nl
end



function NumberLayer:copy()
    local nl = init(self.width, self.height)
    for i=(#self.heightmap-1), 0, -1 do
        nl.heightmap[i] = self.heightmap[i]
    end
    return nl
end



function NumberLayer:offset(x, y)
    local cpy = self:copy()
    cpy.offsetX = x
    cpy.offsetY = y
    return cpy
end



function NumberLayer:generate(f)
    for i=1, self.width do
        for j=1, self.height do

        end
    end
end



return init
