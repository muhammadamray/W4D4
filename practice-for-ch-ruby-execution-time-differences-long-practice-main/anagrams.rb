def first_anagram?(str)
  str_arr = str.split("")
  ana_arr = str_arr.permutation.to_a
  ana_arr.map{|ele| ele.join("")}
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
