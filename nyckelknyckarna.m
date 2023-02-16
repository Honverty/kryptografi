function [key] = nyckelknyckarna(cryptText,knownText,startPos,knownLenght)
cryptText = split(cryptText,"");
knownText = split(knownText,"");
pcText = cryptText(startPos:(startPos+knownLenght-1)); % partly crypted text
pkText= knownText(startPos:(startPos+knownLenght-1)); % partly know text
disp(pcText)
pcText = toInt(pcText);
pkText = toInt(pkText);
disp(pcText)
C = [pcText(1:2);pcText(3:4)];
K = [pkText(1:2);pkText(3:4)];

invK = inv(K);
invA = C*invK;

key = (invA)';
end