#Release 0

int_array = [27, 1, 92, 28, 54, 31]

def check_array(array, object)
	array.each do |x|
		x == object
		break true if x == object
	end 
end

def search_array(array, object)
	count = 0

	if check_array(array, object) == true
		until array[count] == object
			count += 1
		end 
			p count

	elsif check_array(array, object) == array
		p nil
	else
	end 
end 

search_array(int_array, 92)
search_array(int_array, 84)

#Release 1

def fib_method(input)
fibonacci_array = []
count = 0

	until count == input
		if count == 0
			fibonacci_array << 0
			count += 1
		elsif count == 1
			fibonacci_array << 1
			count += 1
		else
			fibonacci_array << fibonacci_array[count-1] + fibonacci_array[count-2]
			count +=1
		end 
	end
	fibonacci_array
end 

p fib_method(100).include?(218922995834555169026)

#Release 2
			
=begin
-define the method with the array as argument
-define false statement that can become true when array is sorted
-set variable equal to length of array
-loop through array
	-if the value of the array the index is greater than the value of the array at the next index position, swap them
	-if the if statment is true, the false statement becomes true
-end loop if there is no swap
-print array
=end

def bubble_sort(array)
	num = array.length

	loop do
		swapped = false
		(num-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end 
		end 
		break if not swapped
	end 
	array
end

test_sort = [5, 3, 7, 1, 2, 9, 0, 4, 6, 8, 4]

p bubble_sort(test_sort)






