def search_array(array, integer)
index = 0
	while index < array.length
			if array[index] == integer
				p index
			end
		index += 1
	end
end
arr = [42, 89, 23, 1]
search_array(arr, 89)

def fib(n)
 arr = [0, 1, 1]
  fib_index = 3
  a, b = 1, 1
 
  while fib_index < n
    c = a + b
    a = b
    b = c
    fib_index += 1
    arr.push(c)
  end
  p arr
end
fib(6)

#1.)You start the your index of zero and you go through the array swapping the first index with the one next to it
#after that you keep doing that until youve reached the end and starts over until the numbers are in the correct indexes. It takes a while because it compares two at a time to put them in the correct order
#2.)we looked up a a small video that showed how bubble sorting works and it helped us more  conceptutially due to it being more of a visual thing to see. But googling helped us understand it

#3.)tackling this problem seems scary and hard when it comes to the code . its fun to see what we can do with it but there are alot of things we are going to have to google and thats terrifyinh but exciting. Leaning new things is fun. It may be scary but it wont affect us if we dont let it

#4.)psuedo code
#first start by taking in an array of ints
#second start off with the legnth of the array 
#then creat a loop for the method to run through the whole array
#then reorder numbers in your array


def bubsort(array)
  length_of_arr = array.length

  loop do
  	swapped = false
	  (length_of_arr - 1).times do |i|
	  	if array[i] > array[i+1]
	  		array[i], array[i+1] = array[i+1], array[i] 
	  		swapped = true
	  	end
	  end
  	break if not swapped
	end
array
end
a = [1,7,4,9,2,0,4]
p bubsort(a)
