#=
@about : Classic Tic-Tac-Toe Game Implementation in Julia for GCI'19 (Two-Player)
@author : PseudoCodeNerd
@sdate : 1/01/2020

Me and soumitra started the code at the same time and raced to see
who would finish first.

Might be untidy. FAIR WARNING.
=#

avalPos = []
for i in 1:9
    i = parse(string, i)
    push!(avalPos, i)
end

p1_turn = true
winYet = false

function display() 
    println( '\n -----')
    println( '|' + avalPos[1] + '|' + avalPos[2] + '|' + avalPos[3] + '|')
    println( ' -----')
    println( '|' + avalPos[4] + '|' + avalPos[5] + '|' + avalPos[6] + '|')
    println( ' -----')
    println( '|' + avalPos[7] + '|' + avalPos[8] + '|' + avalPos[9] + '|')
    println( ' -----\n')
end

while (!winYet)
    display()
    if p1_turn
        println("Player 1 :")
    else
        println("Player 2 :")
    end

    
    println("Enter the position\n>> ")
    choice = Int(readline())

    
    if avalPos[choice] == 'X' || avalPos[choice] == 'O'
        println("Invalid Move. Position occupied.")
        continue
    end

    if p1_turn
        avalPos[choice] = 'X'
    else
        avalPos[choice] = 'O'
    end

    p1_turn !=p1_turn

    for x in 0:2
        y = x * 3
        if (avalPos[y] == avalPos[(y + 1)] && avalPos[y] == avalPos[(y + 2)])
            winYet = true
            display()
        end
        if (avalPos[x] == avalPos[(x + 3)] && avalPos[x] == avalPos[(x + 6)])
            winYet = true
            display()
        end
    end

    if ((avalPos[0] == avalPos[4] && avalPos[0] == avalPos[8]) || 
       (avalPos[2] == avalPos[4] && avalPos[4] == avalPos[6])) 
        winYet = true
        display()
    end

end
