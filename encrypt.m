function [result] = encrypt(key, str)
    load letters letters
    [height,width] = size(key);
    
    if height~=width
        error("Key not square. It is " + height + "x" + width)
    end
    
    numbers = toInt(str);

    if mod(length(numbers), height) ~= 0
        for i=1:mod(length(numbers),height)
            numbers(end+1) = 0;
        end
    end

    result = strings(1,length(numbers));
    
    for i=1:height:length(numbers)
        newValue = mod(key*numbers(i:i+height-1)',length(letters));
        result(i:i+height-1) = toStr(newValue);
    end
    
    result = join(result,"");
end