def bubble_sort(array)
    puts ("Unsorted array : #{array.join("-")}") 
    unsorted = true
    num_iterations = 0
    while unsorted do
        i = 0
        unsorted = false
        while i < (array.length - 1) do
            if(array[i] > array[i+1])
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp
                unsorted = true
            end
            i += 1
            num_iterations += 1
        end
    end
    puts ("Sorted array : #{array.join("-")}")
    puts ("Number of iteration to sort : #{num_iterations}")
end

arr = [4,3,78,2,0,2]
bubble_sort(arr)