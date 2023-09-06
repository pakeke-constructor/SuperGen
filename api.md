

# API planning:


IDEA 1:
```lua

local sgctx = sg.Context()
local n0 = NumberLayer(...)
local n1 = NumberLayer(...)



-- combines noise layers
local layer1 = n1
    :combine(n0, math.min) -- takes min between layers
    :map(function(val)
        if val < 0.4 then
            return " "
        end
        return "."
    end)


local l2 = DiscreteLayer(...)




```

