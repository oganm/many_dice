# many dice

This is a dollar store version of any dice with less features and only supporting
a limited syntax. It is based on my godot [dice_syntax](https://github.com/oganm/dice_syntax_gd) addon and calculates
returns probabilities based on that format alone.

## Supported Syntax

- `4d6`: roll 4 six sided dice
- `4d6s`: roll 4d6 sort the results
- `4d6+3d3`: roll 4d6 and 3d3, sum the results
- `4d6-3d3`: Same as above, subtract 3d3 from 4d6.
- `4d6+1`: roll 4d6 add 1 to the result
- `4d6d1`: roll 4d6, drop the lowest one
- `4d6dh1`: roll 4d6, drop the highest one
- `4d6k1`: roll 4d6, keep the highest one
- `4d6kl1:` roll 4d6, keep the lowest one
- `4d6r1`: roll 4d6 reroll all 1s (1 is not a possible result)
- `4d6ro1`: roll 4d6 reroll 1s once
- `4d6r<2`: roll 4d6 reroll all 1s and 2s (not possible results)
- `4d6ro<2`: roll 4d6 reroll1s and 2s once
- `4d6!`: roll 4d6 explode 6s (for every six, roll again until a non six is rolled, add them to the rolls. The output will have variable number of dice)
- `4d6!!`: roll 4d6 compound 6s (for every six, roll again until a non six is rolled, combined them into a single roll in the output. The output will have 4 dice)
- `4d6!>5`: roll 4d6 explode 5s and 6s
