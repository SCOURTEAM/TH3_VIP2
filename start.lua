sudo_tshake = dofile("sudo.lua")
https = require("ssl.https")
JSON = dofile("./libs/JSON.lua")
local TH3_VIP2 = io.open("TH3_VIP2_online.lua")
if TH3_VIP2_dev then
  
tshake_on = {string.match(TH3_VIP2:read('*all'), "^(.*)/(%d+)")}
local TH3_VIP2 = io.open("sudo.lua", 'w')
TH3_VIP2:write("token = '" ..TH3_VIP2_on[1].."'\n\nsudo_add = "..tshake_on[2].."" )
TH3_VIP2:close()
https.request("https://api.telegram.org/bot"..TH3_VIP2_on[1].."/sendMessage?chat_id="..TH3_VIP2_on[2].."&text=Bot_Tshake_is_start_new")
os.execute('cd .. && rm -rf .telegram-cli')
os.execute('rm -rf TH3_VIP2_online.lua')  
os.execute('./tg -s ./TH3_VIP2.lua $@ --bot='..TH3_VIP2_on[1])
end
function chack(tokenCk)
local getme = "https://api.telegram.org/bot" ..tokenCk.. '/getme'
local req = https.request(getme)
local data = JSON:decode(req)
if data.ok == true then
print("\27[31m✓ DONE\27[m \27[1;34m»»Now Send Sudo ID««\27[m")
local sudo_send  = io.read()
print("\27[31m✓ DONE\27[m")
local TH3_VIP2_file = io.open("sudo.lua", 'w')
tsheke_file:write("token = '" ..tokenCk.."'\n\nsudo_add = "..sudo_send.."" )
tsheke_file:close()
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
os.execute('./tg -s ./TH3_VIP2.lua $@ --bot='..tokenCk)
else
print("\27[31m»»This TOKEN Incorrect , Send Right TOKEN««\27[m")
local token_send = io.read()
chack(token_send)
end
end
os.execute('cd .. && rm -rf .telegram-cli')

if token and token == "TOKEN" then 
print("\27[1;34m»»Send Your Bot TOKEN««\27[m")
local token_send = io.read()
chack(token_send)
else 
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
sudo_TH3_VIP2 = dofile("sudo.lua")
local getme = "https://api.telegram.org/bot" ..token.. '/getme'
local req = https.request(getme)
local data = JSON:decode(req)
if data.ok == true then
os.execute('./tg -s ./TH3_VIP2.lua $@ --bot='..token)
else
print("\27[31mTOKEN Incorrect , Send Right TOKEN««\27[m")
local token_send = io.read()
chack(token_send)
end
end
