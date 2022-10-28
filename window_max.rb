
def windowed_max_range(arr, window) #O(n^2)
    current_max_range = 0
    i=0
    while i <arr.length-window + 1
        sub_arr = arr[i...i+window]
        min = sub_arr.min
        max = sub_arr.max
        diff = max-min
        # if diff > current_max_range
        #     current_max_range = diff 
        # end 
        current_max_range = diff > current_max_range ? diff : current_max_range
        i+=1
    end
    return current_max_range
end



p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8