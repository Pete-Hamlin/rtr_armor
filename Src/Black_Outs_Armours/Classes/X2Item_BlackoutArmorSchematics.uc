// This is an Unreal Scriptstatic function

class X2Item_BlackoutArmorSchematics extends X2Item config(BlackoutArmor);

var config bool PLATE_MEDIUM_REQUIRED;
var config bool POWER_MEDIUM_REQUIRED;

var config int LIGHT_PLATE_SUPPLIES;
var config int LIGHT_PLATE_ALLOYS;
var config int LIGHT_PLATE_ELERIUM;

var config int HEAVY_PLATE_SUPPLIES;
var config int HEAVY_PLATE_ALLOYS;
var config int HEAVY_PLATE_ELERIUM;

var config int LIGHT_POWER_SUPPLIES;
var config int LIGHT_POWER_ALLOYS;
var config int LIGHT_POWER_ELERIUM;

var config int HEAVY_POWER_SUPPLIES;
var config int HEAVY_POWER_ALLOYS;
var config int HEAVY_POWER_ELERIUM;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Schematics;

	// Armor Schematics
	if (class'X2Item_BlackoutArmor'.default.INFINITE_PLATE_ARMOR == true)
	{
		Schematics.AddItem(CreateTemplate_LightPlateArmor_Schematic());
		Schematics.AddItem(CreateTemplate_HeavyPlateArmor_Schematic());
	}

	if (class'X2Item_BlackoutArmor'.default.INFINITE_POWER_ARMOR == true)
	{
		Schematics.AddItem(CreateTemplate_LightPowerArmor_Schematic());
		Schematics.AddItem(CreateTemplate_HeavyPowerArmor_Schematic());
	}

	return Schematics;
}


static function X2DataTemplate CreateTemplate_LightPlateArmor_Schematic()
{
	local X2SchematicTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2SchematicTemplate', Template, 'LightPlateArmor_Schematic');

	Template.ItemCat = 'armor';
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.CanBeBuilt = true;
	Template.bOneTimeBuild = true;
	Template.HideInInventory = true;
	Template.HideInLootRecovered = true;
	Template.PointsToComplete = 0;
	Template.Tier = 1;
	Template.OnBuiltFn = class'X2Item_DefaultSchematics'.static.UpgradeItems;

	// Items to Upgrade
	//Template.ItemsToUpgrade.AddItem('LightKevlarArmor');
	Template.ReferenceItemTemplate = 'LightPlateArmor';
	//Template.HideIfPurchased = 'LightPowerArmor';

	// Requirements
	if (default.PLATE_MEDIUM_REQUIRED == true)
	{
		Template.Requirements.RequiredItems.AddItem('MediumPlatedArmor');
	}
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredEngineeringScore = 10;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.LIGHT_PLATE_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = default.LIGHT_PLATE_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'EleriumDust';
	Artifacts.Quantity = default.LIGHT_PLATE_ELERIUM;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	return Template;
}//Plate Light

static function X2DataTemplate CreateTemplate_HeavyPlateArmor_Schematic()
{
	local X2SchematicTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2SchematicTemplate', Template, 'HeavyPlateArmor_Schematic');

	Template.ItemCat = 'armor';
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.CanBeBuilt = true;
	Template.bOneTimeBuild = true;
	Template.HideInInventory = true;
	Template.HideInLootRecovered = true;
	Template.PointsToComplete = 0;
	Template.Tier = 1;
	Template.OnBuiltFn = class'X2Item_DefaultSchematics'.static.UpgradeItems;

	// Items to Upgrade
	//Template.ItemsToUpgrade.AddItem('LightKevlarArmor');
	Template.ReferenceItemTemplate = 'HeavyPlateArmor';
	//Template.HideIfPurchased = 'LightPowerArmor';

	// Requirements
	if (default.PLATE_MEDIUM_REQUIRED == true)
	{
		Template.Requirements.RequiredItems.AddItem('MediumPlatedArmor');
	}
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredEngineeringScore = 10;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.HEAVY_PLATE_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = default.HEAVY_PLATE_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'EleriumDust';
	Artifacts.Quantity = default.HEAVY_PLATE_ELERIUM;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	return Template;
}//Plate Heavy



static function X2DataTemplate CreateTemplate_LightPowerArmor_Schematic()
{
	local X2SchematicTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2SchematicTemplate', Template, 'LightPowerArmor_Schematic');

	Template.ItemCat = 'armor';
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.CanBeBuilt = true;
	Template.bOneTimeBuild = true;
	Template.HideInInventory = true;
	Template.HideInLootRecovered = true;
	Template.PointsToComplete = 0;
	Template.Tier = 2;
	Template.OnBuiltFn = class'X2Item_DefaultSchematics'.static.UpgradeItems;

	// Items to Upgrade
	//Template.ItemsToUpgrade.AddItem('KevlarArmor');
	//Template.ItemsToUpgrade.AddItem('MediumPlatedArmor');
	Template.ReferenceItemTemplate = 'LightPowerArmor';

		if (default.POWER_MEDIUM_REQUIRED == true)
	{
		Template.Requirements.RequiredItems.AddItem('MediumPoweredArmor');
	}
	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredEngineeringScore = 20;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.LIGHT_POWER_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.LIGHT_POWER_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = default.LIGHT_POWER_ELERIUM;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}//Power Light

static function X2DataTemplate CreateTemplate_HeavyPowerArmor_Schematic()
{
	local X2SchematicTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2SchematicTemplate', Template, 'HeavyPowerArmor_Schematic');

	Template.ItemCat = 'armor';
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.CanBeBuilt = true;
	Template.bOneTimeBuild = true;
	Template.HideInInventory = true;
	Template.HideInLootRecovered = true;
	Template.PointsToComplete = 0;
	Template.Tier = 2;
	Template.OnBuiltFn = class'X2Item_DefaultSchematics'.static.UpgradeItems;

	// Items to Upgrade
	//Template.ItemsToUpgrade.AddItem('KevlarArmor');
	//Template.ItemsToUpgrade.AddItem('MediumPlatedArmor');
	Template.ReferenceItemTemplate = 'HeavyPowerArmor';

	if (default.POWER_MEDIUM_REQUIRED == true)
	{
		Template.Requirements.RequiredItems.AddItem('MediumPoweredArmor');
	}
	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredEngineeringScore = 20;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.HEAVY_POWER_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.HEAVY_POWER_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = default.HEAVY_POWER_ELERIUM;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}//Power Heavy
