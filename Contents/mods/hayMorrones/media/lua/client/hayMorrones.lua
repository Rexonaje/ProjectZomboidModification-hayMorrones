local function info()

    dir = getDir(hayMorrones);

    loadVehicleModel("Vehicles_hayMorrones",

    dir.."media/models_X/vehicles/vehicles_hayMorrones.fbx",

    dir.."/media/textures/Vehicles/vehicle_hayMorrones_Shell.png");

   

    VehicleDistributions[1].hayMorrones =  {

        Normal = VehicleDistributions.Normal,

        Specific = { VehicleDistributions.Groceries, VehicleDistributions.Carpenter, VehicleDistributions.Farmer, VehicleDistributions.Electrician, VehicleDistributions.Survivalist, VehicleDistributions.Clothing, VehicleDistributions.ConstructionWorker, VehicleDistributions.Painter },

    }

    ISCarMechanicsOverlay.CarList["Base.hayMorrones"] = {imgPrefix = "smallcar_", x=10,y=0};

    VehicleZoneDistribution.parkingstall.vehicles["Base.hayMorrones"] = {index = -1, spawnChance = 50};

end


Events.OnInitWorld.Add(info);