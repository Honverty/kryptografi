clear all
key = [1 2; 2 3];
temp = "testmessage to encrypt";
msg=encrypt(key, temp);
disp(msg)
disp(decrypt(key, msg))