/decl/webhook/server_start
	id = WEBHOOK_SEND_BAN

/decl/webhook/server_start/get_message(var/list/data)
	. = ..()

	if(!data["bantype"])
		.["content"] = "��� ������ ���� ��������� � ����, �� ��� �� ������ ������ �������."
		return
	var/setter = list(
		"name" = "�������������",
		"value" = data["setter"],
		"inline" = 1
	)
	var/banned = list(
		"name" = "�������",
		"value" = data["banned"],
		"inline" = 1
	)
	var/reason = list(
		"name" = "�������",
		"value" = data["reason"]
	)
	var/list/desc = list(
		"color" = COLOR_WEBHOOK_BAN,
		"footer" = list(
			"icon_url" = "https://cdn.discordapp.com/emojis/244791612268347392.png?v=1",	// :inf: emoji
			"text" = "�� ������������ ���������� � #������_������"
		),
		"thumbnail" = list(
			"url" = "https://cdn.discordapp.com/emojis/314350489020137474.png?v=1"			// :ban: emoji
		)
	)
	switch(data["bantype"])
		if(BANTYPE_PERMA)
			desc.Add(list(
				"title" = "������������ ����������",
				"description" = "������������ ��� ������� ��������",
				"fields" = list(
					banned, setter, reason
				)
			))
		if(BANTYPE_TEMP)
			var/duration = list(
				"name" = "������������",
				"value" = data["duration"]
			)
			desc.Add(list(
				"title" = "��������� ����������",
				"description" = "������������ ��� ������� �� �����",
				"fields" = list(
					banned, setter, duration, reason
				)
			))
		if(BANTYPE_JOB_PERMA)
			var/banned_jobs = list(
				"name" = "��������������� ���������",
				"value" = data["banned_jobs"],
				"inline" = 1
			)
			desc.Add(list(
				"title" = "������������ ���������� ���������",
				"description" = "������������ �������� ������� ��� ����",
				"fields" = list(
					banned, setter, banned_jobs, reason
				)
			))
		if(BANTYPE_JOB_TEMP)
			var/duration = list(
				"name" = "������������",
				"value" = data["duration"],
				"inline" = 1
			)
			var/banned_jobs = list(
				"name" = "��������������� ���������",
				"value" = data["banned_jobs"],
				"inline" = 1
			)
			desc.Add(list(
				"title" = "��������� ���������� ���������",
				"description" = "������������ ������� ��� ���� �� �����",
				"fields" = list(
					banned, setter, duration, banned_jobs, reason
				)
			))
	.["embeds"] = list(desc)
