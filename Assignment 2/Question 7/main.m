%Initialising arrays
num = zeros(1,451);
qs = zeros(1,451);

%Averaging the data over 50 sets
for j = 1:20
ind = 1;
  for i = 50:500
    %Randomised Data
    a = floor(10*i*rand(1,i));
    num(ind) = i;
    qs(ind) = qs(ind) + quickSelect(a)/20 ;
    ind++;
  end
 end


%Plotting details
hold on;
h=figure(1);
%grid on;
title("Quick Select Analysis");
plot(num,qs,"linewidth",2);
legend('Quick Select',"location", "northwest");
xlabel("Number of Elements");
ylabel("Number of Iterations");
hold off;
