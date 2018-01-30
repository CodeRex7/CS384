qui=zeros(1,10);
twi=zeros(1,10);
ins=zeros(1,10);
for j= 1:25
  for i= 1:10
    a=floor(10*rand(1,10*i));
    num(i)=i*10;
    twi(i) = twi(i) + twoWayInsertion(a) / 100;
    qui(i) = qui(i) + quickSort(a) / 100;
  end
 end
  
hold on;
title("Two Way Insertion Sort vs Quick Sort \nAlgorithms");
plot(num,qui,"linewidth",2);
plot(num,twi,"linewidth",2);
legend('Quick','Two Way Insertion','location','northwest');
xlabel("Number of Elements");
ylabel("Number of Iterations");
hold off;