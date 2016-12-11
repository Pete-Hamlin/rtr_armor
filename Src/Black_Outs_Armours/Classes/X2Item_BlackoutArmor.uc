// This is an Unreal Script

class X2Item_BlackoutArmor extends X2Item config(BlackoutArmor);

var config bool INFINITE_PLATE_ARMOR;
var config bool INFINITE_POWER_ARMOR;

var config bool KEVLAR_LIGHT_BONUS_SLOT;
var config bool KEVLAR_HEAVY_BONUS_SLOT;

var config bool PLATE_LIGHT_BONUS_SLOT;
var config bool PLATE_HEAVY_BONUS_SLOT;

var config bool POWER_LIGHT_BONUS_SLOT;
var config bool POWER_HEAVY_BONUS_SLOT;

var config bool PROTO_EXO_BONUS_SLOT;
var config bool RANGER_EXO_BONUS_SLOT;
var config bool RANGER_WAR_BONUS_SLOT;

var config bool TROJAN_SPIDER_BONUS_SLOT;
var config bool TROJAN_WRAITH_BONUS_SLOT;

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
	local array<X2DataTemplate> Armors;

	Armors.AddItem(CreateLightKevlarArmor());
	Armors.AddItem(CreateHeavyKevlarArmor());

	if (default.INFINITE_PLATE_ARMOR == true)
	{
		Armors.AddItem(CreateLightPlateArmor_Inf());
		Armors.AddItem(CreateHeavyPlateArmor_Inf());
	}
	else
	{
		Armors.AddItem(CreateLightPlateArmor());
		Armors.AddItem(CreateHeavyPlateArmor());
	}

	if (default.INFINITE_POWER_ARMOR == true)
	{
		Armors.AddItem(CreateLightPowerArmor_Inf());
		Armors.AddItem(CreateHeavyPowerArmor_Inf());
	}
	else
	{
		Armors.AddItem(CreateLightPowerArmor());
		Armors.AddItem(CreateHeavyPowerArmor());
	}

	Armors.AddItem(CreatePrototypeArmor());
	Armors.AddItem(CreateRangerExoArmor());
	Armors.AddItem(CreateRangerWarArmor());

	Armors.AddItem(CreateTrojanSpiderArmor());
	Armors.AddItem(CreateTrojanWraithArmor());

	return Armors;
}


static function X2DataTemplate CreateLightKevlarArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'LightKevlarArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Kevlar_Armor";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";
	Template.Abilities.AddItem('KevlarLight_ArmorStats');

	//Template.UpgradeItem = 'LightPlateArmor';

	if (default.KEVLAR_LIGHT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}


	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.KEVLAR_LIGHT_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.KEVLAR_LIGHT_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.KEVLAR_LIGHT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.KEVLAR_LIGHT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.KEVLAR_LIGHT_DODGE_BONUS);

	return Template;
}//Kevlar Light

static function X2DataTemplate CreateHeavyKevlarArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'HeavyKevlarArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Kevlar_Armor";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";
	Template.Abilities.AddItem('KevlarHeavy_ArmorStats');

	Template.UpgradeItem = 'LightPlateArmor';

		if (default.KEVLAR_HEAVY_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.KEVLAR_HEAVY_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.KEVLAR_HEAVY_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.KEVLAR_HEAVY_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.KEVLAR_HEAVY_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.KEVLAR_HEAVY_DODGE_BONUS);

	return Template;
}//Kevlar Heavy


static function X2DataTemplate CreateLightPlateArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'LightPlateArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');

	//Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.LIGHT_PLATE_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = default.LIGHT_PLATE_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	if (default.LIGHT_PLATE_ELERIUM > 0)
	{
		Artifacts.ItemTemplateName = 'EleriumDust';
		Artifacts.Quantity = default.LIGHT_PLATE_ELERIUM;
		Template.Cost.ResourceCosts.AddItem(Artifacts);
	}

	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlateLight_ArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 1;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	
	Template.BaseItem= 'LightKevlarArmor';

	//Template.UpgradeItem = 'LightPowerArmor';

	if (default.PLATE_LIGHT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}


	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_DODGE_BONUS);

	return Template;
}//Plate Light

