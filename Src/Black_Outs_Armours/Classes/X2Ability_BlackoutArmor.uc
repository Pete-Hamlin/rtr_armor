// This is an Unreal Script

class X2Ability_BlackoutArmor extends X2Ability_ItemGrantedAbilitySet config(BlackoutArmor_Stats);

var config int KEVLAR_LIGHT_DODGE_BONUS;
var config int KEVLAR_LIGHT_HP_BONUS;
var config int KEVLAR_LIGHT_DEFENCE_BONUS;
var config int KEVLAR_LIGHT_MITIGATION_AMOUNT;
var config int KEVLAR_LIGHT_MITIGATION_CHANCE;
var config int KEVLAR_LIGHT_MOBILITY_BONUS;


var config int KEVLAR_MEDIUM_DODGE_BONUS;
var config int KEVLAR_MEDIUM_HP_BONUS;
var config int KEVLAR_MEDIUM_DEFENCE_BONUS;
var config int KEVLAR_MEDIUM_MITIGATION_AMOUNT;
var config int KEVLAR_MEDIUM_MITIGATION_CHANCE;
var config int KEVLAR_MEDIUM_MOBILITY_BONUS;


var config int KEVLAR_HEAVY_DODGE_BONUS;
var config int KEVLAR_HEAVY_HP_BONUS;
var config int KEVLAR_HEAVY_DEFENCE_BONUS;
var config int KEVLAR_HEAVY_MITIGATION_AMOUNT;
var config int KEVLAR_HEAVY_MITIGATION_CHANCE;
var config int KEVLAR_HEAVY_MOBILITY_BONUS;


var config int PLATE_LIGHT_DODGE_BONUS;
var config int PLATE_LIGHT_HP_BONUS;
var config int PLATE_LIGHT_DEFENCE_BONUS;
var config int PLATE_LIGHT_MITIGATION_AMOUNT;
var config int PLATE_LIGHT_MITIGATION_CHANCE;
var config int PLATE_LIGHT_MOBILITY_BONUS;


var config int PLATE_MEDIUM_DODGE_BONUS;
var config int PLATE_MEDIUM_HP_BONUS;
var config int PLATE_MEDIUM_DEFENCE_BONUS;
var config int PLATE_MEDIUM_MITIGATION_AMOUNT;
var config int PLATE_MEDIUM_MITIGATION_CHANCE;
var config int PLATE_MEDIUM_MOBILITY_BONUS;


var config int PLATE_HEAVY_DODGE_BONUS;
var config int PLATE_HEAVY_HP_BONUS;
var config int PLATE_HEAVY_DEFENCE_BONUS;
var config int PLATE_HEAVY_MITIGATION_AMOUNT;
var config int PLATE_HEAVY_MITIGATION_CHANCE;
var config int PLATE_HEAVY_MOBILITY_BONUS;

var config int POWER_LIGHT_DODGE_BONUS;
var config int POWER_LIGHT_HP_BONUS;
var config int POWER_LIGHT_DEFENCE_BONUS;
var config int POWER_LIGHT_MITIGATION_AMOUNT;
var config int POWER_LIGHT_MITIGATION_CHANCE;
var config int POWER_LIGHT_MOBILITY_BONUS;
var config int POWER_LIGHT_SHIELD_BONUS;


var config int POWER_MEDIUM_DODGE_BONUS;
var config int POWER_MEDIUM_HP_BONUS;
var config int POWER_MEDIUM_DEFENCE_BONUS;
var config int POWER_MEDIUM_MITIGATION_AMOUNT;
var config int POWER_MEDIUM_MITIGATION_CHANCE;
var config int POWER_MEDIUM_MOBILITY_BONUS;
var config int POWER_MEDIUM_SHIELD_BONUS;

var config int POWER_HEAVY_DODGE_BONUS;
var config int POWER_HEAVY_HP_BONUS;
var config int POWER_HEAVY_DEFENCE_BONUS;
var config int POWER_HEAVY_MITIGATION_AMOUNT;
var config int POWER_HEAVY_MITIGATION_CHANCE;
var config int POWER_HEAVY_MOBILITY_BONUS;
var config int POWER_HEAVY_SHIELD_BONUS;

