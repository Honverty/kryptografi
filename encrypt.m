function [result] = encrypt(key, str)
    load letters letters
    [height,width] = size(key);
    
    if height~=width
        error("Key not square. It is " + height + "x" + width)
    end

    num = toInt(str);
    numbers = zeros(1, length(num) + mod(length(num), height));
    numbers(1:length(num)) = num;

    result = strings(1,length(numbers));
    
    for i=1:height:length(numbers)
        newValue = mod(key*numbers(i:i+height-1)',length(letters));
        result(i:i+height-1) = toStr(newValue);
    end
    
    result = join(result,"");
end