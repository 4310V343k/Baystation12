/proc/to_world_ban(var/bantype = null, var/setter = "", var/banned = "", var/reason = "", var/duration = null, var/banned_jobs)
	if(isnull(bantype)) return

	var/reason_public = reason
	reason = sql_sanitize_text(reason)
//	reason = sanitize_a0(reason)

	switch(bantype)
		if(BANTYPE_PERMA)
			to_world(SPAN_NOTICE("<b>BAN: ������������� [setter] [SPAN_DANGER("�����������")] ������������(�) ������ [banned]. �������: \"[reason_public]\"</b>"))
			send2adminlogirc("BAN: ������������� [setter] ����������� ������������(�) ������ [banned]. �������: \"[reason]\"")
		if(BANTYPE_TEMP)
			to_world(SPAN_NOTICE("<b>BAN: ������������� [setter] �������� ������������(�) ������ [banned]. �������: \"[reason_public]\"; ���� - [duration] �����.</b>"))
			send2adminlogirc("BAN: ������������� [setter] �������� ������������(�) ������ [banned]. �������: \"[reason]\"; ���� - [duration] �����.")
		if(BANTYPE_JOB_PERMA)
			to_world(SPAN_NOTICE("<b>JOB-BAN: ������������� [setter] [SPAN_DANGER("�����������")] ������������(�) ���� ([banned_jobs]) ������ [banned]. �������: \"[reason_public]\"</b>"))
			send2adminlogirc("������������� [setter] ����������� ������������(�) ���� ([banned_jobs]) ������ [banned]. �������: \"[reason]\"")
		if(BANTYPE_JOB_TEMP)
			to_world(SPAN_NOTICE("<b>JOB-BAN: ������������� [setter] �������� ������������(�) ���� ([banned_jobs]) ������ [banned]. �������: \"[reason_public]\"; ���� - [duration] �����.</b>"))
			send2adminlogirc("������������� [setter] �������� ������������(�) ���� ([banned_jobs]) ������ [banned]. �������: \"[reason]\"; ���� - [duration] �����.")
