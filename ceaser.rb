def ceaser_cipher(string,shift=1)
  shiftedText = ''
  charLine = string.chars.map(&:ord)

    shiftedText << charLine.map do |c|
      ((c + shift) < 123 ? (c + shift) : (c + shift) -26).chr
    end.join
end

puts "enter string to encrypt "
strString = gets.chomp

ceaserCipher = ceaser_cipher(strString)
