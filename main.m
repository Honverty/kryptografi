clear all
key = [3 2; 2 13];
unlock = matrixModInv(key);
encString = input("testmessage to encrypt: ","s");
encString = convertCharsToStrings(encString); % Convert given character array to string
msg=encrypt(key, encString);
disp(msg)
disp(decrypt(unlock, msg))

parmsg = split(msg,"");
tmp = split(encString,"");
parmsg(2:5) = tmp(2:5);
parmsg = join(parmsg,"");

disp("Trying to find key")
newKey = nyckelknyckarna(msg, parmsg, 1, 4);
disp("Key found: ")
disp(newKey)
disp(decrypt(newKey, msg))
