# Minesweeper : Julia

## References :
1. https://www.geeksforgeeks.org/cpp-implementation-minesweeper-game/ (Mainly here, I basically tried to port their cpp code to Julia xD)
2. BitLife Game (Minesweeper occurs as a minigame in this.)
3. https://en.wikipedia.org/wiki/Minesweeper_(video_game)
4. https://m.wikihow.com/Play-Minesweeper


### Note: Some steps of the game have been omitted in the below snippet for graphical reasons.

```
→ C:\Users\shekh\nlp\src› julia minesweeper.jl
---------------------------------------------------------------------
BACKGROUND:

WWII has just ended. There are still uncountable mines scattered accross our oceans and seas
that pose a great threat to humanity and which must be removed.

Present Day :

HI HO Cadet ! Congratulations on completing your Millitary Training at our prestigious Institution of Defence.
You're now ready to be deployed on your first peacekeeping mission in Afghanistan
But first, tell me your grades in the academy... (Enter Grade: A+/A- | B+/B- )
B+

GLEAMING ! You meet the grade requirement and have been tasked with removing 9 mines at this strategic location.
 MAKE US PROUD !!!
---------------------------------------------------------------------
     1  2  3  4  5  6  7  8
 ========================================
1  |  -  -  -  -  -  -  -  -
2  |  -  -  -  -  -  -  -  -
3  |  -  -  -  -  -  -  -  -
4  |  -  -  -  -  -  -  -  -
5  |  -  -  -  -  -  -  -  -
6  |  -  -  -  -  -  -  -  -
7  |  -  -  -  -  -  -  -  -
8  |  -  -  -  -  -  -  -  -

Afghanistan
Clear the squares that don't have mines and flag the ones that do!
The number in a square indicates how many mines that square is touching, including corners.
The Minesweeper that you're commanding understands in this format :
Enter "m/f x y" to mine/flag  (x, y) [horizontal, vertical axis] respectively.

You can also desert the your post by typing the answer to life, the universe and everything. Good Luck !
Minesweeper Console | Enter Commands : m 1 1
     1  2  3  4  5  6  7  8
 ========================================
1  |  0  0  1  -  -  -  -  -
2  |  0  0  1  -  -  -  -  -
3  |  0  0  1  -  -  -  -  -
4  |  0  0  1  -  -  -  -  -
5  |  0  0  1  -  -  -  -  -
6  |  1  1  2  -  -  -  -  -
7  |  -  -  -  -  -  -  -  -
8  |  -  -  -  -  -  -  -  -

Afghanistan
Clear the squares that don't have mines and flag the ones that do!
The number in a square indicates how many mines that square is touching, including corners.
The Minesweeper that you're commanding understands in this format :
Enter "m/f x y" to mine/flag  (x, y) [horizontal, vertical axis] respectively.

You can also desert the your post by typing the answer to life, the universe and everything. Good Luck !
Minesweeper Console | Enter Commands : m 1 8
     1  2  3  4  5  6  7  8
 ========================================
1  |  0  0  1  -  -  -  -  -
2  |  0  0  1  -  -  -  -  -
3  |  0  0  1  -  -  -  -  -
4  |  0  0  1  -  -  -  -  -
5  |  0  0  1  -  -  -  -  -
6  |  1  1  2  -  -  -  -  -
7  |  -  -  -  -  -  -  -  -
8  |  1  -  -  -  -  -  -  -
Afghanistan
Clear the squares that don't have mines and flag the ones that do!
The number in a square indicates how many mines that square is touching, including corners.
The Minesweeper that you're commanding understands in this format :
Enter "m/f x y" to mine/flag  (x, y) [horizontal, vertical axis] respectively.

You can also desert the your post by typing the answer to life, the universe and everything. Good Luck !
Minesweeper Console | Enter Commands : m 7 4
     1  2  3  4  5  6  7  8
 ========================================
1  |  0  0  1  -  -  -  -  F
2  |  0  0  1  -  -  -  -  -
3  |  0  0  1  3  -  -  -  -
4  |  0  0  1  -  -  -  2  -
5  |  0  0  1  -  -  1  -  -
6  |  1  1  2  -  1  1  2  2
7  |  -  -  -  -  1  0  0  0
8  |  1  -  -  -  1  0  0  0

Afghanistan
Clear the squares that don't have mines and flag the ones that do!
The number in a square indicates how many mines that square is touching, including corners.
The Minesweeper that you're commanding understands in this format :
Enter "m/f x y" to mine/flag  (x, y) [horizontal, vertical axis] respectively.

You can also desert the your post by typing the answer to life, the universe and everything. Good Luck !
Minesweeper Console | Enter Commands : m 4 1
     1  2  3  4  5  6  7  8
 ========================================
1  |  0  0  1  *  -  -  -  F
2  |  0  0  1  -  *  -  -  -
3  |  0  0  1  3  *  -  -  -
4  |  0  0  1  *  -  -  2  -
5  |  0  0  1  -  -  1  *  *
6  |  1  1  2  -  1  1  2  2
7  |  -  *  -  *  1  0  0  0
8  |  1  -  *  -  1  0  0  0

Aww Snap. A MINE !!! Mission compromised...
You're being sent back since you suffered from broken ribs.
Your efforts are, (eh) Valued. Please see where you went wrong...
```
