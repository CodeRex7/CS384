%Initialising arrays
num = zeros(1,451);
qs = zeros(1,451);
% ind = 1;
%Averaging the data over 50 sets
for j = 1:10
  ind = 1;
  for i = 50:500
    %Randomised Data
    a = floor(10*i*rand(1,i));
    num(ind) = i;
    qs(ind) = qs(ind) + quickSelect(a)/10;
    ind++
  end
 end

%Plotting details
hold on;
h=figure(1);
title("Quick Select Behaviour","FontSize",18,"fontweight","normal");
plot(num,qs,"linewidth",2);
legend('Quick Select',"location", "northwest");
xlabel("Number of Elements");
ylabel("Number of Comparisons");
hold off;
