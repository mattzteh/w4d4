require 'byebug'

def my_uniq(arr)
    new_arr = []
    arr.each do |ele|
        if !new_arr.include?(ele)
            new_arr << ele
        end
    end
    return new_arr
end

class Array
    def two_sum
        pairs = []
        (0...self.length).each do |i|
            (i...self.length).each do |j|
                pairs << [i, j] if j > i && self[i] + self[j] == 0
            end
        end
        pairs
    end
end

def my_transpose(arr)
    arr.first.zip(*arr[1..-1])
end

def stock_picker(arr)
    best = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            best << [i, j] if j > i
        end
    end
    best.sort
    return best[-1]
end