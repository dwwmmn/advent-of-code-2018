from strutils import parseInt

var interval: int = 0

while true:
    try:
        var n = readLine(stdin)
        interval += parseInt(n)
    except EOFError:
        break

echo interval