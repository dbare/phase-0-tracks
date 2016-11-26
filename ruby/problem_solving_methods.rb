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

until count














