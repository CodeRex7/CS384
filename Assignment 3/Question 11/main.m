botup = recur = recsu = zeros(1,10);

for i=1:10
  botup(i) += bottomUpDynamic(i,floor(i/2));
  recur(i) += binomialRecursive(i,floor(i/2));
  recsu(i) += binomialRecursiveSubtract(i,floor(i/2));
endfor

hold on;
lw = "linewidth";
plot(botup,lw,3);
plot(recur,lw,3);
plot(recsu,lw,3);
title("Comparison of Binomial Coefficient Computation \nAlgorithms");
legend('Dynamic Bottom-Up','Classical Recursive','Recursive Subtract',"location","northwest");
xlabel("Value of n");
ylabel("Iterations");
hold off;
