#caesar_cipher
#Kerry Stiles
#Ruby Project 12/07/2017

puts "Please enter your cipher shift: "
shift = gets.to_i

puts "Please enter the text to be passed through the cipher: "
code = gets.each_byte do |c|
    if shift > 0 && c === 90
       c = 65 + (shift - 1)
    elsif shift < 0 && c === 65
        c = 90 + (shift + 1)
    elsif shift > 0 && c === 122
        c = 97 + (shift - 1)
    elsif shift < 0 && c === 97
        c = 122 + (shift + 1)
    else
    c = c + shift
    end
    
    print c.chr
end
