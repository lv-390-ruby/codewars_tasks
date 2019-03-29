# Author: Pidtserkovnyi Vitalii
# Solution:
# 1. create regular expressions for extracting only bumbers/letters
# 2. split numbers/letters strings to arr
# 3. extracting start sum from str
# 4. creating arrays for storing check numbers,
# check_numbers, available money
# 5. final string creation
# Input: 1000.00!= 125 Market !=:125.45 126 Hardware =34.95 127
# Video! 7.45 128 Book :14.32 129 Gasoline ::16.10
def extracting_nums_to_arr(str)
  str_nums = str.gsub(/[^0-9. ]/, ' ')
  str_nums.split(' ')
end

def extracting_names_to_arr(str)
  str_names = str.gsub(/[^a-zA-Z ]/, '')
  str_names.split(' ')
end

def balance(str_temp)
  nums_arr = extracting_nums_to_arr(str_temp)
  names_arr = extracting_names_to_arr(str_temp)
  start_sum = nums_arr.delete_at(0).to_f

  check_num_arr = []
  price_arr = []
  remainder_arr = []
  i = 0
  until nums_arr.empty?
    check_num_arr[i] = nums_arr.shift
    price_arr[i] = nums_arr.shift
    i += 1
  end
  temp = start_sum
  price_arr.each do |num|
    remainder_arr.push(format('%.2f', (temp - num.to_f)))
    temp -= num.to_f
  end

  final_str = format("Original Balance: %0.2f\r\n", start_sum)
  until check_num_arr.empty?
    final_str.concat("#{check_num_arr.shift} ",
                     "#{names_arr.shift} ",
                     format('%0.2f ', price_arr.shift),
                     format("Balance %0.2f\r\n", remainder_arr.shift))
  end
  final_str.concat(format("Total expense  %0.2f\r\n", (start_sum - temp)))
  final_str.concat(format('Average expense  %0.2f', ((start_sum - temp) / i)))
  final_str
end

def run_task
  print 'Enter string to convert: '
  temp = gets
  puts '_______________________________'
  puts balance(temp)
end

run_task
