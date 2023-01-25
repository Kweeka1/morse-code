MORSE_CODE = {
   ".-" => "a",
   "-..." => "b",
   "-.-." => "c",
   "-.." => "d",
   "." => "e",
   "..-." => "f",
   "--." => "g",
   "...." => "h",
   ".." => "i",
   ".---" => "j",
   "-.-" => "k",
   ".-.." => "l",
   "--" => "m",
   "-." => "n",
   "---" => "o",
   ".--." => "p",
   "--.-" => "q",
   ".-." => "r",
   "..." => "s",
   "-" => "t",
   "..-" => "u",
   "...-" => "v",
   ".--" => "w",
   "-..-" => "x",
   "-.--" => "y",
   "--.." => "z",
}

def decode_morse(str)
  result = ""
  input = str.split("   ")
  input.each do |code|
  word = ""
    code.split(" ").each do |letter|
      word += MORSE_CODE[letter]
    end
    result += word + " "
  end
  return result.strip()
end

puts decode_morse(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")