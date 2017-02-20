function run(msg, matches)
	if matches[1]:lower() == "tr" then 
	
		url = https.request('https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20160119T111342Z.fd6bf13b3590838f.6ce9d8cca4672f0ed24f649c1b502789c9f4687a&format=plain&lang=fa&text='..URL.escape(matches[2])) 
		data = json:decode(url)
		txt = '🏷 عبارت اولیه : '..matches[2]..'\n🎙 زبان ترجمه : '..data.lang..'\n\n📝 ترجمه : '..data.text[1]
     tdcli.sendMessage(msg.chat_id_,0,1,txt,0,'md')  
	end
end


return {
patterns = {
	"^[/!#]([Tt][Rr]) (.*)"
}, 
	run = run
}

-- Writer & Editor : @AccessDeni3d
-- Channel : @TdcliPlugins