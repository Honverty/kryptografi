%Inverterar 2x2-matriser med modulo letters-längd

function [result] = matrixModInv(key)
    load letters letters
    modValue = length(letters);
    [~, D] = gcd(round(det(key)), modValue);
    result = mod(D*[key(2, 2), -key(1, 2); -key(2, 1), key(1, 1)], modValue);
end