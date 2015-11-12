@lowcase = ('a'..'z').to_a
@upcase = ('A'..'Z').to_a
@output = []

def caeser_cipher(input, n)
    
    input.each_char do |char|
        
        if @lowcase.include?(char)
            index = @lowcase.index(char) + n
            new_char = @lowcase[index % 26]
        elsif @upcase.include?(char)
            index = @upcase.index(char) + n
            new_char = @upcase[index % 26]
        else
            new_char = char
        end
        
        @output.push(new_char)
        
    end
    
    @output.join
    
end

puts caeser_cipher("Abc. Lewis TESt!", 29)