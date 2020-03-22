--[[To Do list
    add decryption
    allow directories to be made
    make improvemtns--]]


os.execute("clear")

--Start up the program
local function encryptionDecryption()

--Question Prompted on run
os.clock()
print("Do you want to encypt or decrypt? \n -encrypt \n -decrypt")
print(math.randomseed(2))
local response = io.read()

--Selection part 
if (response == "encrypt" or "-encrypt") then 
	os.execute("cat cipherAlgorithms.txt")
	print("Pick an encryption method \n")
	local cipherChoice = io.read()
	print("Pick a file")
	os.execute("ls")
	local fileChoice = io.read()
	local encryptedFileResponse = os.execute("openssl enc -"..cipherChoice.." -in "..fileChoice..">> tmpsslfile")
	print("\n Do you want to save this result? \n yes or no \n or type retry to go back")
	local yesNoRetry = io.read()
	-- If yes then allow for save
		if(yesNo == "yes" or "-yes") then
			print("Type in a file name to save encrypted file \n")
			local fileName = io.read()
			os.execute("touch "..fileName);os.execute("mv tmpsslfile "..fileName)
			os.execute("ls");print("Output \n");os.execute("cat "..fileName)
			io.read()
	        elseif(yesNo == "no" or "-no") then
			os.execute("bye have a beautiful time")
			
	        elseif(yesNo == "retry" or "-retry") then
		encryptionDecryption()
		print("yes")
		end

elseif (response == "decrypt" or "-decrypt") then
	print("ok decryption it is")

else 
	print("select a valid option")
end
end
encryptionDecryption()
io.read()
