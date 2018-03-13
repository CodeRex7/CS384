%Initialising arrays
num = zeros(1,10);
bIS = zeros(1,10);
qui = zeros(1,10);
ins = zeros(1,10);

%Averaging the data over 10 sets
for j = 1:10
  for i = 1:10
    %Randomised Data
    a = floor(10*i*rand(1,10*i));
    num(i) = i * 10;
    bIS(i) = bIS(i) + binaryInsertionSort(a) / 10;
    ins(i) = ins(i) + insertionSort(a) / 10;
    qui(i) = qui(i) + quickSort(a) / 10;
  end
 end

%Plotting details
hold on;
h=figure(1);
title("Binary Insertion Sort Analysis","fontweight","normal");
plot(num,ins,"linewidth",2);
plot(num,qui,"linewidth",2);
plot(num,bIS,"linewidth",2);
legend('Insertion Sort','Quick Sort','Binary Insertion Sort',"location", "northwest");
xlabel("Number of Elements");
ylabel("Number of Iterations");
hold off;
