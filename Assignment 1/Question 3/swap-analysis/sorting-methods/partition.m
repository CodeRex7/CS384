function [pivot,arr,iterations]=partition(arr,low,high,iterations)
 pivot=arr(high);
 i=(low-1);
 for j=low:(high-1)
   iterations = iterations + 1;
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
