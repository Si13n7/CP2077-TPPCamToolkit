CustomVehicle_TppCamFixes = {
	name = "Custom Vehicle - TPP Cam Fixes",
	description = "Custom Vehicle - TPP Cam Fixes adjusts third-person perspective (TPP) camera offsets for specific custom vehicles that are misaligned compared to stock ones.",
	version = "1.0",
	author = "$î13ñ7™"
}

local function strStartsWith(str, prefix)
	if type(str) ~= "string" or type(prefix) ~= "string" or str == "" or prefix == "" or #prefix > #str then
		spdlog.error(string.format("Invalid parameters for strStartsWith: str = '%s'; prefix = '%s'", tostring(str), tostring(prefix)))
		return false
	end
	return string.sub(str, 1, #prefix) == prefix
end

local function setCamVehicleTppOffset(id, y1, y2, y3)
	if type(id) ~= "string" or type(y1) ~= "number" or type(y2) ~= "number" or type(y3) ~= "number" then
		spdlog.error(string.format("Invalid parameters for setCamVehicleTppOffset: id = '%s'; y1 = '%f'; y2 = '%f'; y3 = '%f'", tostring(id), tonumber(y1) or -1, tonumber(y2) or -1, tonumber(y3) or -1))
		return
	end
	local paths = {
		"High_Close",				"High_Medium",				"High_Far",
		"High_DriverCombatClose",	"High_DriverCombatMedium",	"High_DriverCombatFar",
		"Low_Close",				"Low_Medium",				"Low_Far",
		"Low_DriverCombatClose",	"Low_DriverCombatMedium",	"Low_DriverCombatFar"
	}
	local values = {
		y1, y2, y3,
		y1, y2, y3,
		y1, y2, y3,
		y1, y2, y3
	}

	for i, path in ipairs(paths) do
		TweakDB:SetFlat("Camera.VehicleTPP_" .. id .. "_" .. path .. ".lookAtOffset", Vector3.new(0, values[i], (i % 3 == 1 and 1.25) or (i % 3 == 2 and 1.75) or 2.5))
	end
end

registerForEvent("onInit", function()
	Observe("VehicleComponent", "OnMountingEvent", function()
		local player = Game.GetPlayer()
		if not player then return end

		local vehicle = Game.GetMountedVehicle(player)
		if not vehicle then return end

		local name = Game.NameToString(vehicle:GetCurrentAppearanceName())
		if not name then return end

		if name == "archer_hella__basic_player_01" then
			setCamVehicleTppOffset("4w_Archer_Hella", 0.5, 0.5, 0.5)
		elseif strStartsWith(name, "yv_s2000") then
			setCamVehicleTppOffset("4w_Archer_Hella", 1.25, 1.15, 0.8)
		end
	end)
end)
