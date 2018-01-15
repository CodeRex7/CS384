modbub=zeros(1,10);
sel=zeros(1,10);
bub=zeros(1,10);
num=zeros(1,10);
for i= 1:10
  a=floor(10*rand(1,10*i));
  num(i)=i*10;
  bub(i)=BubbleSort(a);
  sel(i)=SelectionSort(a);
  modbub(i)=modBubbleSort(a);
  end
hold on;
plot(num,bub);
plot(num,modbub);
plot(num,sel);
legend('bubble','modified bubble','selection');
xlabel("no. of elements");
ylabel("no. of iterartions");
hold off;