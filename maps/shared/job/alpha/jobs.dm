/datum/map/alpha
	allowed_jobs = list(
						/datum/job/soh_captain,
						/datum/job/soh_hop,
						/datum/job/soh_hos,
						/datum/job/soh_exec,
						/datum/job/soh_saa,
						/datum/job/soh_maa,
						/datum/job/soh_engineer,
						/datum/job/soh_voidkeeper,
						/datum/job/soh_voidseer,
						/datum/job/soh_qm,
						/datum/job/soh_cargo_tech,
						/datum/job/soh_cargo_phys,
						/datum/job/soh_undertaker,
						/datum/job/soh_medassist,
						/datum/job/soh_bartender,
						/datum/job/soh_janitor,
						/datum/job/soh_chef,
						/datum/job/soh_servant,
						/datum/job/soh_vagrant
						)




/////////
// Command
/////////
//Cap
/datum/job/soh_captain
	title = "Bailiff"
	supervisors = "your wits, wealth and Mother-Fleet"
	selection_color = "#1C6060"
	minimal_player_age = 0
	economic_modifier = 10
	ideal_character_age = 65
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/magistrate
	social_class = SOCIAL_CLASS_MAX
	department_flag = SPT
	sex_lock = MALE


	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(6,9), rand(9,11), rand(10,12))
		H.generate_stats(STAT_HT)
		H.generate_skills()


//HoP
/datum/job/soh_hop
	title = "Boatswain"
	supervisors = "the Bailiff"
	selection_color = "#1C6060"
	minimal_player_age = 0
	economic_modifier = 5
	ideal_character_age = 45
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/adjoint
	department_flag = SPT
	social_class = SOCIAL_CLASS_HIGH
	sex_lock = MALE

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(6,9), rand(9,11), rand(10,12))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("melee","ranged","medical"))


/////////
// Sec
/////////
//HoS
/datum/job/soh_hos
	title = "Overseer"
	supervisors = "the Fleet and your own fat-fucking coffers"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	selection_color = "#601c1c"
	economic_modifier = 5
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/security/head_peacekeeper
	social_class = SOCIAL_CLASS_HIGH

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(12,18), rand(10,16), rand(8,12))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


//Commissar
/datum/job/soh_exec
	title = "Executor"
	supervisors = "the Fleet's Values"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	selection_color = "#601c1c"
	economic_modifier = 5
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/security/head_peacekeeper
	social_class = SOCIAL_CLASS_HIGH

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(12,18), rand(10,16), rand(8,12))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


//Marines
/datum/job/soh_saa
	title = "Sergeant-at-Arms"
	department = "Security"
	department_flag = SEC
	total_positions = 3
	spawn_positions = 4
	economic_modifier = 3
	selection_color = "#601c1c"
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/security/peacekeeper

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))

// Man-At-Arms
/datum/job/soh_maa
	title = "Man-at-Arms"
	department = "Security"
	department_flag = SEC
	total_positions = 3
	spawn_positions = 4
	economic_modifier = 3
	selection_color = "#601c1c"
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/security/peacekeeper

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


/////////
//  Cult of Tech | Engineering
/////////
// Techno-Cult Leader

/datum/job/soh_voidkeeper
	title = "Tech-Cult Voidlock"
	supervisors = "the Voidlock"
	selection_color = "#60601C"
	minimal_player_age = 0
	economic_modifier = 3
	ideal_character_age = 21
	total_positions = 3
	spawn_positions = 3
	//alt_titles = null
	sex_lock = MALE
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/inge/inge
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(10,15), rand(7,10), rand(9,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("crafting","engineering"))



// Techno-Cultist
/datum/job/soh_engineer
	title = "Tech-Cult Engineer"
	supervisors = "the Voidlock"
	selection_color = "#60601C"
	minimal_player_age = 0
	economic_modifier = 3
	ideal_character_age = 21
	total_positions = 3
	spawn_positions = 3
	//alt_titles = null
	sex_lock = MALE
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/inge/inge
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(10,15), rand(7,10), rand(9,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("crafting","engineering"))

// Techno-Cultist
/datum/job/soh_voidseer
	title = "Tech-Cult Voidseer"
	supervisors = "the Voidlock"
	selection_color = "#60601C"
	minimal_player_age = 0
	economic_modifier = 3
	ideal_character_age = 21
	total_positions = 3
	spawn_positions = 3
	//alt_titles = null
	sex_lock = MALE
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/inge/inge
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(10,15), rand(7,10), rand(9,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("crafting","engineering"))


