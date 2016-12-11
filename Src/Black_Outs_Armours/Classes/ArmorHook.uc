// Class which alters the vanilla armors

class ArmorHook extends X2AmbientNarrativeCriteria config(BlackoutArmor);

var config int MEDIUM_PLATE_SUPPLIES;
var config int MEDIUM_PLATE_ALLOYS;
var config int MEDIUM_PLATE_ELERIUM;

var config int MEDIUM_POWER_SUPPLIES;
var config int MEDIUM_POWER_ALLOYS;
var config int MEDIUM_POWER_ELERIUM;

var config bool KEVLAR_MEDIUM_BONUS_SLOT;
var config bool PLATE_MEDIUM_BONUS_SLOT;
var config bool POWER_MEDIUM_BONUS_SLOT;

var config bool EXO_SUIT_BONUS_SLOT;
var config bool WAR_SUIT_BONUS_SLOT;

var config bool SPIDER_SUIT_BONUS_SLOT;
var config bool WRAITH_SUIT_BONUS_SLOT;


static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
	
	local X2ItemTemplateManager ItemTemplateManager;

	ItemTemplateManager = class'X2ItemTemplateManager'.static.GetItemTemplateManager();

	ChangeKevlarArmor(ItemTemplateManager);
	ChangePlateArmor(ItemTemplateManager);
	ChangePowerArmor(ItemTemplateManager);

	ChangeExoSuit(ItemTemplateManager);
	ChangeSpiderSuit(ItemTemplateManager);
	
	ChangeWarSuit(ItemTemplateManager);
	ChangeWraithSuit(ItemTemplateManager);

	if (class'X2Item_BlackoutArmor'.default.INFINITE_PLATE_ARMOR == false)
	{
		ChangePlateArmorSchematic(ItemTemplateManager);
		ChangePowerArmorSchematic(ItemTemplateManager);
	}

	return Templates;
}

