num = zeros(1,7);
iterationsCl = zeros(1,7);
iterationsSt = zeros(1,7);
% for i = 1:15
for i = 2:8
	inp1 = randi(i*10,2^i,2^i);
	inp2 = randi(i*10,2^i,2^i);
	num(i-1) = 2^i;
	iterationsCl(i-1) = iterationsCl(i-1) + classical(inp1,inp2);
	% if (2^ceil(log2(i)) ~= i)
	% 	padlen = 2^ceil(log2(i));
	% 	inp1 = postpad(inp1, padlen,0,1);
	% 	inp1 = postpad(inp1, padlen,0,2);
	% 	inp2 = postpad(inp2, padlen,0,1);
	% 	inp2 = postpad(inp2, padlen,0,2);
	% endif
	iterationsSt(i-1) = iterationsSt(i-1) + strassen2(inp1,inp2);
% endfor
endfor

hold on;
title("Iterations vs Data Size");
plot(num,iterationsCl,"linewidth",2);
plot(num,iterationsSt,"linewidth",2);
legend('Classical','Strassen','location','northwest');
xlabel("Number of Elements");
ylabel("Number of Iterations");
hold off;
