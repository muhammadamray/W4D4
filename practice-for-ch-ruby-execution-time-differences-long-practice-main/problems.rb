def my_min(arr) #O(n^2)

    small_val = arr[0]  #O(1)

    arr.each_with_index do |el, idx1|   #O(n)
        arr.each_with_index do |el2, idx2|  #O(n)
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

def my_min_ph2(arr)  #O(n)
    arr.inject do |acc,el| # O(n)
        if el > acc # O(1)
            acc # O(1)
        else
            el # O(1)
        end
    end
end


def largest_contiguous_subsum(list)  # O(n^3)
    arr = [] #O(n)

    (0...list.length).each do |start_idx| #O(n)
        (start_idx...list.length).each do |end_idx| #O(n) 
            arr << list[start_idx..end_idx].sum # O(2n)
        end
    end

    arr.max 
end


def largest_contiguous_subsum_ph2(list)   #O(n)
    current_sum = list[0] 
    largest_sum = list[0]  

    (1...list.length).each do |i| 
        if list[i] > largest_sum + list[i] 
            largest_sum = list[i]
        else
            largest_sum += list[i]
        end

        if current_sum < largest_sum
            current_sum = largest_sum
        end
    end

    return current_sum
end








