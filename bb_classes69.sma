/*================================================================================
	
	-----------------------------------
	-*- [BB] Default Zombie Classes -*-
	-----------------------------------
	
	~~~~~~~~~~~~~~~
	- Description -
	~~~~~~~~~~~~~~~
	
	This plugin adds the default zombie classes from Zombie Plague
	into Base Builder. All credit belongs to MeRcyLeZZ.
	
	All classes have been balanced, but feel free to edit them if
	you are not satisfied.
	
================================================================================*/

#include <amxmodx>
#include <basebuilder>
#include <hamsandwich>
#include <fun>
#include <cstrike>

/*================================================================================
 [Plugin Customization]
=================================================================================*/

// Classic Zombie Attributes
new const zclass1_name[] = { "Classic" }
new const zclass1_info[] = { "HP:3500 SP:270 JM:0.8 \r[Free]" }
new const zclass1_model[] = { "classiczm" }
new const zclass1_clawmodel[] = { "v_classiczm" }
const zclass1_health = 3500
const zclass1_speed = 270
const Float:zclass1_gravity = 0.8
const zclass1_adminflags = ADMIN_ALL

// Tanker Attributes
new const zclass2_name[] = { "Tanker" }
new const zclass2_info[] = { "HP:4500 SP:210 JM:1.0 \r[Free]" }
new const zclass2_model[] = { "tankerzm" }
new const zclass2_clawmodel[] = { "v_tankerzm" }
const zclass2_health = 4500
const zclass2_speed = 210
const Float:zclass2_gravity = 1.0
const zclass2_adminflags = ADMIN_ALL

// Husk Attributes
new const zclass3_name[] = { "Husk" }
new const zclass3_info[] = { "HP:2700 SP:300 JM:0.8 \r[Free]" }
new const zclass3_model[] = { "huskzm" }
new const zclass3_clawmodel[] = { "v_huskzm" }
const zclass3_health = 2700
const zclass3_speed = 300
const Float:zclass3_gravity = 0.8
const zclass3_adminflags = ADMIN_ALL

// Doctor Attributes
new const zclass4_name[] = { "Doctor" }
new const zclass4_info[] = { "HP:4000 SP:280 JM:0.7 \r[Free]" }
new const zclass4_model[] = { "doctorzm" }
new const zclass4_clawmodel[] = { "v_doctorzm" }
const zclass4_health = 4000
const zclass4_speed = 280
const Float:zclass4_gravity = 0.7
const zclass4_adminflags = ADMIN_ALL

// Death Attributes
new const zclass5_name[] = { "Death" }
new const zclass5_info[] = { "HP:3500 SP:300 JM:0.5 \r[Helper]" }
new const zclass5_model[] = { "hairzm" }
new const zclass5_clawmodel[] = { "v_hairzm" }
const zclass5_health = 3500
const zclass5_speed = 300
const Float:zclass5_gravity = 0.5
const zclass5_adminflags = ADMIN_LEVEL_B

// Nemesis Attributes
new const zclass6_name[] = { "Nemesis" }
new const zclass6_info[] = { "HP:5500 SP:240 JM:0.9 \r[VIP]" }
new const zclass6_model[] = { "alienzm" }
new const zclass6_clawmodel[] = { "v_alienzm" }
const zclass6_health = 5500
const zclass6_speed = 240
const Float:zclass6_gravity = 0.9
const zclass6_adminflags = ADMIN_LEVEL_D

// Venom Attributes
new const zclass7_name[] = { "Venom" }
new const zclass7_info[] = { "HP:5200 SP:285 JM:0.6 \r[Admin]" }
new const zclass7_model[] = { "venomzm" }
new const zclass7_clawmodel[] = { "v_venomzm" }
const zclass7_health = 5200
const zclass7_speed = 285
const Float:zclass7_gravity = 0.6
const zclass7_adminflags = ADMIN_LEVEL_C

// Frost Attributes
new const zclass8_name[] = { "Frost" }
new const zclass8_info[] = { "HP:4800 SP:320 JM:0.5 \r[Mod]" }
new const zclass8_model[] = { "frostzm" }
new const zclass8_clawmodel[] = { "v_frostzm" }
const zclass8_health = 4800
const zclass8_speed = 320
const Float:zclass8_gravity = 0.5
const zclass8_adminflags = ADMIN_LEVEL_G

// Hunter Attributes
new const zclass9_name[] = { "Hunter" }
new const zclass9_info[] = { "HP:6000 SP:270 JM:2.00 \r[Owner]" }
new const zclass9_model[] = { "hunterzm" }
new const zclass9_clawmodel[] = { "v_hunterzm" }
const zclass9_health = 6000
const zclass9_speed = 270
const Float:zclass9_gravity = 2.0
const zclass9_adminflags = ADMIN_LEVEL_H


/*============================================================================*/

new g_zclass_tanker

// Zombie Classes MUST be registered on plugin_precache
public plugin_precache()
{
	register_plugin("[BB] Default Zombie Classes", "6.9", "Tirant")
	
	// Register all classes
	bb_register_zombie_class(zclass1_name, zclass1_info, zclass1_model, zclass1_clawmodel, zclass1_health, zclass1_speed, zclass1_gravity, 0.0, zclass1_adminflags)
	bb_register_zombie_class(zclass2_name, zclass2_info, zclass2_model, zclass2_clawmodel, zclass2_health, zclass2_speed, zclass2_gravity, 0.0, zclass2_adminflags)
	bb_register_zombie_class(zclass3_name, zclass3_info, zclass3_model, zclass3_clawmodel, zclass3_health, zclass3_speed, zclass3_gravity, 0.0, zclass3_adminflags)
	g_zclass_tanker = bb_register_zombie_class(zclass4_name, zclass4_info, zclass4_model, zclass4_clawmodel, zclass4_health, zclass4_speed, zclass4_gravity, 0.0, zclass4_adminflags)
        bb_register_zombie_class(zclass5_name, zclass5_info, zclass5_model, zclass5_clawmodel, zclass5_health, zclass5_speed, zclass5_gravity, 0.0, zclass5_adminflags)
        bb_register_zombie_class(zclass6_name, zclass6_info, zclass6_model, zclass6_clawmodel, zclass6_health, zclass6_speed, zclass6_gravity, 0.0, zclass6_adminflags)
        bb_register_zombie_class(zclass7_name, zclass7_info, zclass7_model, zclass7_clawmodel, zclass7_health, zclass7_speed, zclass7_gravity, 0.0, zclass7_adminflags)
        bb_register_zombie_class(zclass8_name, zclass8_info, zclass8_model, zclass8_clawmodel, zclass8_health, zclass8_speed, zclass8_gravity, 0.0, zclass8_adminflags)
        bb_register_zombie_class(zclass9_name, zclass9_info, zclass9_model, zclass9_clawmodel, zclass9_health, zclass9_speed, zclass9_gravity, 0.0, zclass9_adminflags)


}

#if defined TANK_ARMOR
public plugin_init()
{
	RegisterHam(Ham_Spawn, "player", "ham_PlayerSpawn_Post", 1)
}

public ham_PlayerSpawn_Post(id)
{
	if (!is_user_alive(id))
		return ;
		
	if (bb_is_user_zombie(id) && bb_get_user_zombie_class(id) == g_zclass_tanker)
	{
		give_item(id, "item_assaultsuit");
		cs_set_user_armor(id, TANK_ARMOR, CS_ARMOR_VESTHELM);
	}
}
#endif
