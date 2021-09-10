def fromRoman(romanNumber)

    val = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
    num = 0
    i = 0
    r = romanNumber
    
    while i<r.length
        if i+1<r.length && val.key?(r[i..i+1])
            num+=val[r[i..i+1]]
            i+=2
        else
            num+=val[r[i]]
            i+=1
        end
    end
    return num
end

def toRoman(arabicNumber)

    if !(1..3999).cover?(arabicNumber)
        raise RangeError
    end
    # Replace the following line with the actual code!
    val = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    syb = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" ]
    romannum = ''
    i = 0
    n = arabicNumber

    while n > 0
        (1..n/val[i]).each do
            romannum += syb[i]
            n -= val[i]
        end
        i += 1
    end
    return romannum
end