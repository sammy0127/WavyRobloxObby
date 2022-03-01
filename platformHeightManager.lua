--script creates sinusoidal variations of platform height across the x axis for platforms in the appropriate Folder

local baseHeight = 0
local baseAmplitude = 4
local baseOmega = 0.6
local waitPeriod = 0.01

local sin = math.sin

local platformFolder = workspace:WaitForChild("DisappearingPlatforms")
local platforms = platformFolder:GetChildren()


--While loops indefinitely, i stands in for the time variable, height determined by y=Asin(Bx + Ct) where A determines the 
--Amplitude of the oscillation B determines the wavelength of the oscillation and C determines frequency
while true do
	for t=1, 627 do
		for _, platform in ipairs(platforms) do
			platform.Position = Vector3.new(platform.Position.x,baseHeight+baseAmplitude*sin(0.5*platform.Position.x + baseOmega*t/10),platform.Position.z)
		end
		wait(waitPeriod)
	end
end