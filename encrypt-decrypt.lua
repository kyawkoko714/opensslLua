os.execute("clear")

print("Do you want to encypt or decrypt? \n -encrypt \n -decrypt")
local response = io.read()

if (response == "encrypt" or "-encrypt") then 
	os.execute("cat cipherAlgorithms.txt")
	print("Pick an encryption method")
	local cipherChoice = io.read()
	print("Pick a file")
	os.execute("ls")
	local fileChoice = io.read()
	local encryptedFileResponse = os.execute("openssl enc -"..cipherChoice.." -in "..fileChoice)
	print("Do you want to save this result? \n yes or no")
	local yesNo = io.read()
		if(yesNo == "yes") then
			print("Type in a file name to save encrypted file")
			local fileName = io.read()
			os.execute("touch "..fileName)
			print(encryptedFileRepsonse)
			io.read()
	    elseif(encryptedFileResponse == "no") then
			os.execute("clear")
			
		end

elseif (response == "decrypt" or "-decrypt") then
	print("ok decryption it is")

else 
	print("select a valid option")
end

