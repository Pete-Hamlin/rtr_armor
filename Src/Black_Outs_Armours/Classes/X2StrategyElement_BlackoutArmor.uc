// This is an Unreal Script

class X2StrategyElement_BlackoutArmor extends X2StrategyElement_DefaultTechs config(BlackoutArmor);

var config int PROTO_EXO_SUPPLIES_COST;
var config int PROTO_EXO_ALLOYS_COST;
var config int PROTO_EXO_ELERIUM_COST;

var config int RANGER_EXO_SUPPLIES_COST;
var config int RANGER_EXO_ALLOYS_COST;
var config int RANGER_EXO_ELERIUM_COST;

var config int RANGER_WAR_SUPPLIES_COST;
var config int RANGER_WAR_ALLOYS_COST;
var config int RANGER_WAR_ELERIUM_COST;

var config int TROJAN_SPIDER_SUPPLIES_COST;
var config int TROJAN_SPIDER_ALLOYS_COST;
var config int TROJAN_SPIDER_ELERIUM_COST;

var config int TROJAN_WRAITH_SUPPLIES_COST;
var config int TROJAN_WRAITH_ALLOYS_COST;
var config int TROJAN_WRAITH_ELERIUM_COST;

var config bool PROTO_EXO_ELERIUM_CORE_REQUIRED;
var config bool RANGER_EXO_ELERIUM_CORE_REQUIRED;
var config bool RANGER_WAR_ELERIUM_CORE_REQUIRED;
var config bool TROJAN_SPIDER_ELERIUM_CORE_REQUIRED;
var config bool TROJAN_WRAITH_ELERIUM_CORE_REQUIRED;


var config bool PROTO_EXO_CORPSE_REQUIRED;
var config bool RANGER_EXO_CORPSE_REQUIRED;
var config bool RANGER_WAR_CORPSE_REQUIRED;
var config bool TROJAN_SPIDER_CORPSE_REQUIRED;
var config bool TROJAN_WRAITH_CORPSE_REQUIRED;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Techs;

	Techs.AddItem(CreatePrototypeArmorTemplate());
	Techs.AddItem(CreateRangerExoArmorTemplate());
	Techs.AddItem(CreateRangerWarArmorTemplate());

	Techs.AddItem(CreateTrojanSpiderArmorTemplate());
	Techs.AddItem(CreateTrojanWraithArmorTemplate());

	return Techs;
}

static function X2DataTemplate CreatePrototypeArmorTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PrototypeArmor');
	Template.PointsToComplete = StafferXDays(1, 5);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_EXOSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;

	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PrototypeArmor');

	// Requirements
	//Template.Requirements.RequiredTechs.AddItem('PlatedArmor');

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.PROTO_EXO_SUPPLIES_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.PROTO_EXO_ALLOYS_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	if (default.PROTO_EXO_CORPSE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'CorpseAdventTrooper';
		Artifacts.Quantity = 2;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	if (default.PROTO_EXO_ELERIUM_COST > 0)
	{
		Resources.ItemTemplateName = 'EleriumDust';
		Resources.Quantity = default.PROTO_EXO_ELERIUM_COST;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}

	if (default.PROTO_EXO_ELERIUM_CORE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'EleriumCore';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	return Template;
}

static function X2DataTemplate CreateRangerExoArmorTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'RangerExoArmor');
	Template.PointsToComplete = StafferXDays(1, 8);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_EXOSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;

	// Randomized Item Rewards
	Template.ItemRewards.AddItem('RangerExoArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.RANGER_EXO_SUPPLIES_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.RANGER_EXO_ALLOYS_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	if (default.RANGER_EXO_CORPSE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'CorpseAdventMEC';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	if (default.RANGER_EXO_ELERIUM_COST > 0)
	{
		Resources.ItemTemplateName = 'EleriumDust';
		Resources.Quantity = default.RANGER_EXO_ELERIUM_COST;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}

	if (default.RANGER_EXO_ELERIUM_CORE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'EleriumCore';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	return Template;
}

static function X2DataTemplate CreateRangerWarArmorTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'RangerWarArmor');
	Template.PointsToComplete = StafferXDays(1, 12);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_WARSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;

	// Randomized Item Rewards
	Template.ItemRewards.AddItem('RangerWarArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.RANGER_WAR_SUPPLIES_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.RANGER_WAR_ALLOYS_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	if (default.RANGER_WAR_CORPSE_REQUIRED)
	{
		Artifacts.ItemTemplateName = 'CorpseSectopod';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	if (default.RANGER_WAR_ELERIUM_COST > 0)
	{
		Resources.ItemTemplateName = 'EleriumDust';
		Resources.Quantity = default.RANGER_WAR_ELERIUM_COST;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}

	if (default.RANGER_WAR_ELERIUM_CORE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'EleriumCore';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	return Template;
}

//Spider Suits

static function X2DataTemplate CreateTrojanSpiderArmorTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'TrojanSpiderArmor');
	Template.PointsToComplete = StafferXDays(1, 8);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;

	// Randomized Item Rewards
	Template.ItemRewards.AddItem('TrojanSpiderArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.TROJAN_SPIDER_SUPPLIES_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.TROJAN_SPIDER_ALLOYS_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	if (default.TROJAN_SPIDER_CORPSE_REQUIRED)
	{
		Artifacts.ItemTemplateName = 'CorpseAdventOfficer';
		Artifacts.Quantity = 3;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	if (default.TROJAN_SPIDER_ELERIUM_COST > 0)
	{
		Resources.ItemTemplateName = 'EleriumDust';
		Resources.Quantity = default.TROJAN_SPIDER_ELERIUM_COST;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}

	if (default.TROJAN_SPIDER_ELERIUM_CORE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'EleriumCore';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	return Template;
}

static function X2DataTemplate CreateTrojanWraithArmorTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'TrojanWraithArmor');
	Template.PointsToComplete = StafferXDays(1, 12);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_WraithSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;

	// Randomized Item Rewards
	Template.ItemRewards.AddItem('TrojanWraithArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.TROJAN_WRAITH_SUPPLIES_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = default.TROJAN_WRAITH_ALLOYS_COST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	if (default.TROJAN_WRAITH_CORPSE_REQUIRED)
	{
		Artifacts.ItemTemplateName = 'CorpseAdventShieldbearer';
		Artifacts.Quantity = 3;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	if (default.TROJAN_WRAITH_ELERIUM_COST > 0)
	{
		Resources.ItemTemplateName = 'EleriumDust';
		Resources.Quantity = default.TROJAN_WRAITH_ELERIUM_COST;
		Template.Cost.ResourceCosts.AddItem(Resources);
	}

	if (default.TROJAN_WRAITH_ELERIUM_CORE_REQUIRED == true)
	{
		Artifacts.ItemTemplateName = 'EleriumCore';
		Artifacts.Quantity = 1;
		Template.Cost.ArtifactCosts.AddItem(Artifacts);
	}
	return Template;
}
