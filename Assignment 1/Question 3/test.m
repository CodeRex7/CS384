hold on;
h=figure(1);
%grid on;
title("Asymptotic Behaviour of Sorting Algorithms \n using almost sorted data","FontSize",18,"fontweight","normal");
%plot(num,sel,"linewidth",3);
%plot(num,qui,"linewidth",3);
%plot(num,ins,"linewidth",3);
%plot(num,hea,"linewidth",3);
x=0:.1:4;
plot(x,exp(x),"linewidth",4)
legend('Bubble','Selection','Quick','Insertion','Heap',"location", "northwest");
xlabel("Number of Elements","FontSize",16);
ylabel("Running Time","FontSize",16);
h=get (gcf, "currentaxes");
set(h,"linewidth",3);
set(h,"fontsize",14);
h=figure(1);
hold off;
print -dpng -color "-S700,700" setSize2.png