static function X2DataTemplate CreateLightPlateArmor_Inf()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'LightPlateArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.CreatorTemplateName = 'LightPlateArmor_Schematic';

	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlateLight_ArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 1;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	
	Template.BaseItem= 'LightKevlarArmor';

	//Template.UpgradeItem = 'LightPowerArmor';

	if (default.PLATE_LIGHT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}


	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.PLATE_LIGHT_DODGE_BONUS);

	return Template;
}

static function X2DataTemplate CreateHeavyPlateArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'HeavyPlateArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
		//Template.CreatorTemplateName = 'HeavyPlateArmor_Schematic';
	
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');

	//Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.HEAVY_PLATE_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);
	
	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = default.HEAVY_PLATE_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Artifacts);
	
	if (default.HEAVY_PLATE_ELERIUM > 0)
	{
		Artifacts.ItemTemplateName = 'EleriumDust';
		Artifacts.Quantity = default.HEAVY_PLATE_ELERIUM;
		Template.Cost.ResourceCosts.AddItem(Artifacts);
	}

	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlateHeavy_ArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 1;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.BaseItem= 'HeavyKevlarArmor';

	//Template.UpgradeItem = 'HeavyPowerArmor';

	if (default.PLATE_HEAVY_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}


	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_DODGE_BONUS);

	return Template;
}//Plate Heavy

static function X2DataTemplate CreateHeavyPlateArmor_Inf()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'HeavyPlateArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
		
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.CreatorTemplateName = 'HeavyPlateArmor_Schematic';


	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlateHeavy_ArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 1;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.BaseItem= 'HeavyKevlarArmor';

	//Template.UpgradeItem = 'HeavyPowerArmor';

	if (default.PLATE_HEAVY_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}


	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.PLATE_HEAVY_DODGE_BONUS);

	return Template;
}


static function X2DataTemplate CreateLightPowerArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'LightPowerArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;

	//	Template.CreatorTemplateName = 'LightPowerArmor_Schematic';

	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');

	//Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.LIGHT_POWER_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = default.LIGHT_POWER_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	if (default.LIGHT_POWER_ELERIUM > 0)
	{
		Artifacts.ItemTemplateName = 'EleriumDust';
		Artifacts.Quantity = default.LIGHT_POWER_ELERIUM;
		Template.Cost.ResourceCosts.AddItem(Artifacts);
	}

	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PowerLight_ArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.BaseItem= 'LightKevlarArmor';

	if (default.POWER_LIGHT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_DODGE_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_ShieldHP, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_SHIELD_BONUS);

	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_HEALTH_BONUS, true);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet'.default.MEDIUM_POWERED_MITIGATION_AMOUNT);
	
	return Template;
}//Power Light

static function X2DataTemplate CreateLightPowerArmor_Inf()
{
	local X2ArmorTemplate Template;
	
	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'LightPowerArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.CreatorTemplateName = 'LightPowerArmor_Schematic';

	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PowerLight_ArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.BaseItem= 'LightKevlarArmor';

	if (default.POWER_LIGHT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.POWER_LIGHT_DODGE_BONUS);
	
	return Template;
}

static function X2DataTemplate CreateHeavyPowerArmor()
{
	local X2ArmorTemplate Template;
	local ArtifactCost Resources, Artifacts;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'HeavyPowerArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.ItemCat = 'armor';
	
	Template.StartingItem = false;
	
	Template.CanBeBuilt = true;
	Template.bInfiniteItem = false;
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');

	//Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.HEAVY_POWER_SUPPLIES;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'AlienAlloy';
	Artifacts.Quantity = default.HEAVY_POWER_ALLOYS;
	Template.Cost.ResourceCosts.AddItem(Artifacts);

	if (default.HEAVY_POWER_ELERIUM > 0)
	{
		Artifacts.ItemTemplateName = 'EleriumDust';
		Artifacts.Quantity = default.HEAVY_POWER_ELERIUM;
		Template.Cost.ResourceCosts.AddItem(Artifacts);
	}

	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PowerHeavy_ArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredHeavy";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

		if (default.POWER_HEAVY_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.BaseItem= 'HeavyKevlarArmor';

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_DODGE_BONUS);
	
	return Template;
}//Power Heavy

