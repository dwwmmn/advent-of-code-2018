from strutils import parseInt

var interval: int = 0
var seen: set[int16]

while true:
    try:
        var n = parseInt(readLine(stdin))
        var m = n.int16
        
        if contains(seen, m):
            echo "First to be seen twice: ", m
            break

        interval += m
    except EOFError:
        break
            