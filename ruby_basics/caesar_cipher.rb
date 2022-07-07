

def caesar_cipher(text,shift)
    text_arr = text.split("")
    asci_text = []
    text_arr.each do 
        |char|
        if(char.ord >= 65 and char.ord <= 90)
            (char.ord + shift > 90) ? asci_text.push(char.ord + shift - 26) : asci_text.push(char.ord + shift)
        elsif(char.ord >= 97 and char.ord <= 122)
            (char.ord + shift > 122) ? asci_text.push(char.ord + shift - 26) : asci_text.push(char.ord + shift)
        else 
            asci_text.push(char.ord)
        end
    end
    ciphered_text = []
    asci_text.each {|index| ciphered_text.push(index.chr)}
    puts ciphered_text.join
end


caesar_cipher("What a String!",5);
