
def windowed_max_range(arr, window) #O(n^2)
    current_max_range = 0
    i=0
    while i <arr.length-window + 1
        sub_arr = arr[i...i+window]
        min = sub_arr.min
        max = sub_arr.max
        diff = max-min
        current_max_range = diff > current_max_range ? diff : current_max_range
        i+=1
    end
    return current_max_range
end

class MyQueue

    def initialize
        @array = []
    end

    def peek
        @array.first
    end

    def size
        @array.length
    end

    def empty?
        @array.empty?
    end

    def enqueue(ele)
        @array<<ele
    end

    def dequeue
        @array.shift
    end

    def max
        @array.max
    end

    def min
        @array.min
    end

 end

 def queue_max_range(arr, window) #O(n^2)
    q = MyQueue.new
    current_max_range = 0
    (0...window).each do |i|
        q.enqueue(arr[i])
    end

    max = q.max
    min = q.min

    (window...arr.length).each do |i|
        max = arr[i] if arr[i] > max
        min = arr[i] if arr[i] < min
        q.enqueue(arr[i])
    end
    
    return current_max_range
end


p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8