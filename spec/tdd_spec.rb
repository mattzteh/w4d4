require 'tdd.rb'
require 'byebug'

describe '#my_uniq' do
subject(:arr) {[1,1,2,5,5,3,2]}
    it "takes in an array and returns new array of unique elements from original array" do
        expect(my_uniq(arr)).to eq([1,2,5,3])
    end
    it "should not use built in method .uniq" do
        expect(arr).not_to receive(:uniq)

    end
    it "should not mutate original array" do
        expect_any_instance_of(Array).not_to receive(:map!)
        expect(arr).not_to receive(:map)
    end

end

describe 'Array#two_sum' do
    it "returns positions of pairs of numbers that add to zero" do
        expect([5, 1, -7, -5].two_sum).to eq([[0, 3]])
    end
    it "finds multiple pairs" do 
        expect([5, -1, -5, 1].two_sum).to eq([[0, 2], [1, 3]])
    end
    it "finds pairs with same element" do
        expect([5, -5, -5].two_sum).to eq([[0, 1], [0, 2]])
    end
    it "returns [] when no pair is found" do 
        expect([5, 5, 3, 1].two_sum).to eq([])
    end
    it "won't find superfluous pairs" do
        expect([0, 1, 2, 3].two_sum).to eq([])
    end
    it "will find real zero pairs" do
        expect([0, 1, 2, 0].two_sum).to eq([[0, 3]])
    end
end

describe "#my_transpose" do
subject(:arr) {[[0, 1, 2], [3, 4 ,5], [6, 7, 8]]}

    it "will convert between row-oriented and column-oriented representations" do
        expect(my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
    it "Subarrays and length of each array should be the same" do
        expect(arr.length).to eq(arr[0].length)
    end

    it "should not use built-in method .transpose" do
        expect(arr).not_to receive(:transpose)
    end
end

describe '#stock_picker' do
subject(:arr) {[100, 75, 80, 20, 150]}

    it "will return the highest difference between two days' stock price" do
        expect(stock_picker(arr)).to eq([3, 4])
    end
    it "should return a single pair of days" do
        expect(stock_picker(arr)).to eq([3, 4])
    end
end