/////////
// Commerce Guild | Supply
/////////
// Commerce Guild Guildmaster
/datum/job/soh_qm
	selection_color = "#3d3315"
	title = "Guildmaster"
	supervisors = "Personal Profit"
	minimal_player_age = 0
	economic_modifier = 3
	ideal_character_age = 30
	total_positions = 1
	spawn_positions = 2
	department_flag = SUP

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(8,12), rand(9,12), rand(7,10))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","engineering", "mining"))


// Commerce Guild Merchant.
/datum/job/soh_cargo_tech
	selection_color = "#7c6a2e"
	title = "Merchant"
	supervisors = "the Guildmaster"
	minimal_player_age = 0
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 1
	spawn_positions = 1
	access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,12), rand(9,12), rand(6,9))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","engineering", "mining"))


// Commerce Guild Enforcer
/datum/job/soh_cargo_phys
	selection_color = "#7c6a2e"
	title = "Enforcer"
	supervisors = "the Guildmaster and Merchants"
	minimal_player_age = 0
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 4
	spawn_positions = 4
	access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,12), rand(9,12), rand(6,9))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","engineering", "mining"))


/////////
// Medical
/////////
//Ph
/datum/job/soh_undertaker
	title = "Physician"
	selection_color = "#382238"
	department = "Medical"
	department_flag = MED
	sex_lock = MALE
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/medical/undertaker
	access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox, access_chemistry, access_virology, access_cmo, access_surgery, access_maint_tunnels)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox, access_chemistry, access_virology, access_cmo, access_surgery, access_maint_tunnels)

/datum/job/undertaker/equip(var/mob/living/carbon/human/H)
	..()
	H.generate_stats(STAT_IQ)
	H.generate_skills(list("medical","cleaning", "surgery"))


//BC
/datum/job/soh_medassist
	selection_color = "#633d63"
	title = "Bonecutter"
	supervisors = "the Physician"
	minimal_player_age = 0
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = MED
	department = "Medical"
	access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox,
			access_chemistry, access_virology, access_cmo, access_surgery)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox,
			access_chemistry, access_virology, access_cmo, access_surgery)
	outfit_type = /decl/hierarchy/outfit/job/medassist.

	equip(var/mob/living/carbon/human/H)
//		H.set_species("Child")//Actually makes them a child. Called before ..() so they can get their clothes.
		H.add_stats(rand(3,6), rand(12,16), rand(6,9))
		H.generate_skills(list("medical","cleaning", "surgery"))
		..()

//Janitor
/datum/job/soh_janitor
	title = "Corpser"
	supervisors = "the Sacred Oath"
	minimal_player_age = 0
	economic_modifier = 1
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	selection_color = "#515151"
	department_flag = SRV
	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,12), rand(9,12), rand(5,9))
		H.generate_stats(STAT_HT)
		H.generate_skills(list("medical","cleaning", "surgery"))

/////////
// Civil
/////////
//Brothel Keeper
/datum/job/soh_bartender
	title = "Proprietor"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Bailiff"
	selection_color = "#515151"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_bar)
	outfit_type = /decl/hierarchy/outfit/job/service/bartender
	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("cooking","ranged"))


//Entertainer
/datum/job/soh_servant
	title = "Endebted"
	supervisors = "the Proprietor"
	minimal_player_age = 0
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 1
	spawn_positions = 1
	selection_color = "#515151"
	minimal_access = list(access_bar, access_kitchen, access_hydroponics)
	department_flag = SRV
	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("cooking","melee"))



//Chef
/datum/job/soh_chef
	title = "Headsman"
	supervisors = "Proprietor"
	minimal_player_age = 0
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 1
	spawn_positions = 1
	selection_color = "#515151"
	minimal_access = list(access_bar, access_kitchen, access_hydroponics)
	department_flag = SRV
	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("cooking","melee"))



/////////
// Misc
/////////
//Vagrant
/datum/job/soh_vagrant
	title = "Vagrant"
	supervisors = "Your own morals and belief in the Bailiff"
	minimal_player_age = 0
	economic_modifier = 1
	ideal_character_age = 21
	alt_titles = null
	social_class = SOCIAL_CLASS_MIN
	total_positions = 0
	department_flag = CIV
	spawn_positions = 1
	selection_color = "#515151"
	access = list(access_maint_tunnels)
	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,11), rand(9,11), rand(7,10))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","melee","cleaning","mining"))
