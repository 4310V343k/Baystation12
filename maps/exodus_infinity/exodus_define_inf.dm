
/datum/map/exodus_infinity
	name = "Infinity"
	full_name = "NSS Infinity"
	path = "exodus_infinity"

	lobby_icon = 'maps/exodus_infinity/exodus_lobby_inf.dmi'

	station_levels = list(1)
	admin_levels = list(2)
	contact_levels = list(1,3,5)
	player_levels = list(1,3,4,5,6)

	shuttle_docked_message = "��������������� ����� ��� ���������� ��������� �� �� �������� �������� � %Dock_name%. ����� ���������� ���������� ����� %ETD%"
	shuttle_leaving_dock = "��������, ����� ������� �������. ��������������� ����� �� �������� � ����� ����������: %ETA%. ����� ����������: %dock_name%."
	shuttle_called_message = "����� ��� ���������� ��������� ��� ������ ��� �������� �  %Dock_name%. ��������� ����� ��������: %ETA%"
	shuttle_recall_message = "����� ��� ���������� ������� ��� �������.."
	emergency_shuttle_docked_message = "��������� ������������� ����� �������� �������� �� ��������. � ��� ���� %ETD% ����� ������ �� ���� �������������� ������."
	emergency_shuttle_leaving_dock = "��������� ������������� ����� �������� ��������� ���������� � ������� �������. ����� �� ��������: %ETA%, ����� ����������: %dock_name%."
	emergency_shuttle_called_message = "��������� ������������� ����� ��� ������ �� ������� �������. ��������� ����� ��������: %ETA%"
	emergency_shuttle_recall_message = "��������� ������������� ����� ��� �������.."

	station_networks = list(
							NETWORK_CIVILIAN_EAST,
							NETWORK_CIVILIAN_WEST,
							NETWORK_COMMAND,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_ENGINEERING_OUTPOST,
							NETWORK_EXODUS,
							NETWORK_MEDICAL,
							NETWORK_MINE,
							NETWORK_RESEARCH,
							NETWORK_RESEARCH_OUTPOST,
							NETWORK_ROBOTS,
							NETWORK_PRISON,
							NETWORK_SECURITY,
							NETWORK_ALARM_ATMOS,
							NETWORK_ALARM_FIRE,
							NETWORK_ALARM_POWER,
							NETWORK_THUNDER,
							NETWORK_TELECOM,
							)

	evac_controller_type = /datum/evacuation_controller/pods/shuttle

/datum/map/exodus/perform_map_generation()
	new /datum/random_map/automata/cave_system(null,1,1,5,255,255) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null, 1, 1, 5, 64, 64)         // Create the mining ore distribution map.
	return 1
