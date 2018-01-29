function [output] = almostSortedInput(input)
    start = ceil(rand(1,1)*0.15*length(input));
    stop = ceil(rand(1,1)*0.15*length(input));
    output = actual(input,start,length(input)-stop);
    return;
end



function input = actual(input,low,high)
    if low < high
       [pi,input] = localpartition(input, low, high);
       input = actual(input, low, pi - 1); 
       input = actual(input, pi + 1, high);
    end
end


function [pivot,arr] = localpartition(arr,low,high)
 pivot=arr(high);
 i=(low-1);
 for j=low:(high-1)
   if arr(j)<=pivot
     i=i+1;
     temp=arr(i);
     arr(i)=arr(j);
     arr(j)=temp;
     end
     end
     temp=arr(i+1);
     arr(i+1)=arr(high);
     arr(high)=temp;
     pivot=i+1;
     return;
 end