

# API planning:


IDEA 1:
```lua


local noiseOffset = love.math.random(40000)


local n0 = NumberLayer(width, height)
    :offset(worldX, worldY) -- position of this layer (default=0,0)
    :generate(function(x,y)
        -- generate noise values for this layer, from this function:
        return love.math.noise(x/10, y/10)
    end


local n1 = NumberLayer(w,h)
    :generate(function(x,y)
        return love.math.random() * 3
    end)


-- we can get the values at any time too:
local height = n1:get(x,y)



-- combines noise layers
local layer1 = n1
    :combine(n0, math.min) -- takes min between layers
    :map(function(self, val, x, y)
        -- Maps every value in a NumberLayer to another value
        if val < 0.4 then
            return " "
        end
        return "."
    end)



-- Other operations:
local room = NumberLayer()
    :offset(roomX, roomY)
    :map(function()
        return 0 -- the whole room is empty
    end)
    :mapEdges(function(self, val, x,y)
        -- called for edge tiles:
        return 1 -- for this room, all edge tiles are filled.
    end)


local c1 = n1
    :merge(room, function(self, otherSelf, x, y)
        -- merges c1 and n1 together.
        -- this function is called when there's a conflict!
    end)


local c2 = n1
    :overlay(room) -- overlays `room` onto layer `n1`.
    -- If room doesn't fit inside n1, then an error is thrown.



local clampedRoom = room
    :clamp(n1)
-- changes the room position such that it fits inside of `n1`












--[[

Now for discrete layers:




]]

local dlayer = Graph(width, height)

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
    - gravitation algorithms, i.e. gravitates nodes together

    We also want to be able to easily convert from
    DiscreteLayer --> NumberLayer or ValueLayer.

    hmmm... actually,
    maybe we just need to convert from
    Node --> NumberLayer or ValueLayer...?
]]







```

