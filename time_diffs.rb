list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
list2 = [2,3,-6,7,-6,7]
list3 = [-5,-1,-3]
    
def my_min_quadratic(arr) 
    # min = arr.first
    sorted = false
    while !sorted
        sorted = true
        (0...arr.length).each do |i|
            (i...arr.length).each do |j|
                if i != j && arr[i]<arr[j]
                    sorted = false
                    arr[i], arr[j] = arr[j], arr[i]
                end
            end
        end
    end
    return arr[-1]
end

def my_min_linear(arr)
    min = arr.first
    (1...arr.length).each do |i|
        min = arr[i] if arr[i] < min
    end
    min
end

#p my_min_linear(list)  # =>  -5

def largest_contiguous_subsum(arr)
    ret = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            ret<<arr[i..j]
        end
    end
    ret.map! {|ele| ele.sum}
    return ret.max
end

#p largest_contiguous_subsum(list3)

def largest_contiguous_subsum_linear(arr)
    max = 0
    curr_sum = 0
    arr.each do |ele|
        #if adding the next element to our running sum increases it, keep adding new elements
        #if not, start it over
        puts "current sum is #{curr_sum}"
        if curr_sum + ele < ele 
            puts "current sum(#{curr_sum} + ele(#{ele} is < curr_sum"
            curr_sum = ele
        else
            puts "ele increases curr_sum, new curr_sum is #{curr_sum + ele}"
            curr_sum += ele
        end

        if curr_sum > max
            puts "new max is #{curr_sum}"
            max = curr_sum
        end

    end
    return max
end

p largest_contiguous_subsum_linear(list2)