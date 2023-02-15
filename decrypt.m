function [result] = decrypt(key, string)
    load letters letters
    [height,width] = size(key);
    if height~=width
        error("Key not square. It is " + height + "x" + width)
    end
    numbers = toInt(string);
    result = strings(1,length(numbers));
    newKey = mod(inv(key), length(letters)+1);
    for i=1:height:length(numbers)
        newValue = mod(newKey*numbers(i:i+height-1)',length(letters)+1);
        result(i:i+height-1) = toStr(newValue);
    end
    result = join(result,"");
end