﻿--[[
	frFR translations for PhanxChat
	Contributed by Kyron - Halcyon (Auchindoun)
]]

if GetLocale() == "frFR" then PHANXCHAT_LOCALS = {

	CHANNEL_GENERAL			= "General",
	CHANNEL_TRADE				= "Trade",
	CHANNEL_LOCALDEFENSE		= "LocalDefense",
	CHANNEL_WORLDDEFENSE		= "WorldDefense",
	CHANNEL_LOOKINGFORGROUP		= "LookingForGroup",
	CHANNEL_GUILDRECRUITMENT		= "GuildRecruitment",

	WHO_QUERY_RESULT			= "^%|Hplayer:%w+|h%[(%w+)%]|h: Level %d+ %w+%s?[%w]* (%w+)%s?<?[^>]*>? %- .+$",

	SHORT_GENERAL 				= "G",
	SHORT_TRADE 				= "E",
	SHORT_LOCALDEFENSE 			= "DL",
	SHORT_WORLDDEFENSE 			= "DM",
	SHORT_LOOKINGFORGROUP		= "RDG",
	SHORT_GUILDRECRUITMENT		= "R",

	SHORT_SAY 				= "D",
	SHORT_YELL 				= "C",
	SHORT_GUILD 				= "G",
	SHORT_OFFICER 				= "O",
	SHORT_PARTY 				= "G",
	SHORT_RAID 				= "R",
	SHORT_RAID_LEADER 			= "RL",
	SHORT_RAID_WARNING 			= "AR",
	SHORT_BATTLEGROUND 			= "BG",
	SHORT_BATTLEGROUND_LEADER 	= "BGL",
	SHORT_WHISPER 				= "W",
	SHORT_WHISPER_INFORM 		= "W",

	["enabled"] = "Activer",
	["disabled"] = "Désactiver",

	["Use /pchat with the following commands:"] = "Utilisez /pchat avec les commandes suivantes：",

	["Hide the scroll buttons"] = "Cacher les boutons de défilement",
	["Button hiding %s."] = "Cacher les boutons de défilement %s.",

	["Shorten channel names and chat strings"] = "Raccourcir le nom des canaux",
	["Short channel names %s."] = "Nom des canaux raccourcis %s.",

	["Clear the window"] = "Nettoyer la fenêtre de chat",

	["Enable arrow keys in the edit box"] = "Activer les flèches dans la fenêtre de saisie",
	["Edit box arrow keys %s."] = "Flèches dans la fenêtre de saisie %s.",

	["Move the edit box above the window"] = "Déplacer la fenêtre de saisie au dessus du chat",
	["Edit box relocation %s."] = "Déplacement de la fenêtre de saisie %s.",

	["Set the text fade time in minutes (0 = disabled)"] = "Régler le délai du fondu du texte en minutes (0 = désactivé)",
	["Chat fading %s."] = "Fondu du texte %s.",
	["Chat fade time set to %d minutes."] = "Délai du fondu du texte réglé sur %d minutes.",
	["Fade time is currently set to %d minutes."] = "Le fondu est actuellement réglé sur %d minutes.",

	["Stop tabs from flashing"] = "Désactiver le flash des onglets",
	["Chat tab flash suppression %s."] = "Supression du flash de l'onglet %s",

	["Set the font size for all windows"] = "Régler la taille de la police pour toutes les fenêtres",
	["Chat font size set to %d."] = "Taille de la police du chat réglée sur %d.",

	["Start chat logging automatically"] = "Démarrer la sauvegarde du chat automatiquement",
	["Automatic chat logging %s."] = "Sauvegarde du chat automatique %s.",

	["Color player names by class if known"] = "Colorer le nom des joueurs par classe si connu",
	["Player name class coloring %s."] = "Noms des joueurs colorés par classe %s.",

	["Enable mousewheel scrolling"] = "Activer le défilement molette",
	["Mousewheel scrolling %s."] = "Défilement molette %s.",

	["Make more chat types sticky"] = "Rendre plus de canaux "collant"",
	["Sticky channels %s."] = "Canaux collants %s.",

--	["Suppress channel notification messages"] = "Suppress channel notification messages",
--	["Channel notice suppression %s."] = "Channel notice suppression %s.",

--	["Suppress repeated messages in public channels"] = "Suppress repeated messages in public channels",
--	["Repeated message suppression %s."] = "Repeated message suppression %s.",

	["Lock docked tabs in place (hold Alt to drag)"] = "Bloquer le déplacement des onglets (maintenir Alt pour déplacer)",
	["Chat tab locking %s."] = "Bloc du déplacement des onglets %s.",

	["Link URLs for easy copying"] = "URL clickables pour la copie facile",
	["URL linking %s."] = "URL Clickables %s.",

	["Version %d loaded."] = "Version %d chargée.",

} end