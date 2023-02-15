function [result] = toInt(string)
    load letters letters
    association = dictionary(letters,0:length(letters)-1);
    letterList = split(string,"");
    letterList(1) = [];
    letterList(end) = [];
    result = zeros(1,length(letterList));
    for i=1:length(letterList)
        result(i) = association(upper(letterList(i)));
    end
end