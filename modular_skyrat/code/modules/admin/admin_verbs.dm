/world/AVerbsAdmin()
	return list(
	/client/proc/invisimin,				/*allows our mob to go invisible/visible*/
//	/datum/admins/proc/show_traitor_panel,	/*interface which shows a mob's mind*/ -Removed due to rare practical use. Moved to debug verbs ~Errorage
	/datum/admins/proc/show_player_panel,	/*shows an interface for individual players, with various links (links require additional flags*/
	/datum/verbs/menu/Admin/verb/playerpanel,
	/client/proc/game_panel,			/*game panel, allows to change game-mode etc*/
	/client/proc/check_ai_laws,			/*shows AI and borg laws*/
	/datum/admins/proc/toggleooc,		/*toggles ooc on/off for everyone*/
	/datum/admins/proc/toggleooclocal,	/*toggles looc on/off for everyone*/
	/datum/admins/proc/toggleoocdead,	/*toggles ooc on/off for everyone who is dead*/
	/datum/admins/proc/toggleaooc,		/*toggles antag ooc on/off*/
	/datum/admins/proc/toggleenter,		/*toggles whether people can join the current game*/
	/datum/admins/proc/toggleguests,	/*toggles whether guests can join the current game*/
	/datum/admins/proc/announce,		/*priority announce something to all clients.*/
	/datum/admins/proc/set_admin_notice, /*announcement all clients see when joining the server.*/
	/client/proc/admin_ghost,			/*allows us to ghost/reenter body at will*/
	/client/proc/toggle_view_range,		/*changes how far we can see*/
	/client/proc/getserverlogs,		/*for accessing server logs*/
	/client/proc/cmd_admin_subtle_message,	/*send an message to somebody as a 'voice in their head'*/
	/client/proc/cmd_admin_headset_message,	/*send an message to somebody through their headset as CentCom*/
	/client/proc/cmd_admin_delete,		/*delete an instance/object/mob/etc*/
	/client/proc/cmd_admin_check_contents,	/*displays the contents of an instance*/
	/client/proc/centcom_podlauncher,/*Open a window to launch a Supplypod and configure it or it's contents*/
	/client/proc/check_antagonists,		/*shows all antags*/
	/datum/admins/proc/access_news_network,	/*allows access of newscasters*/
	/client/proc/jumptocoord,			/*we ghost and jump to a coordinate*/
	/client/proc/getcurrentlogs,		/*for accessing server logs for the current round*/
	/client/proc/Getmob,				/*teleports a mob to our location*/
	/client/proc/Getkey,				/*teleports a mob with a certain ckey to our location*/
//	/client/proc/sendmob,				/*sends a mob somewhere*/ -Removed due to it needing two sorting procs to work, which were executed every time an admin right-clicked. ~Errorage
	/client/proc/jumptoarea,
	/client/proc/jumptokey,				/*allows us to jump to the location of a mob with a certain ckey*/
	/client/proc/jumptomob,				/*allows us to jump to a specific mob*/
	/client/proc/jumptoturf,			/*allows us to jump to a specific turf*/
	/client/proc/admin_call_shuttle,	/*allows us to call the emergency shuttle*/
	/client/proc/admin_cancel_shuttle,	/*allows us to cancel the emergency shuttle, sending it back to centcom*/
	/client/proc/cmd_admin_direct_narrate,	/*send text directly to a player with no padding. Useful for narratives and fluff-text*/
	/client/proc/cmd_admin_world_narrate,	/*sends text to all players with no padding*/
	/client/proc/cmd_admin_local_narrate,	/*sends text to all mobs within view of atom*/
	/client/proc/cmd_admin_man_up, //CIT CHANGE - adds man up verb
	/client/proc/cmd_admin_man_up_global, //CIT CHANGE - ditto
	/client/proc/cmd_admin_create_centcom_report,
	/client/proc/cmd_change_command_name,
	/client/proc/cmd_admin_check_player_exp, /* shows players by playtime */
	/client/proc/toggle_combo_hud, // toggle display of the combination pizza antag and taco sci/med/eng hud
	/client/proc/toggle_AI_interact, /*toggle admin ability to interact with machines as an AI*/
	/client/proc/open_shuttle_manipulator, /* Opens shuttle manipulator UI */
	/client/proc/respawn_character,
	/client/proc/secrets,
	/client/proc/toggle_hear_radio,		/*allows admins to hide all radio output*/
	/client/proc/reload_admins,
	/client/proc/reestablish_db_connection, /*reattempt a connection to the database*/
	/client/proc/cmd_admin_pm_context,	/*right-click adminPM interface*/
	/client/proc/cmd_admin_pm_panel,		/*admin-pm list*/
	/client/proc/panicbunker,
	/client/proc/addbunkerbypass,
	/client/proc/revokebunkerbypass,
	/client/proc/stop_sounds,
	/client/proc/hide_verbs,			/*hides all our adminverbs*/
	/client/proc/hide_most_verbs,		/*hides all our hideable adminverbs*/
	/datum/admins/proc/open_borgopanel,
	/client/proc/cmd_loud_admin_say
	)

