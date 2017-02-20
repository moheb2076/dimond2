do 

 local function run(msg, matches) 
if matches[1] == "roydad" then 
  local url = http.request('http://sudoteam.ir/api/events.php') 
  local jdat = json:decode(url) 
  local text = '' 
  for i = 1 , #jdat do 
    text = text..'🗓تاریخ  '..jdat[i].shdate..'\n📋رویداد :  '..(jdat[i].event or'')..'\n➖➖➖➖➖➖➖➖➖➖\n\n' 
end 
tdcli.sendMessage(msg.chat_id_,0,1,text,0,'md')  
  end 
 end 
return { 
  usage = "رویداد ماهای سال", 
  patterns = { 
  
"^[!/#]([Rr]oydad)$" 
  }, 
  run = run
} 
end 

--Writer & Editor : @AccessDeni3d
--Channel : @TdcliPlugins
