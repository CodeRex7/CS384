function [runningTime] = radixSort(array, base)
    function list_to_buckets(array, base, iteration):
        buckets = [[]  _ in range(base)]
        for number in array:
            # Isolate the base-digit from the number
            digit = (number // (base ** iteration)) % base
            # Drop the number into the correct bucket
            buckets[digit].append(number)
        end
     end
        return buckets

function buckets_to_list(buckets):
        numbers = []
        for bucket in buckets:
            # append the numbers in a bucket
            # sequentially to the returned array
            for number in bucket:
                numbers.append(number)
            end
        end
        return numbers
end
        

    maxval = max(array)

    it = 0
    # Iterate, sorting the array by each base-digit
    while base ** it <= maxval:
        array = buckets_to_list(list_to_buckets(array, base, it))
        it += 1

    return array