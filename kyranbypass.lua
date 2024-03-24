local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
HOME = 1
gg.alert("🌏Kyran Vip Bypass (online)🌍")
gg.alert("🔥Köpek Gibi Oynama🔥")


function HOME()
VIPONLY = gg.multiChoice({
"➥ Logo Bypass 🔱\n --- Aᴘᴘʟʏ ɪɴ Logo",
"➥ Lobby Bypass 🔱\n --- Aᴘᴘʟʏ ɪɴ Lobby",
"🔥 Exɪᴛ 🔥"

}, nil, "BYPASS 3.1✅\nKöpek Gibi Oynama✅")

if VIPONLY == nil then else
if VIPONLY[1]== true then B1() end
if VIPONLY[2]== true then B2() end
if VIPONLY[3]== true then EXIT() end
end
PUBGMH = -1
end

function B1()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x136D0C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 32, value = 4758429448663908272, freeze = true}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x136C40}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 32, value = 4758429448663908272, freeze = true}})

gg.alert("⚡Logo 𝐁𝐲𝐩𝐚𝐬𝐬 𝐀𝐜𝐭𝐢𝐯𝐚𝐭𝐞𝐝 BY ALI PRO⚡")
gg.toast("🔥CRACK BY ALI PRO🔥")
end

function B2()
function XGBase(Address,AFV)
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(AFV)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
end

XGBase(
{gg.getRangesList("libanogs.so:bss")[1].start},
{
{64,4,0x1FEC},
{64,4,0x1FC4},
})

gg.alert("⚡Lobby Bypass Hazır⚡")
gg.toast("🔥@Somunekmegi🔥")
end


function EXIT()
print("✅Telegram : @pubgdeepmod ")
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
if PUBGMH == 1 then
HOME()
end
end
