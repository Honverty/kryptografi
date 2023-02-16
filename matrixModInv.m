%Inverterar 2x2-matriser med modulo letters-längd

function [result] = matrixModInv(matrix)
    load letters letters
    modValue = length(letters);
    [~, D] = gcd(det(matrix), modValue);
    result = mod(D*[matrix(2, 2), -matrix(1, 2); -matrix(2, 1), matrix(1, 1)], modValue);
end