GLOBAL_LIST_INIT(admin_verbs_hideable, list(
	/client/proc/cmd_admin_dress,
	/client/proc/cmd_admin_gib_self,
	/client/proc/drop_bomb,
	/client/proc/reestablish_db_connection,
	/client/proc/cmd_admin_check_contents,
	/client/proc/reload_admins,
	/client/proc/edit_admin_permissions,
	/client/proc/addbunkerbypass,
	/client/proc/revokebunkerbypass,
	/proc/possess,
	/proc/release,
	/client/proc/reload_configuration,
	/client/proc/manual_play_web_sound,
	/client/proc/stop_sounds,
	/client/proc/create_poll,
	/client/proc/set_dynex_scale,
	/client/proc/drop_dynex_bomb,
	/client/proc/cinematic,
	/client/proc/one_click_antag,
	/datum/admins/proc/toggleooclocal,
	/datum/admins/proc/toggleaooc,
	/client/proc/cmd_admin_add_freeform_ai_law,
	/client/proc/object_say,
	/client/proc/toggle_random_events,
	/client/proc/set_ooc,
	/client/proc/reset_ooc,
	/client/proc/forceEvent,
	/client/proc/admin_change_sec_level,
	/client/proc/toggle_nuke,
	/client/proc/run_weather,
	/client/proc/mass_zombie_infection,
	/client/proc/mass_zombie_cure,
	/client/proc/polymorph_all,
	/client/proc/show_tip,
	/client/proc/smite,
	/datum/admins/proc/podspawn_atom,
	/datum/admins/proc/access_news_network,	
	/client/proc/cmd_admin_direct_narrate,
	/client/proc/cmd_admin_create_centcom_report,
	/client/proc/cmd_change_command_name,
	/client/proc/cmd_admin_world_narrate,
	/client/proc/cmd_admin_local_narrate,
	/client/proc/toggle_AI_interact,
	/client/proc/cmd_admin_subtle_message,
	/client/proc/cmd_admin_headset_message,
	/client/proc/admin_away,
	/client/proc/restart_controller,
	/client/proc/cmd_admin_list_open_jobs,
	/client/proc/generate_wikichem_list,
	/client/proc/Debug2,
	/client/proc/cmd_debug_make_powernets,
	/client/proc/cmd_debug_mob_lists,
	/client/proc/cmd_admin_delete,
	/client/proc/cmd_debug_del_all,
	/client/proc/centcom_podlauncher,
	/client/proc/restart_controller,
	/client/proc/enable_debug_verbs,
	/client/proc/callproc,
	/client/proc/callproc_datum,
	/client/proc/SDQL2_query,
	/client/proc/test_movable_UI,
	/client/proc/test_snap_UI,
	/client/proc/debugNatureMapGenerator,
	/client/proc/check_bomb_impacts,
	/proc/machine_upgrade,
	/client/proc/populate_world,
	/client/proc/get_dynex_power,
	/client/proc/get_dynex_range,
	/client/proc/set_dynex_scale,
	/client/proc/cmd_display_del_log,
	/client/proc/create_outfits,
	/client/proc/modify_goals,
	/client/proc/debug_huds,
	/client/proc/map_template_load,
	/client/proc/map_template_upload,
	/client/proc/jump_to_ruin,
	/datum/admins/proc/toggledynamicvote,
	/client/proc/clear_dynamic_transit,
	/client/proc/toggle_medal_disable,
	/client/proc/view_runtimes,
	/client/proc/pump_random_event,
	/client/proc/cmd_display_init_log,
	/client/proc/cmd_display_overlay_log,
	/datum/admins/proc/create_or_modify_area,
	/datum/admins/proc/startnow,
	/datum/admins/proc/restart,
	/datum/admins/proc/end_round,
	/datum/admins/proc/delay,
	/datum/admins/proc/toggleenter,
	/datum/admins/proc/toggleguests,
	/datum/admins/proc/toggleaban,
	/client/proc/everyone_random,
	/datum/admins/proc/toggleAI,
	/client/proc/cmd_debug_del_all,
	/client/proc/toggle_random_events,
	/client/proc/forcerandomrotate,
	/client/proc/adminchangemap,
	/client/proc/panicbunker,
	/client/proc/toggle_hub,
	/client/proc/game_panel,
	/client/proc/open_shuttle_manipulator,
	/client/proc/check_ai_laws,
	/datum/admins/proc/toggleooc,
	/datum/admins/proc/toggleoocdead,
	/datum/admins/proc/announce,
	/datum/admins/proc/set_admin_notice,
	/client/proc/respawn_character,
	/client/proc/toggle_view_range,
	/client/proc/getserverlogs,
	/client/proc/getcurrentlogs,
	/datum/admins/proc/spawn_atom,
	/datum/admins/proc/spawn_cargo,
	/datum/admins/proc/spawn_objasmob,
	/client/proc/cmd_admin_delete,
	/client/proc/play_local_sound,
	/client/proc/play_sound,
	/client/proc/set_round_end_sound,
	/client/proc/togglebuildmodeself,
	/client/proc/jumptocoord,
	/client/proc/Getmob,
	/client/proc/Getkey,
	/client/proc/jumptoarea,
	/client/proc/jumptokey,
	/client/proc/jumptoturf,
	/client/proc/stealth,
	/client/proc/roll_dices,
	/datum/admins/proc/toggleMulticam,
	/client/proc/cmd_admin_man_up, //CIT CHANGE - adds man up verb
	/client/proc/cmd_admin_man_up_global //CIT CHANGE - ditto
	))


/client/proc/cmd_loud_admin_say(msg as text)
	set category = "Special Verbs"
	set name = "loudAsay"
	set hidden = 1
	if(!check_rights(0))
		return

	msg = copytext_char(sanitize(msg), 1, MAX_MESSAGE_LEN)
	if(!msg)
		return
	msg = emoji_parse(msg)
	mob.log_talk(msg, LOG_ASAY)

	msg = keywords_lookup(msg)
	msg = "<span class='command_headset'> <span class='adminsay'><span class='prefix'>ADMIN:</span> <EM>[key_name(usr, 1)]</EM> [ADMIN_FLW(mob)]: <span class='message linkify'>[msg]</span></span></span>"
	to_chat(GLOB.admins, msg)

	for(var/client/X in GLOB.admins)
		if(X.prefs.toggles & SOUND_ADMINHELP)
			SEND_SOUND(X, sound('modular_skyrat/sound/effects/duckhonk.ogg'))
		window_flash(X, ignorepref = TRUE)

	SSblackbox.record_feedback("tally", "admin_verb", 1, "loudAsay") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/add_admin_verbs()
	GLOB.admin_verbs_fun |= /client/proc/fax_panel
	GLOB.admin_verbs_hideable |= /client/proc/fax_panel
	. = ..()
