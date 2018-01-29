%Initialising arrays
num = zeros(1,10);
q3WP = zeros(1,10);
qM3P = zeros(1,10);
mqM3P = zeros(1,10);
qui = zeros(1,10);

%Averaging the data over 50 sets
for j = 1:50
  for i = 1:100
    %Randomised Data
    a = floor(10*i*rand(1,10*i));
    num(i) = i * 10;
    q3WP(i) = q3WP(i) + quick3WP(a) / 5000;
    qM3P(i) = qM3P(i) + quickM3P(a) / 5000;
    mqM3P(i) = mqM3P(i) + modQuiM3P(a) / 5000;
    qui(i) = qui(i) + quickSort(a) / 5000;
  end
 end


%Plotting details
hold on;
h=figure(1);
%grid on;
title("Asymptotic Behaviour of Quick Sort Algorithms","FontSize",18,"fontweight","normal");
plot(num,q3WP,"linewidth",2);
plot(num,qM3P,"linewidth",2);
plot(num,mqM3P,"linewidth",2);
plot(num,qui,"linewidth",2);
legend('Quick 3 Way Partition','Quick Median of 3 Partition','Modified Quick Median of 3 Partition','Standard Quick',"location", "northwest");
xlabel("Number of Elements");
ylabel("Number of Iterations");
%h=get (gcf, "currentaxes");
%set(h,"linewidth",3);
set(h,"fontsize",14);
h=figure(1);
hold off;
%print -dpng -color "-S600,600" almostSorted.png
