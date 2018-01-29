%Coin Toss Simulation Real-time Plot



%i = 1;
headsCount=0;
tossNumber = 0;
plot(tossNumber,headsCount,"color", "red", "linewidth", 3);
grid on;
grid minor on;
title("Coin Toss Simulation");
legend('Probability');
xlabel("Number of Tosses");
ylabel("Probability of Heads");
for i = 1:10
while tossNumber != 5000
  hold on;
  headsCount = headsCount + coinToss;
  tossNumber = tossNumber + 1;
  plot(tossNumber,headsCount/tossNumber,"color", "red", "linewidth", 10);
  drawnow();
end
endfor
prob = headsCount / (tossNumber-1);