//Exo Suits
var config int PROTO_EXO_DODGE_BONUS;
var config int PROTO_EXO_HP_BONUS;
var config int PROTO_EXO_DEFENCE_BONUS;
var config int PROTO_EXO_MITIGATION_AMOUNT;
var config int PROTO_EXO_MITIGATION_CHANCE;
var config int PROTO_EXO_MOBILITY_BONUS;

var config int EXO_SUIT_DODGE_BONUS;
var config int EXO_SUIT_HP_BONUS;
var config int EXO_SUIT_DEFENCE_BONUS;
var config int EXO_SUIT_MITIGATION_AMOUNT;
var config int EXO_SUIT_MITIGATION_CHANCE;
var config int EXO_SUIT_MOBILITY_BONUS;

var config int RANGER_EXO_DODGE_BONUS;
var config int RANGER_EXO_HP_BONUS;
var config int RANGER_EXO_DEFENCE_BONUS;
var config int RANGER_EXO_MITIGATION_AMOUNT;
var config int RANGER_EXO_MITIGATION_CHANCE;
var config int RANGER_EXO_MOBILITY_BONUS;
var config int RANGER_EXO_AIM_BONUS;

var config int RANGER_WAR_DODGE_BONUS;
var config int RANGER_WAR_HP_BONUS;
var config int RANGER_WAR_DEFENCE_BONUS;
var config int RANGER_WAR_MITIGATION_AMOUNT;
var config int RANGER_WAR_MITIGATION_CHANCE;
var config int RANGER_WAR_MOBILITY_BONUS;
var config int RANGER_WAR_AIM_BONUS;
var config int RANGER_WAR_SHIELD_BONUS;

var config int WAR_SUIT_DODGE_BONUS;
var config int WAR_SUIT_HP_BONUS;
var config int WAR_SUIT_DEFENCE_BONUS;
var config int WAR_SUIT_MITIGATION_AMOUNT;
var config int WAR_SUIT_MITIGATION_CHANCE;
var config int WAR_SUIT_MOBILITY_BONUS;
var config int WAR_SUIT_SHIELD_BONUS;

//Spider Suits
var config int SPIDER_SUIT_DODGE_BONUS;
var config int SPIDER_SUIT_HP_BONUS;
var config int SPIDER_SUIT_DEFENCE_BONUS;
var config int SPIDER_SUIT_MITIGATION_AMOUNT;
var config int SPIDER_SUIT_MITIGATION_CHANCE;
var config int SPIDER_SUIT_MOBILITY_BONUS;

var config int WRAITH_SUIT_DODGE_BONUS;
var config int WRAITH_SUIT_HP_BONUS;
var config int WRAITH_SUIT_DEFENCE_BONUS;
var config int WRAITH_SUIT_MITIGATION_AMOUNT;
var config int WRAITH_SUIT_MITIGATION_CHANCE;
var config int WRAITH_SUIT_MOBILITY_BONUS;

var config int TROJAN_SPIDER_DODGE_BONUS;
var config int TROJAN_SPIDER_HP_BONUS;
var config int TROJAN_SPIDER_DEFENCE_BONUS;
var config int TROJAN_SPIDER_MITIGATION_AMOUNT;
var config int TROJAN_SPIDER_MITIGATION_CHANCE;
var config int TROJAN_SPIDER_MOBILITY_BONUS;
var config int TROJAN_SPIDER_HACK_BONUS;

var config int TROJAN_WRAITH_DODGE_BONUS;
var config int TROJAN_WRAITH_HP_BONUS;
var config int TROJAN_WRAITH_DEFENCE_BONUS;
var config int TROJAN_WRAITH_MITIGATION_AMOUNT;
var config int TROJAN_WRAITH_MITIGATION_CHANCE;
var config int TROJAN_WRAITH_MOBILITY_BONUS;
var config int TROJAN_WRAITH_HACK_BONUS;

var config float SPIDER_SUIT_DETECTIONRADIUSMODIFER;
var config float WRAITH_SUIT_DETECTIONRADIUSMODIFER;
var config float TROJAN_SPIDER_DETECTIONRADIUSMODIFER;
var config float TROJAN_WRAITH_DETECTIONRADIUSMODIFER;

