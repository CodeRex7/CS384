modbub=zeros(1,10);
sel=zeros(1,10);
bub=zeros(1,10);
num=zeros(1,10);
ins=zeros(1,10);
for j= 1:10
  for i= 1:10
    a=floor(10*rand(1,10*i));
    num(i)=i*10;
    bub(i) = bub(i) + BubbleSort(a) / 10;
    sel(i) = sel(i) + SelectionSort(a) / 10;
    modbub(i) = modbub(i) + modBubbleSort(a) / 10;
    ins(i) =ins(i) + insertionSort(a) / 10;
  end
 end
  
hold on;
title("Iterations vs Data Size of Sorting \nAlgorithms");
plot(num,bub,"linewidth",2);
plot(num,modbub,"linewidth",2);
%plot(num,sel,"linewidth",2);
plot(num,ins,"linewidth",2);
legend('Bubble','Modified Bubble','Insertion');
xlabel("Number of Elements");
ylabel("Number of Iterations");
hold off;