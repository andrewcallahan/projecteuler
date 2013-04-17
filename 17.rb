hash = {1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        20 => 'twenty',
        30 => 'thirty',
        40 => 'fourty',
        50 => 'fifty',
        60 => 'sixty',
        70 => 'seventy',
        80 => 'eighty',
        90 => 'ninty',
}

sum = 0
(1..1000).each do |num|
    hundred, ten, digit = num/100, num/10 % 10, num % 10
    if hundred < 1
        if ten < 2
            sum+= hash[num].length
        else
            sum+= "#{hash[ten*10]}#{hash[digit]}".length
        end          
    elsif hundred < 10
        if ten == 0 && digit == 0
            sum+= "#{hash[hundred]}hundred".length
        elsif ten < 2
            sum+= "#{hash[hundred]}hundredand#{hash[(num-(hundred*100))]}".length
        else
            sum+= "#{hash[hundred]}hundredand#{hash[ten*10]}#{hash[digit]}".length
        end
    else
        sum+= "onethousand".length
    end
end
puts sum