/// Creates the set of abilities granted to units through their equipped items in X-Com 2

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(KevlarLight_ArmorStats());
	Templates.AddItem(KevlarTactical_ArmorStats());
	Templates.AddItem(KevlarHeavy_ArmorStats());

	Templates.AddItem(PlateLight_ArmorStats());
	Templates.AddItem(PlateTactical_ArmorStats());
	Templates.AddItem(PlateHeavy_ArmorStats());

	Templates.AddItem(PowerLight_ArmorStats());
	Templates.AddItem(PowerTactical_ArmorStats());
	Templates.AddItem(PowerHeavy_ArmorStats());

	Templates.AddItem(ProtoExo_ArmorStats());
	Templates.AddItem(ExoSuit_ArmorStats());
	Templates.AddItem(RangerExo_ArmorStats());
	Templates.AddItem(WarSuit_ArmorStats());
	Templates.AddItem(RangerWar_ArmorStats());

	Templates.AddItem(SpiderSuit_ArmorStats());
	Templates.AddItem(WraithSuit_ArmorStats());

	Templates.AddItem(TrojanSpider_ArmorStats());
	Templates.AddItem(TrojanWraith_ArmorStats());

	return Templates;
}

//Kevlars
static function X2AbilityTemplate KevlarLight_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'KevlarLight_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.KEVLAR_LIGHT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.KEVLAR_LIGHT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.KEVLAR_LIGHT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.KEVLAR_LIGHT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.KEVLAR_LIGHT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.KEVLAR_LIGHT_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


static function X2AbilityTemplate KevlarTactical_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'KevlarTactical_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.KEVLAR_MEDIUM_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.KEVLAR_MEDIUM_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.KEVLAR_MEDIUM_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.KEVLAR_MEDIUM_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.KEVLAR_MEDIUM_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.KEVLAR_MEDIUM_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


static function X2AbilityTemplate KevlarHeavy_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'KevlarHeavy_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.KEVLAR_HEAVY_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.KEVLAR_HEAVY_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.KEVLAR_HEAVY_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.KEVLAR_HEAVY_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.KEVLAR_HEAVY_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.KEVLAR_HEAVY_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

//Plate
static function X2AbilityTemplate PlateLight_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlateLight_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.PLATE_LIGHT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.PLATE_LIGHT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.PLATE_LIGHT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.PLATE_LIGHT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.PLATE_LIGHT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.PLATE_LIGHT_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


static function X2AbilityTemplate PlateTactical_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlateTactical_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.PLATE_MEDIUM_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.PLATE_MEDIUM_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.PLATE_MEDIUM_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.PLATE_MEDIUM_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.PLATE_MEDIUM_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.PLATE_MEDIUM_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


static function X2AbilityTemplate PlateHeavy_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlateHeavy_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.PLATE_HEAVY_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.PLATE_HEAVY_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.PLATE_HEAVY_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.PLATE_HEAVY_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.PLATE_HEAVY_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.PLATE_HEAVY_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

//Power
static function X2AbilityTemplate PowerLight_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PowerLight_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.POWER_LIGHT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.POWER_LIGHT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.POWER_LIGHT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.POWER_LIGHT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.POWER_LIGHT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.POWER_LIGHT_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.POWER_LIGHT_SHIELD_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate PowerTactical_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PowerTactical_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.POWER_MEDIUM_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.POWER_MEDIUM_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.POWER_MEDIUM_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.POWER_MEDIUM_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.POWER_MEDIUM_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.POWER_MEDIUM_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.POWER_MEDIUM_SHIELD_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate PowerHeavy_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PowerHeavy_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.POWER_HEAVY_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.POWER_HEAVY_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.POWER_HEAVY_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.POWER_HEAVY_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.POWER_HEAVY_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.POWER_HEAVY_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.POWER_HEAVY_SHIELD_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