//Medium Armors
static function ChangeKevlarArmor(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	
	Item = Manager.FindItemTemplate('KevlarArmor');
	Template = X2ArmorTemplate(Item);

	Template.bInfiniteItem = true;
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('KevlarTactical_ArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.KEVLAR_MEDIUM_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_DODGE_BONUS);

	//Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense, class'X2Ability_ItemGrantedAbilitySet_MyExtension'.default.KEVLAR_DEFENSE, true);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation, class'X2Ability_ItemGrantedAbilitySet_MyExtension'.default.KEVLAR_ARMORMIT);
}

static function ChangePlateArmor(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	local ArtifactCost Resources;
		
	Item = Manager.FindItemTemplate('MediumPlatedArmor');
	Template = X2ArmorTemplate(Item);

	if (class'X2Item_BlackoutArmor'.default.INFINITE_PLATE_ARMOR == false)
	{
		Template.bInfiniteItem = false;
		Template.CanBeBuilt = true;
		Template.Requirements.RequiredTechs.AddItem('PlatedArmor');

		Resources.ItemTemplateName = 'Supplies';
		Resources.Quantity = default.MEDIUM_PLATE_SUPPLIES;
		Template.Cost.ResourceCosts.AddItem(Resources);

		Resources.ItemTemplateName = 'AlienAlloy';
		Resources.Quantity = default.MEDIUM_PLATE_ALLOYS;
		Template.Cost.ResourceCosts.AddItem(Resources);
		if (default.MEDIUM_PLATE_ELERIUM > 0)
		{
			Resources.ItemTemplateName = 'EleriumDust';
			Resources.Quantity = default.MEDIUM_PLATE_ELERIUM;
			Template.Cost.ResourceCosts.AddItem(Resources);
		}
	}
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlateTactical_ArmorStats');
	Template.Abilities.RemoveItem('MediumPlatedArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.PLATE_MEDIUM_BONUS_SLOT == false)
	{
		Template.bAddsUtilitySlot = false;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.PLATE_MEDIUM_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.PLATE_MEDIUM_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.PLATE_MEDIUM_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.PLATE_MEDIUM_DODGE_BONUS);
}

static function ChangePowerArmor(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	local ArtifactCost Resources;
	
	Item = Manager.FindItemTemplate('MediumPoweredArmor');
	Template = X2ArmorTemplate(Item);

	if (class'X2Item_BlackoutArmor'.default.INFINITE_POWER_ARMOR == false)
	{
		Template.bInfiniteItem = false;
		Template.CanBeBuilt = true;
		Template.Requirements.RequiredTechs.AddItem('PoweredArmor');

		Resources.ItemTemplateName = 'Supplies';
		Resources.Quantity = default.MEDIUM_POWER_SUPPLIES;
		Template.Cost.ResourceCosts.AddItem(Resources);

		Resources.ItemTemplateName = 'AlienAlloy';
		Resources.Quantity = default.MEDIUM_POWER_ALLOYS;
		Template.Cost.ResourceCosts.AddItem(Resources);
		if (default.MEDIUM_POWER_ELERIUM > 0)
		{
			Resources.ItemTemplateName = 'EleriumDust';
			Resources.Quantity = default.MEDIUM_POWER_ELERIUM;
			Template.Cost.ResourceCosts.AddItem(Resources);
		}
	}
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlateTactical_ArmorStats');
	Template.Abilities.RemoveItem('MediumPoweredArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.POWER_MEDIUM_BONUS_SLOT == false)
	{
		Template.bAddsUtilitySlot = false;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.POWER_MEDIUM_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.KEVLAR_MEDIUM_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.POWER_MEDIUM_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.POWER_MEDIUM_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.POWER_MEDIUM_DODGE_BONUS);
}

//Medium Armor Schematics
static function ChangePlateArmorSchematic(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2SchematicTemplate Template;
		
	Item = Manager.FindItemTemplate('MediumPlatedArmor_Schematic');
	Template = X2SchematicTemplate(Item);
	Template.CanBeBuilt = false;
}

static function ChangePowerArmorSchematic(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2SchematicTemplate Template;
		
	Item = Manager.FindItemTemplate('MediumPoweredArmor_Schematic');
	Template = X2SchematicTemplate(Item);
	Template.CanBeBuilt = false;
}

//Heavy Armors
static function ChangeExoSuit(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	
	Item = Manager.FindItemTemplate('HeavyPlatedArmor');
	Template = X2ArmorTemplate(Item);

	Template.bInfiniteItem = false;
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('ExoSuit_ArmorStats');
	Template.Abilities.RemoveItem('HeavyPlatedArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.EXO_SUIT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.EXO_SUIT_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.EXO_SUIT_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.EXO_SUIT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.EXO_SUIT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.EXO_SUIT_DODGE_BONUS);
}

static function ChangeWarSuit(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	
	Item = Manager.FindItemTemplate('HeavyPoweredArmor');
	Template = X2ArmorTemplate(Item);

	Template.bInfiniteItem = false;
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('WarSuit_ArmorStats');
	Template.Abilities.RemoveItem('HeavyPoweredArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.WAR_SUIT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.WAR_SUIT_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.WAR_SUIT_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.WAR_SUIT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.WAR_SUIT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.WAR_SUIT_DODGE_BONUS);
}

//Light Armors
static function ChangeSpiderSuit(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	
	Item = Manager.FindItemTemplate('LightPlatedArmor');
	Template = X2ArmorTemplate(Item);

	Template.bInfiniteItem = false;
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('SpiderSuit_ArmorStats');
	Template.Abilities.RemoveItem('LightPlatedArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.SPIDER_SUIT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.SPIDER_SUIT_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.SPIDER_SUIT_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.SPIDER_SUIT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.SPIDER_SUIT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.SPIDER_SUIT_DODGE_BONUS);
}

static function ChangeWraithSuit(X2ItemTemplateManager Manager)
{
	local X2ItemTemplate Item;
	local X2ArmorTemplate Template;
	
	Item = Manager.FindItemTemplate('LightPoweredArmor');
	Template = X2ArmorTemplate(Item);

	Template.bInfiniteItem = false;
	Template.TradingPostValue = 0;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('SpiderSuit_ArmorStats');
	Template.Abilities.AddItem('Stealth');
	Template.Abilities.RemoveItem('LightPoweredArmorStats');

	Template.UIStatMarkups.Remove(0, Template.UIStatMarkups.Length);

	if (default.WRAITH_SUIT_BONUS_SLOT == true)
	{
		Template.bAddsUtilitySlot = true;
	}

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP, class'X2Ability_BlackoutArmor'.default.WRAITH_SUIT_HP_BONUS);
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_Defense, class'X2Ability_BlackoutArmor'.default.WRAITH_SUIT_DEFENCE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, estat_ArmorMitigation, class'X2Ability_BlackoutArmor'.default.WRAITH_SUIT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, estat_Mobility, class'X2Ability_BlackoutArmor'.default.WRAITH_SUIT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, estat_Dodge, class'X2Ability_BlackoutArmor'.default.WRAITH_SUIT_DODGE_BONUS);
}