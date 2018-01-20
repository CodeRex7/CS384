hea = zeros(1,10);
sel = zeros(1,10);
bub = zeros(1,10);
num = zeros(1,10);
ins = zeros(1,10);
for j = 1:50
  for i = 1:10
    a = floor(10*rand(1,10*i));
    num(i) = i * 10;
    hea(i) = hea(i) + heapSort(a) / 500;
    bub(i) = bub(i) + bubbleSort(a) / 500;
    sel(i) = sel(i) + selectionSort(a) / 500;
    sel(i) = sel(i) + selectionSort(a) / 500;
    ins(i) =ins(i) + insertionSort(a) / 500;
  end
 end
  
hold on;
title("Asymptotic Behaviour of Sorting Algorithms","FontSize",18);
plot(num,bub,"linewidth",2);
plot(num,sel,"linewidth",2);
%plot(num,sel,"linewidth",2);
plot(num,ins,"linewidth",2);
plot(num,hea,"linewidth",2);
legend('Bubble','Selection','Insertion','Heap',"location", "northwest");
xlabel("Number of Elements","FontSize",15);
ylabel("Running Time","FontSize",15);
hold off;