%Initialising arrays
subset = zeros(1,100);
ordering = zeros(1,100);
% values = [360, 83, 59, 130, 431, 67, 230, 52, 93, 125, 670, 892, 600, 38, 48, 47, 78, 256, 63, 17, 120, 164, 432, 35, 92, 110, 22, 42, 50, 323, 514, 28, 87, 73, 78, 15, 26, 78, 210, 36, 85, 189, 274, 43, 33, 10, 19, 389, 276, 312];
% weights = [7, 0, 30, 22, 80, 94, 11, 81, 70, 64, 59, 18, 0, 36, 3, 8, 15, 42, 9, 0, 42, 47, 52, 32, 26, 48, 55, 6, 29, 84, 2, 4, 18, 56, 7, 29, 93, 44, 71, 3, 86, 66, 31, 65, 0, 79, 20, 65, 52, 13];

%Averaging the data over 10 sets
for j = 1:10
  values = randi(250,1,j*10);
  weights = randi(200,1,j*10);

  for i = 1:length(values)
    %Randomised Data
    subset(i) += subsetZOKnapsack(1:length(values), weights, values, i)/10;
    ordering(i) += orderingZOKnapsack(1:length(values), weights, values, i)/10;
  end
end

%Plotting details
hold on;
h=figure(1);
title("Analysis of Greedy Algorithms \nfor 0-1 Knapsack Problem","fontweight","normal");
plot(subset,"linewidth",2);
plot(ordering,"linewidth",2);
legend('Subset Paradigm','Ordering Paradigm',"location", "northwest");
xlabel("Knapsack Capacity");
ylabel("Value");
hold off;
