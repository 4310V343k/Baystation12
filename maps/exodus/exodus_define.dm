
/datum/map/exodus
	name = "Exodus"
	full_name = "NSS Exodus"
	path = "exodus"

	station_levels = list(1)
	admin_levels = list(2)
	contact_levels = list(1,3,5)
	player_levels = list(1,3,4,5,6)

	// Unit test exemptions
	exempt_areas = list(
		/area/medical/genetics = NO_APC,
		/area/engineering/atmos/storage = NO_SCRUBBER | NO_VENT,
		/area/server = NO_SCRUBBER
	)

	shuttle_docked_message = "��������������� ����� �� ��������� ������� �� %Dock_name% ������������� � �������. ����� ������ ����� �������������� ����� %ETD%."
	shuttle_leaving_dock = "��������������� ����� �� ��������� ������� ������� �������. ��������� ����� �� �������� ������ � %dock_name% ����� %ETA%."
	shuttle_called_message = "��� ������������ ����� �� ��������� ������� � %Dock_name%. ����� ��� ������. ��������� ����� �������� - %ETA%."
	shuttle_recall_message = "��������������� ����� �� ��������� ������� ��� ������."
	emergency_shuttle_docked_message = "������������� ����� ������������� � �������. � ��� ���� %ETD% �� ����� ������."
	emergency_shuttle_leaving_dock = "������������� ����� ������� �������. ��������� ����� �� �������� ������ � %dock_name% ����� %ETA%."
	emergency_shuttle_called_message = "������������� ����� ��� ��������. ��������� ����� �������� ����� %ETA%."
	emergency_shuttle_recall_message = "������������� ����� ��� �������."
