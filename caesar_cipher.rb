#caesar_cipher
#Kerry Stiles
#Ruby Project 12/07/2017

puts "Please enter your cipher shift: "
shift = gets.to_i

puts "Please enter the text to be passed through the cipher: "
code = gets.each_byte do |c|
    if c === 32 || c < 65 || c.between?(91,96) || c > 122
        print c.chr
    else
        if shift > 0 && c === 90 #Z rolls to A
            c = 65 + (shift - 1)
        elsif shift < 0 && c === 65 #A rolls back to Z
            c = 90 + (shift + 1)
        elsif shift > 0 && c === 122 #z rolls to a
            c = 97 + (shift - 1)
        elsif shift < 0 && c === 97 #a rolls back to z
            c = 122 + (shift + 1)
        else
        c = c + shift
        end
    end
    
    case                    #isolating for letters
        when c < 65         #When ASCII is under 65
            while c < 65    #Add 64 until the number is above 65
                c += 64
            end
            print c.chr
        when c.between?(91, 96) #When ASCII is under 65
            c += 6  
            print c.chr
        when c > 122        #When ACSII is over 122
            while c > 122
                c -= 64     #cyle 64 out until it is under 122
            end
            print c.chr
        else
            print c.chr
    end
        
    
end
