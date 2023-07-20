def my_min(arr)

    small_val = arr[0]  
     
    arr.each_with_index do |el, idx1|
        arr.each_with_index do |el2, idx2|
            if idx2 > idx1 
                if el2 > el && small_val > el
                    small_val = el
                elsif el2 < el && small_val > el2
                    small_val = el2
                end 
            end 
        end 
    end 

    return small_val
end 