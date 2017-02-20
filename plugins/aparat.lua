function run(msg, matches)
	if matches[1]:lower() == 'aparat' then 
      local url = http.request('http://www.aparat.com/etc/api/videoBySearch/text/'..URL.escape(matches[2])) 
      local jdat = json:decode(url) 

      local items = jdat.videobysearch 
      text = '_🔍 نتیجه جستوجو در آپارات :_ \n\n➖➖➖➖➖➖➖➖➖➖➖\n' 
      for i = 1, #items do 
      text = text..'\n'..i..'- '..items[i].title..'  \n_ ‍👁 تعداد بازدید: _'..items[i].visit_cnt..'\n 🌐 _لینک:_ aparat.com/v/'..items[i].uid 
      end 
      text = text..'\n' 
     tdcli.sendMessage(msg.chat_id_,0,1,text,0,'md')  
	end
end


return {
patterns = {
	"^[/#!](aparat) (.*)$"
}, 
	run = run
}

-- Writer & Editor : @AccessDeni3d
-- Channel : @TdcliPlugins