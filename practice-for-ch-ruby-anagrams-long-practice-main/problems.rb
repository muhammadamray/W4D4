def anaagram?(str, str2)

    arr = str.split('')
    agrams = arr.permutation(arr.length).to_a
    new_arr = agrams.map{|el| el.join('')}

    new_arr.include?(str2)
end 

def second_anagram?(str1, str2)
    str2_arr = str2.split("")
    str1.each_char do |char|
    # debugger
      if !str2_arr.find_index(char).nil?
        idx = str2_arr.find_index(char)
        str2_arr.delete_at(idx)
    #   elsif str2_arr.empty?
    #     return true
      else
        false
      end
    end
    str2_arr.empty?
end
  
def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end 


def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char {|el| hash1[el] += 1}
    str2.each_char {|el| hash2[el] += 1}

    hash1 == hash2
end 

p fourth_anagram?("listen", "silent")
