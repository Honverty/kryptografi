clear all
key = [1 2; 2 3];
temp = "Hello";
msg=encrypt(key, temp);
disp(msg)
disp(decrypt(key, msg))