function [result] = encrypt(key, string)
    load letters letters
    [height,width] = size(key);
    
    if height~=width
        error("Key not square. It is " + height + "x" + width)
    end
    
    numbers = toInt(string);
    
    if mod(length(numbers), height) ~= 0
        %Fyll ut med nollor så modulo blir noll
    end

    result = strings(1,length(numbers));
    
    for i=1:height:length(numbers)
        newValue = mod(key*numbers(i:i+height-1)',length(letters)+1);
        result(i:i+height-1) = toStr(newValue);
    end
    
    result = join(result,"");
end