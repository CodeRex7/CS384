% Recursive function that computes the matrix product AB using Strassen's algorithm.

function [iterations] = strassen2(A,B)
  iterations = 0;
  [C, iterations] = actualStrassen2(A,B,iterations);
  return;
end

function [C, iterations] = actualStrassen2( A, B, iterations )
  sizeN = size(A);
  sizeN = sizeN(1); % sizeN = n

  % Base case: size of A and B == 1x1
  % if (A != 0 && B != 0)
    if (sizeN == 1 && A!=0 && B!=0)
      C = A(1,1) * B(1,1);
      iterations++;
    else if (A==0 || B==0)
      C = zeros(rows(A),rows(A));
    else
      % Divide A and B into submatrices
      sizeN = sizeN/2;
      A11 = A(1:sizeN, 1:sizeN);
      A12 = A(1:sizeN, (sizeN+1):end);
      A21 = A((sizeN+1):end, 1:sizeN);
      A22 = A((sizeN+1):end, (sizeN+1):end);
      B11 = B(1:sizeN, 1:sizeN);
      B12 = B(1:sizeN, (sizeN+1):end);
      B21 = B((sizeN+1):end, 1:sizeN);
      B22 = B((sizeN+1):end, (sizeN+1):end);

      % Compute M1, M2, ... M7
      [M1,iterations] = actualStrassen2(A11 + A22, B11 + B22,iterations);
      [M2,iterations] = actualStrassen2(A21 + A22, B11,iterations);
      [M3,iterations] = actualStrassen2(A11, B12 - B22,iterations);
      [M4,iterations] = actualStrassen2(A22, B21 - B11,iterations);
      [M5,iterations] = actualStrassen2(A11 + A12, B22,iterations);
      [M6,iterations] = actualStrassen2(A21 - A11, B11 + B12,iterations);
      [M7,iterations] = actualStrassen2(A12 - A22, B21 + B22,iterations);

      % Compute C11, C12, C21, and C22
      C11 = M1 + M4 - M5 + M7;
      C12 = M3 + M5;
      C21 = M2 + M4;
      C22 = M1 - M2 + M3  + M6;
      C = [ C11, C12; C21, C22 ]; % C is returned

    endif
  % else
    % C = zeros(rows(A),rows(A));
  end
end
