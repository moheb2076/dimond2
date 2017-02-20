function run(msg, matches)
	if matches[1]:lower() == "news" then 
		local url = http.request('http://api.avirateam.ir/irna/cli/index.php?pass=dN@-Sy1k$mKB2PgWoj)7/9vbDL0VCpfA')
		url = string.gsub(url,"اطلاعات بیشتر","لینک خبر")

			return 
tdcli.sendMessage(msg.chat_id_,0,1,url,0,'md') 
	
	end
end


return {
patterns = {
	"^(اخبار)$",
	"^[/!#]([Nn][Ee][Ww][Ss])$"
	
}, 
	run = run
}