//Exo Suits
static function X2AbilityTemplate ProtoExo_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ProtoExo_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.PROTO_EXO_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.PROTO_EXO_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.PROTO_EXO_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.PROTO_EXO_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.PROTO_EXO_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.PROTO_EXO_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate ExoSuit_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ExoSuit_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.EXO_SUIT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.EXO_SUIT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.EXO_SUIT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.EXO_SUIT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.EXO_SUIT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.EXO_SUIT_DODGE_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate RangerExo_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'RangerExo_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.RANGER_EXO_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.RANGER_EXO_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.RANGER_EXO_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.RANGER_EXO_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.RANGER_EXO_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.RANGER_EXO_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense, default.RANGER_EXO_AIM_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

// War Suits
static function X2AbilityTemplate WarSuit_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'WarSuit_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.WAR_SUIT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.WAR_SUIT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.WAR_SUIT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.WAR_SUIT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.WAR_SUIT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.WAR_SUIT_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.WAR_SUIT_SHIELD_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate RangerWar_ArmorStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'RangerWar_ArmorStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.RANGER_WAR_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.RANGER_WAR_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.RANGER_WAR_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.RANGER_WAR_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.RANGER_WAR_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.RANGER_WAR_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense, default.RANGER_WAR_AIM_BONUS);
  PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.RANGER_WAR_SHIELD_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


//Spider Suits
static function X2AbilityTemplate SpiderSuit_ArmorStats()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'SpiderSuit_ArmorStats');
	// Template.IconImage  -- no icon needed for armor stats

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);
	
	// light armor has dodge and mobility as well as health
	//
	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	// PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, default.MediumPlatedHealthBonusName, default.MediumPlatedHealthBonusDesc, Template.IconImage);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.SPIDER_SUIT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.SPIDER_SUIT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.SPIDER_SUIT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.SPIDER_SUIT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.SPIDER_SUIT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.SPIDER_SUIT_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.SPIDER_SUIT_DETECTIONRADIUSMODIFER);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;	
}

static function X2AbilityTemplate TrojanSpider_ArmorStats()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'TrojanSpider_ArmorStats');
	// Template.IconImage  -- no icon needed for armor stats

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);
	
	// light armor has dodge and mobility as well as health
	//
	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	// PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, default.MediumPlatedHealthBonusName, default.MediumPlatedHealthBonusDesc, Template.IconImage);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.TROJAN_SPIDER_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.TROJAN_SPIDER_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.TROJAN_SPIDER_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.TROJAN_SPIDER_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.TROJAN_SPIDER_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.TROJAN_SPIDER_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.TROJAN_SPIDER_DETECTIONRADIUSMODIFER);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking, default.TROJAN_SPIDER_HACK_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;	
}


//Wraith Suits

static function X2AbilityTemplate WraithSuit_ArmorStats()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'WraithSuit_ArmorStats');
	// Template.IconImage  -- no icon needed for armor stats

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);
	
	// light armor has dodge and mobility as well as health
	//
	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	// PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, default.MediumPlatedHealthBonusName, default.MediumPlatedHealthBonusDesc, Template.IconImage);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.WRAITH_SUIT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.WRAITH_SUIT_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.WRAITH_SUIT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.WRAITH_SUIT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.WRAITH_SUIT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.WRAITH_SUIT_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.WRAITH_SUIT_DETECTIONRADIUSMODIFER);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	
	return Template;	
}


static function X2AbilityTemplate TrojanWraith_ArmorStats()
{
	local X2AbilityTemplate                 Template;	
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'TrojanWraith_ArmorStats');
	// Template.IconImage  -- no icon needed for armor stats

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);
	
	// light armor has dodge and mobility as well as health
	//
	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	// PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, default.MediumPlatedHealthBonusName, default.MediumPlatedHealthBonusDesc, Template.IconImage);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, default.TROJAN_WRAITH_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense, default.TROJAN_WRAITH_DEFENCE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation, default.TROJAN_WRAITH_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance, default.TROJAN_WRAITH_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.TROJAN_WRAITH_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge, default.TROJAN_WRAITH_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.TROJAN_WRAITH_DETECTIONRADIUSMODIFER);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking, default.TROJAN_WRAITH_HACK_BONUS);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;	
}