static function X2DataTemplate CreateHeavyPowerArmor_Inf()
{
	local X2ArmorTemplate Template;
	
	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'HeavyPowerArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.ItemCat = 'armor';
	
	Template.StartingItem = false;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.CreatorTemplateName = 'HeavyPowerArmor_Schematic';

	Template.TradingPostValue = 60;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PowerHeavy_ArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Warden';
	//Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PoweredHeavy";
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

		if (default.POWER_HEAVY_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.BaseItem= 'HeavyKevlarArmor';

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.POWER_HEAVY_DODGE_BONUS);
	
	return Template;
}

static function X2DataTemplate CreatePrototypeArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PrototypeArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Hammer_Armor";
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = false;
	Template.bHeavyWeapon = true;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'EXO';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional";
	Template.Abilities.AddItem('ProtoExo_ArmorStats');

	//Template.UpgradeItem = 'LightPlateArmor';

		if (default.PROTO_EXO_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.PROTO_EXO_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.PROTO_EXO_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.PROTO_EXO_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.PROTO_EXO_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.PROTO_EXO_DODGE_BONUS);

	return Template;
}//Prototype EXO Suit

static function X2DataTemplate CreateRangerExoArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'RangerExoArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Hammer_Armor";
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = false;
	Template.bHeavyWeapon = false;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'EXO';
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	Template.Abilities.AddItem('RangerExo_ArmorStats');
	Template.Abilities.AddItem('InTheZone');

	//Template.UpgradeItem = 'LightPlateArmor';

		if (default.RANGER_EXO_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.RANGER_EXO_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.RANGER_EXO_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.RANGER_EXO_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.RANGER_EXO_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.RANGER_EXO_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Offense, class'X2Ability_BlackoutArmor'.default.RANGER_EXO_AIM_BONUS);

	return Template;
}//Exo Smartgun Battlesuit

static function X2DataTemplate CreateRangerWarArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'RangerWarArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Marauder_Armor";
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = false;
	Template.bHeavyWeapon = false;
	Template.ArmorTechCat = 'powered';
	Template.Tier = 4;
	Template.AkAudioSoldierArmorSwitch = 'WAR';
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	Template.Abilities.AddItem('RangerWar_ArmorStats');
	Template.Abilities.AddItem('InTheZone');

	//Template.UpgradeItem = 'LightPlateArmor';

		if (default.RANGER_WAR_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.RANGER_WAR_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.RANGER_WAR_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.RANGER_WAR_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.RANGER_WAR_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.RANGER_WAR_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Offense, class'X2Ability_BlackoutArmor'.default.RANGER_WAR_AIM_BONUS);

	return Template;
}//War Smartgun Battlesuit

static function X2DataTemplate CreateTrojanSpiderArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'TrojanSpiderArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = false;
	Template.bHeavyWeapon = false;
	Template.ArmorTechCat = 'plated';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'Spider';
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";
	Template.Abilities.AddItem('TrojanSpider_ArmorStats');

	//Template.UpgradeItem = 'LightPlateArmor';

		if (default.TROJAN_SPIDER_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.TROJAN_SPIDER_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.TROJAN_SPIDER_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.TROJAN_SPIDER_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.TROJAN_SPIDER_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.TROJAN_SPIDER_DODGE_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HackLabel, estat_Hacking, class'X2Ability_BlackoutArmor'.default.TROJAN_SPIDER_HACK_BONUS);

	return Template;
}//Spider Techsuit

static function X2DataTemplate CreateTrojanWraithArmor()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'TrojanWraithArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_WraithSuit";
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = false;
	Template.bHeavyWeapon = false;
	Template.ArmorTechCat = 'powered';
	Template.Tier = 4;
	Template.AkAudioSoldierArmorSwitch = 'Wraith';
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";
	Template.Abilities.AddItem('TrojanWraith_ArmorStats');
	Template.Abilities.AddItem('Stealth');

	//Template.UpgradeItem = 'LightPlateArmor';

		if (default.TROJAN_WRAITH_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.TROJAN_WRAITH_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.TROJAN_WRAITH_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.TROJAN_WRAITH_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.TROJAN_WRAITH_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.TROJAN_WRAITH_DODGE_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HackLabel, estat_Hacking, class'X2Ability_BlackoutArmor'.default.TROJAN_WRAITH_HACK_BONUS);

	return Template;
}// Wraith Techsuit
