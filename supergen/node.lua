

--[[

A Node represents a singular object within a discrete layer.

It could be a room, a shop, an enemy, a player spawn point, etc.
Just know that it has a singular point in space.

]]


local Node = {}
Node.__index = Node


local UNKNOWN = "NODE_TYPE_UNKNOWN"


local function newNode(x, y, nodeType)
    return {
        x = x,
        y = y,
        nodeType = nodeType or UNKNOWN
    }
end

