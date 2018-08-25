/datum/map/sierra
	shuttle_called_message = "�������� ����� ���������: �������� ��������� ���������� � ����������� � ��������� ������. ��������� ����&#255; ��������&#255; ���&#255;��� ���������� �����������������: %ETA%."
	shuttle_docked_message = "�������� ����� ���������: ���������� � ����������� ���������. ������ ��������� ���������� ��������� �������������&#255;. ��������� ����&#255; �� �����������: %ETD%."
	shuttle_leaving_dock = "�������� ����� ���������: ����������� �����. ��������� ����&#255; ������ �� �����������������: %ETA%."
	shuttle_recall_message = "�������� ����� ���������: ��������� ���������� � ����������� ��������. ������������� � ���������� ����� ������� ��&#255;���������."

	emergency_shuttle_called_message = "�������� ����� ���������: ������ ��������� ��������� ��������� �����. ��������� ����&#255; ������������� ������������ ������: %ETA%."
	emergency_shuttle_docked_message = "�������� ����� ���������: ������������ ������� ��������������. � ��� ���� %ETD% ����� ���&#255;�� ����� � ������������ ��������."
	emergency_shuttle_leaving_dock = "�������� ����� ���������: ��������&#255; ���������� ������������ ������. ��������� ����&#255; �������&#255; �� ������ ������� ������: %ETA%"
	emergency_shuttle_called_message = "�������� ����� ���������: ��������&#255; ��������� ��������. ������������� � ���������� ����� ������� ��&#255;���������."
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	command_report_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45)

	grid_check_message = "���������� ���������&#255; � ������ ���������� %STATION_NAME%. ���������� �������� ��������� ��&#255; ����������."
	grid_check_sound = sound('sound/AI/torch/poweroff.ogg', volume = 45)

	grid_restored_message = "���������� ������� %STATION_NAME% ���� ���&#255;���� �� ���������� ���������."
	grid_restored_sound = sound('sound/AI/torch/poweron.ogg', volume = 45)

	meteor_detected_message = "�������� ����� ���������, ���������� ��������� ��&#255;�� �� ����� %STATION_NAME%. �����&#255;������ ������������&#255; ������ � ����� ������&#255; �� ������ �� ������� ����."
	meteor_detected_sound = sound('sound/AI/torch/meteors.ogg', volume = 45)

	radiation_detected_message = "������������� ��������� �����&#255; �������� ���������� %STATION_NAME%. ����� ��������� �����&#255;������ ������������&#255; ������ � �������������� ����������� ��������&#255; ��� ������ �� ��������&#255; ���� ���������� ���������������."
	radiation_detected_sound = sound('sound/AI/torch/radiation.ogg', volume = 45)

	space_time_anomaly_sound = sound('sound/AI/torch/spanomalies.ogg', volume = 45)

	unknown_biological_entities_message = "����������� ������������� �������� ���������� � ����������� ������������ %STATION_NAME%."

	unidentified_lifesigns_message = "���������� �����������&#255; ����� ����� �� ����� %STATION_NAME%. ������������&#255; ������������� ��� ������� ����� � ��������� �������� ����������� �����."
	unidentified_lifesigns_sound = sound('sound/AI/torch/aliens.ogg', volume = 45)

	xenomorph_spawn_sound = sound('sound/AI/torch/aliens.ogg', volume = 45)

	electrical_storm_moderate_sound = sound('sound/AI/torch/electricalstormmoderate.ogg', volume = 45)
	electrical_storm_major_sound = sound('sound/AI/torch/electricalstormmajor.ogg', volume = 45)

/datum/map/sierra/level_x_biohazard_sound(var/bio_level)
	switch(bio_level)
		if(7)
			return sound('sound/AI/torch/outbreak7.ogg', volume = 45)
		else
			return sound('sound/AI/torch/outbreak5.ogg', volume = 45)
