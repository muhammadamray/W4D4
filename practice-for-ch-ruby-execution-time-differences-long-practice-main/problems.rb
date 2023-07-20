def my_min(arr)

    small_val = 0   # starts with the biggest num in the arr
    arr.each_with_index do |el, idx1|
        arr.each_with_index do |el2, idx2|
            if el < el2 && idx2 > idx1
                small_val = arr[idx1]
            else 
                small_val = arr[idx2]
            end 
        end 
    end 

    return small_val
end 