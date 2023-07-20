def anaagram?(str, str2)

    arr = str.split('')
    agrams = arr.permutation(arr.length).to_a
    new_arr = agrams.map{|el| el.join('')}

    new_arr.include?(str2)
end 