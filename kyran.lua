API = gg.makeRequest('https://raw.githubusercontent.com/31KYRAN31/kyran31/main/kyranbypass.lua').content
if not API then
gg.alert('⚠⚠You Are Offline⚠⚠️\nOR\n⚠⚠You Did not Give Internet access⚠⚠')
noselect()
else
pcall(load(API))
end