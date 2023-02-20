function [key] = nyckelknyckarna(cryptText,knownText,startPos,knownLength)
cryptText = upper(cryptText);
knownText = upper(knownText);
cryptText = split(cryptText,"");
knownText = split(knownText,"");
knownText(1) = [];
knownText(length(knownText)) = [];
cryptText(1) = [];
cryptText(length(cryptText)) = [];

pcText = cryptText(startPos:(startPos+knownLength-1)); % partly crypted text
pkText = knownText(startPos:(startPos+knownLength-1)); % partly know text

pcText = toInt(pcText);
pkText = toInt(pkText);

% My (Andreas) own method, which gives a partially correct answer
% C = [pcText(1) pcText(3); pcText(2) pcText(4)];
% K = [pkText(1) pkText(3); pkText(2) pkText(4)];
% 
% key = (C*inv(K));

% This is the method said to work, but is currently giving incorrect keys
% C = [pcText(1:2);pcText(3:4)];
% K = [pkText(1:2);pkText(3:4)];
% 
% key = (C\K)';
end