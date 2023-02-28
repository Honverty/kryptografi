function [result] = decrypt(key, str)
    load letters letters
    [height,width] = size(key);
    if height~=width
        error("Key not square. It is " + height + "x" + width)
    end
    numbers = toInt(str);
    result = strings(1,length(numbers));
    for i=1:height:length(numbers)
        newValue = mod(key*numbers(i:i+height-1)',length(letters));
        if mod(newValue,1) ~= 0 % If the new values are not whole
            error("Unexpected values: " + string(newValue(1)) + " and " + string(newValue(2)))
        end
        result(i:i+height-1) = toStr(newValue);
    end
    result = join(result,"");
end