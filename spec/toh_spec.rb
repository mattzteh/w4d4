require "toh"

describe '#disks' do
    it "returns a stack of disks in a reversed array" do
        expect(disks).to eq((1..3).to_a.reverse)
    end
end

describe '#stacks' do
    it "should set up a 2D Array with length = 3 with 'disks' in 0th index" do
        expect(stacks).to eq([disks, [], []])
    end
end

describe '#over?' do
    it "should return true when all stacks are empty" do
    allow(hanoi).to receive(:over?).and_return(false)
    allow(hanoi).to receive(:over?).and_return(true)
    end
end

describe '#hanoi' do
end

describe '#display' do
end

describe '#get_stack' do
end

describe '#move_disk' do
end
