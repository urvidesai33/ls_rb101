POP_INSTRUCTIONS = "POP ADD SUB MULT DIV MOD"
INSTRUCTIONS = ("0".."9").to_a.to_s + POP_INSTRUCTIONS + "PUSH PRINT"

def minilang(instructions)
  register = [0]
  stack = []
  instructions_array = instructions.split
  instructions_array.each_with_index do |instr, idx|
    if !INSTRUCTIONS.include?(instr)
     puts "Invalid Instruction"
    elsif POP_INSTRUCTIONS.include?(instr) && stack == []
      puts "Empty Stack. Cannot Proceed"
    else 
      case instr
      when 'PUSH'
        stack << register[0]
      when 'POP'
        register[0] = stack.pop
      when 'PRINT'
        puts register[0]
      when 'ADD'
         register[0] += stack.pop
      when 'SUB'
         register[0] -= stack.pop
      when 'MULT'
         register[0] *= stack.pop
      when 'DIV'
         register[0] /= stack.pop
      when 'MOD'
         register[0] %= stack.pop
      else 
      register[0] = instr.to_i
      end
      
    end
  end


end

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 5 PUSH 4 MULT ADD SUB DIV PRINT')
minilang('3 PUSH 5 PUSH POP POP 7 MULT')
minilang('4 PUSH 5 ADDD')