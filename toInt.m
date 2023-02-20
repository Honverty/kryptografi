function [result] = toInt(str)
    load letters letters
    association = dictionary(letters,0:length(letters)-1);

    % Found no good way if detecting if a string array was split or not
    str = join(str,"");
    letterList = split(str, "");

    letterList(1) = [];
    letterList(length(letterList)) = [];
    result = zeros(1,length(letterList));
    for i=1:length(letterList)
        result(i) = association(upper(letterList(i)));
    end
end