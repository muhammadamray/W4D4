def anaagram?(str, str2)

    arr = str.split('')
    agrams = arr.permutation(arr.length).to_a
    new_arr = agrams.map{|el| el.join('')}

    new_arr.include?(str2)
end 

def second_anagram?(str1, str2)
    str2_arr = str2.split("")
    str1.each_char do |char|
      if !str2_arr.find_index(char).nil?
        idx = str2_arr.find_index(char)
        str2_arr.delete(idx)
      elsif str2_arr.empty?
        return true
      else
        false
      end
  
    end
  
  
  end
  