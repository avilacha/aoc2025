// Advent of code 2025 - 01
function main()
cinp := memoread("aoc01.txt")   // R10 L39 L30
cnum := strtran( cinp,"R","")   //  10 L39 L30
cnum := strtran( cnum,"L","-")  //  10 -39 -30

nZero := 0
nSum := 0
nLin := 1
while !empty( cLine := memoline(cnum, ,nLin++ ) )
	nSum += val(cLine)
	while nSum > 99
		nSum-=99
    enddo
	while nSum < 0
		nSum+=99
	enddo
	if nSum == 0
		nZero++
	endif
	? nLin, nSum, nZero
enddo
? "Number os Zero positions:", nZero
return
