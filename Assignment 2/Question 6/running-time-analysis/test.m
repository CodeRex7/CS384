function [ze] = test(A,B)
  ze = 0;
  [C,ze] = mult(A,B,ze);
  return;
end

function [C,ze] = mult( A, B,ze)
  sizeN = size(A);
  sizeN = sizeN(1); % sizeN = n

  % Base case: size of A and B == 1x1
  % if (A != 0 && B != 0)
    if (sizeN == 1 && A!=0 && B!=0)
      C = A(1,1) * B(1,1);
      ze++;
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
      [M1,ze] = mult(A11 + A22, B11 + B22,ze);
      [M2,ze] = mult(A21 + A22, B11,ze);
      [M3,ze] = mult(A11, B12 - B22,ze);
      [M4,ze] = mult(A22, B21 - B11,ze);
      [M5,ze] = mult(A11 + A12, B22,ze);
      [M6,ze] = mult(A21 - A11, B11 + B12,ze);
      [M7,ze] = mult(A12 - A22, B21 + B22,ze);

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
