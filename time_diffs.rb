list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    
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

p my_min_linear(list)  # =>  -5