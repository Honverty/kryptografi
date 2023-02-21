<<<<<<< Updated upstream
clear all
key = [1 2; 2 3];
encString = input("testmessage to encrypt: ","s");
encString = convertCharsToStrings(encString); % Convert given character array to string
msg=encrypt(key, encString);
disp(msg)
disp(decrypt(key, msg))

parmsg = split(msg,"");
tmp = split(encString,"");
parmsg(2:5) = tmp(2:5);
parmsg = join(parmsg,"");

disp("Trying to find key")
newKey = nyckelknyckarna(msg, parmsg, 1, 4);
disp("Key found: ")
disp(newKey)
disp(decrypt(newKey, msg))
=======
clear
key = [3 2; 2 13];
unlock = matrixModInv(key);
temp = input("testmessage to encrypt: ","s");
msg = encrypt(key, temp);
disp(msg)
disp(decrypt(unlock, msg))
>>>>>>> Stashed changes
