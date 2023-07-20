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

def my_min_ph2(arr)
    arr.inject do |acc,el|
        if el >acc
            acc
        else
            el
        end
    end
end


def largest_contiguous_subsum(list)
    arr =[]

    (0...list.length).each do |start_idx|
        (start_idx...list.length).each do |end_idx|
            arr<<list[start_idx..end_idx].sum
        end
    end
    arr.max

end


