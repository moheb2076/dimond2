function run(msg, matches)
	if matches[1] == "phone" or matches[1]:lower() == "mobile" then 
		local pass = 'dram1135' 
		local url = 'http://api.avirateam.ir/mobile/cli/index.php?pass='..pass 
		local req = http.request(url) 
			req = req:gsub("Powered By http://www.mobile.ir","`----------------`\n*Channel :* •| @TdcliPlugins |•\n`----------------`")
			req = req:gsub("اطلاعات بیشتر","لینک")
			req = req:gsub("🆕: لیست جدیدترین گوشی ها ","🔍 جدیدترین موبایل ها :")
			return 
tdcli.sendMessage(msg.chat_id_,0,1,req,0,'md') 
	
	end
end


return {
patterns = {
	"^([Mm][Oo][Bb][Ii][Ll][Ee])$",
	"^[/!#]([Mm][Oo][Bb][Ii][Ll][Ee])$"
	
}, 
	run = run
}

-- Writer & Editor : AccessDeni3d
-- Channel : @TdcliPlugins