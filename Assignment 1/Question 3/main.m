hea = zeros(1,10);
sel = zeros(1,10);
bub = zeros(1,10);
num = zeros(1,10);
ins = zeros(1,10);
qui = zeros(1,10);
for j = 1:100
  for i = 1:10
    %a = floor(10*i*rand(1,10*i));
    a = randi(i*4,1,i*10);
    %a = reverseSortedGen(a);
    %a = almostSortedInput(a);
    num(i) = i * 10;
    hea(i) = hea(i) + heapSort(a) / 1000;
    bub(i) = bub(i) + bubbleSort(a) / 1000;
    sel(i) = sel(i) + selectionSort(a) / 1000;
    ins(i) = ins(i) + insertionSort(a) / 1000;
    qui(i) = qui(i) + quickSort(a) / 1000;
  end
 end
  
hold on;
h=figure(1);
%grid on;
title("Asymptotic Behaviour of Sorting Algorithms \n using repetitive data","FontSize",18,"fontweight","normal");
plot(num,bub,"linewidth",3);
plot(num,sel,"linewidth",3);
plot(num,qui,"linewidth",3);
plot(num,ins,"linewidth",3);
plot(num,hea,"linewidth",3);
legend('Bubble','Selection','Quick','Insertion','Heap',"location", "northwest");
xlabel("Number of Elements","FontSize",16);
ylabel("Running Time","FontSize",16);
h=get (gcf, "currentaxes");
set(h,"linewidth",3);
set(h,"fontsize",14);
h=figure(1);
hold off;
print -dpng -color "-S600,600" repetitive.png
