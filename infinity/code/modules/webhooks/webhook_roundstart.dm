/decl/webhook/roundstart/get_message(var/list/data)
	. = ..()
	var/desc = "�����: [SSticker.master_mode]\n"
	desc += "���������� �������: [GLOB.player_list.len]"
//	desc += "."

	.["embeds"] = list(list(
		"title" = "����� ��������",
		"description" = desc,
		"color" = COLOR_WEBHOOK_DEFAULT
	))
