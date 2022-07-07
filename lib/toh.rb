
# def disks
#     (1..3).to_a.reverse
# end

# def stacks
#     stacks = [disks, [], []]
# end

# def over?
#     stacks[0].empty? && stacks[1..2].any?(&:empty?)
# end

# def hanoi
#     until over?
#         puts display
#         from_stack_num = get_stack("Move from: ")
#         to_stack_num = get_stack("Move to: ")
#         move_disk(from_stack, to_stack)
#     end
# end

# def display
#     max_height - stacks.map(&:count).max
#     render_string = (max_height - 1).downto(0).map do |height|
#         stacks.map do |stack|
#             stack[height] || " "
#         end.join('\t')
#     end.join('\n')
# end

# def get_stack(prompt)
#     move_hash = { "a" => 0, "b" => 1, "c" => 2}
#     while true
#         print prompt
#         stack_num = move_hash[gets.chomp]
#         return stack_num unless stack_num.nill?
#         puts "Invalid move!"
#     end
# end

# def move_disk(from_stack, to_stack)
#     from_stack, to_stack = @stacks.values_at(from_stack_num, to_stack_num)
#     raise "cannot move from empty stack" if from_stack.empty?
#     unless (to_stack.empty? || to_stack.last > from_stack.last)
#         raise "cannot move onto smaller disk"
#     end
#   to_stack.push(from_stack.pop)
# end

# class Hanoi

#     def initialize
#         disks
#         stacks
#         hanoi
    
#     end

#     def disks
#             (1..3).to_a.reverse
#     end
        
#     def stacks
#         stacks = [disks, [], []]
#     end
        
#     def over?
#         stacks[0].empty? && stacks[1..2].any?(&:empty?)
#     end
        
#     def hanoi
#         until over?
#             puts display
#             from_stack_num = get_stack("Move from: ")
#             to_stack_num = get_stack("Move to: ")
#             move_disk(from_stack, to_stack)
#         end
#     end
        
#     def display
#         max_height - stacks.map(&:count).max
#         render_string = (max_height - 1).downto(0).map do |height|
#             stacks.map do |stack|
#                 stack[height] || " "
#             end.join('\t')
#         end.join('\n')
#     end
        
#     def get_stack(prompt)
#         move_hash = { "a" => 0, "b" => 1, "c" => 2}
#         while true
#             print prompt
#             stack_num = move_hash[gets.chomp]
#             return stack_num unless stack_num.nill?
#             puts "Invalid move!"
#         end
#     end
        
#     def move_disk(from_stack, to_stack)
#         from_stack, to_stack = @stacks.values_at(from_stack_num, to_stack_num)
#         raise "cannot move from empty stack" if from_stack.empty?
#         unless (to_stack.empty? || to_stack.last > from_stack.last)
#             raise "cannot move onto smaller disk"
#         end
#         to_stack.push(from_stack.pop)
#     end   
# end

def hanoi
    disks = (1..3).to_a.reverse
    stacks = [disks, [], []]
    until stacks[0].empty? && stacks[1..2].any?(&:empty?)
      max_height = stacks.map(&:count).max
      render_string = (max_height - 1).downto(0).map do |height|
        stacks.map do |stack|
          stack[height] || " "
        end.join("\t")
      end.join("\n")
      puts render_string
      move_hash = { "a" => 0, "b" => 1, "c" => 2 }
      while true
        print "Move From: "
        from_stack_num = move_hash[gets.chomp]
        break unless from_stack_num.nil?
        puts "Invalid move!"
      end
      while true
        print "Move To: "
        to_stack_num = move_hash[gets.chomp]
        break unless to_stack_num.nil?
        puts "Invalid move!"
      end
      from_stack, to_stack = stacks.values_at(from_stack_num, to_stack_num)
      raise "cannot move from empty stack" if from_stack.empty?
      unless (to_stack.empty? || to_stack.last > from_stack.last)
        raise "cannot move onto smaller disk"
      end
      to_stack.push(from_stack.pop)
    end
    puts "You did it!"
  end

  hanoi
