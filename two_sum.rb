#brute force
arr1 = [0, 1, 5, 7]

def brute_force(arr, target) #O(n^2)
    arr.each_with_index do |char, i|
        arr[i..-1].each_with_index do |sec_char, j|
            return true if (char + sec_char) == target
        end
    end
    return false
end

def sorting_search(arr, target) #O(n*log(n))
    arr = arr.sort
    arr.each do |int|
        return true if arr.bsearch_index{|val| val <=> (target-int)}
    end
    return false
end

def hash_two_sum(arr,target) #O(n)
    h = Hash.new(0)
    arr.each do |ele|
        h[ele] = target-ele
    end
    h.each_pair do |k,v|
       return true if arr.include?(v) && (k != v)
    end
    return false
end

p hash_two_sum(arr1, 14)