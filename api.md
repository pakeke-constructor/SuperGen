

# API planning:


IDEA 1:
```lua


local noiseOffset = love.math.random(40000)


local n0 = NumberLayer(width, height)
n0:generate(function(x,y)
    -- generate noise values for this layer, from this function:
    return love.math.noise(x/10, y/10)
end)


local n1 = NumberLayer()
n1:generate(function(x,y)
    return love.math.random() * 3
end)


-- a more complex example:
local n2 = NumberLayer()
n2:generate(function(x,y)
    -- we can tag into other layers arbitrarily:
    local val = love.math.noise(x,y)
    if n0:get(x,y) > 0.5 then
        return val / 4
    end
    return val
end)



-- combines noise layers
local layer1 = n1
    :combine(n0, math.min) -- takes min between layers
    :map(function(val)
        -- `map` function takes a NumberLayer and converts it into
        -- a ValueLayer of the same size.
        if val < 0.4 then
            return " "
        end
        return "."
    end)












--[[

Now for discrete layers:




]]

local dlayer = DiscreteLayer(width, height)

for i=1, 10 do
    -- generate 10 random rooms:
    dlayer:addNode({
        x = math.random(0, width),
        y = math.random(0, height),
        width = 10,
        height = 10,
        type = "room"
    })
end
--[[
    TODO: Have helper functions here!

    We want features such as:
    - graph algorithms, i.e. minimum spanning tree between nodes
    - compression algorithms, i.e. gravitates nodes together
    - easily able to generate ValueLayers/NumberLayers from DiscreteLayers
]]







```

