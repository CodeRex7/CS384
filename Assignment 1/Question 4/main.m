%Initialising arrays
num = zeros(1,10);
q3WP = zeros(1,10);
qM3P = zeros(1,10);
mqM3P = zeros(1,10);
qui = zeros(1,10);

%Averaging the running time data over 50 sets
for j = 1:50
  for i = 1:10
    %Randomised Data
    a = floor(10*i*rand(1,10*i));
    num(i) = i * 10;
    q3WP(i) = q3WP(i) + quick3WP(a) / 500;
    qM3P(i) = qM3P(i) + quickM3P(a) / 500;
    mqM3P(i) = mqM3P(i) + modQuiM3P(a) / 500;
    qui(i) = qui(i) + quickSort(a) / 500;
  end
 end


%Plotting details
hold on;
h=figure(1);
%grid on;
title("Asymptotic Behaviour of Quick Sort Algorithms","FontSize",18,"fontweight","normal");
plot(num,qM3P,"linewidth",3);
plot(num,mqM3P,"linewidth",3);
plot(num,q3WP,"linewidth",3);
plot(num,qui,"linewidth",3);
legend('Quick Median of 3 Partition','Modified Quick Median of 3 Partition','Quick 3 Way Partition','Standard Quick',"location", "northwest");
xlabel("Number of Elements","FontSize",16);
ylabel("Number of Iterations","FontSize",16);
h=get (gcf, "currentaxes");
set(h,"linewidth",3);
set(h,"fontsize",14);
h=figure(1);
hold off;
%print -dpng -color "-S600,600" almostSorted.png
