function onDeath(cid, corpse, killer)
local monstName,Storage = "Crunor The Lord of the Trees",7453 -- monster name, storage
if isMonster(cid) and string.lower(getCreatureName(cid)) == string.lower(monstName) then
doCreatureSay(cid, "You have set Crunor's spirit free from the necromantic curse!", TALKTYPE_ORANGE_1)
if isInParty(killer[1]) == true then
local players = getPartyMembers(getPartyLeader(killer[1]))
for i, k in ipairs(players) do
setPlayerStorageValue(k, Storage, 1)
end
else
setPlayerStorageValue(killer[1], Storage, 1)
end 
end
return true
end