

# SuperGen vision:

SuperGen works on composable layers.


For example:


```
L1:
................
................
################
################
................
................
```
Logically ANDed with:
```
L2:
#..#..###.#.##..
#..#..###.#.##..
#..#..###.#.##..
#..#..###.#.##..
#..#..###.#.##..
#..#..###.#.##..
```

Would yield:
```lua
local L3 = L1:augment(L2, operators.AND)
................
................
#..#..###.#.##..
#..#..###.#.##..
................
................
```


-------------------

This allows us to do cool stuff, such as overlaying islands
on top of existing generated terrain, to convert the new terrain
to islands.


