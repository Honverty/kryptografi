function [result] = toStr(numbers)
    load letters letters
    association = dictionary(0:length(letters)-1,letters);
    result = strings(size(numbers));
    for i=1:length(numbers)
        result(i) = association(mod(numbers(i),length(letters)+1));
    end
end