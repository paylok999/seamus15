--[[
Quest_Reward_Ep10.lua
[ Start  ] 	2011.07.18
[ Latest ]	2011-09-29 3:51 PM
[ Version ]	0.0.0.2
[ Text ]	����Ʈ ������ ���ڵ��� �ʴ� ���� ����
[ Line ]	47 - 57								
--]]
--================================================================================================================
function Quest_Reward_Window_Ep10(iObjIndex)

	--local LuaQuestClass = QuestExpLuaBind()

	--********************************************--
	--Ask_Index �䱸���� DB������ bit���� �� ���� �Ѵ�.(���� �ְ� ����...)
	-- DB: Name,EP,QS,Ask_index-Value-Complete Ask_index-Complete .....
	--0x00 0 00000000
	--g_LuaBind:SetQuestMonsterKill(EP,QS,Ask_Index ,monsterIndex,KillCnt)
	--g_LuaBind:SetQuestMonsterKill(1, 2, 0x1, 27, 3)--��������3������ƶ�
	
	--�������� �������°�?
	--ItemType = 14 ItemIndex = 3 ItemLevel = 0 dur = 3 ItemSkill = 0 ItemCnt = 5 Overlap = 1
	--LuaQuestClass:SetQuestRewardItem(Ep1, 67, ItemType, ItemIndex, ItemLevel, dur, ItemSkill, ItemCnt, Overlap)--ū ġ�� ���� 15��
	
	--������Ʈ �ɼ� �ٶ� �������ڷ� ����մϴ�.
	--ItemType = 4 ItemIndex = 8 ItemLevel = 3 dur = 0 ItemSkill = 1 ItemCnt = 1 Overlap = 0 ExOpt = ExOpt1 + ExOpt2 + ExOpt3 + ExOpt4 + ExOpt5 + ExOpt6
	--LuaQuestClass:SetQuestRewardItem(Ep1, 40, ItemType, ItemIndex, ItemLevel, dur, ItemSkill, ItemCnt, Overlap, ExOpt)--����+3

	--�ɼ� �߰� ��������
	--ItemType = 4 ItemIndex = 8 ItemLevel = 3 dur = 0 ItemSkill = 1 ItemCnt = 1 Overlap = 0 Opt = Opt4 / Opt8 / Opt12 / Opt16
	--LuaQuestClass:SetQuestRewardItem(Ep1, 40, ItemType, ItemIndex, ItemLevel, dur, ItemSkill, ItemCnt, Overlap, Opt)--�ɼ��߰�

	--********************************************--
	local ItemType = 0
	local ItemIndex = 0 
	local ItemLevel = 0 
	local dur = 0 
	local ItemSkill = 0 
	local ItemCnt = 0
	local Overlap = 0 	-- �������� �������°�?
	local Opt	= 0
	local ExOpt	= 0
	
---------------------------------------------------------------------------------------------------------------------

LuaQuestClass:SetQuestProgress(ASK1, Ep10, 2)

	ItemType = 13 ItemIndex = 149 ItemLevel = 0 ItemCnt = 1 							-- �Ķ��� ��ũ
	LuaQuestClass:SetQuestDropItem(Ep10, 1, ASK1, 557, 100, ItemType, ItemIndex, ItemLevel, ItemCnt)		-- ������
	
	ItemType = 13 ItemIndex = 149 ItemLevel = 0 ItemSkill = 0 ItemCnt = 10 Opt = 0 ExOpt = 0
	LuaQuestClass:SetQuestGetItem(ASK1, Ep10, 1, ItemType, ItemIndex, ItemLevel, ItemSkill, ItemCnt, Opt, ExOpt)	-- �Ķ��� ��ũ 10��
	
	LuaQuestClass:SetQuestRewardZen(Ep10, 1, 1000000)

LuaQuestClass:SetQuestProgress(ASK1, Ep10, 5)	
	
	ItemType = 13 ItemIndex = 151 ItemLevel = 0 ItemCnt = 1 							-- ������ ������
	LuaQuestClass:SetQuestDropItem(Ep10, 4, ASK1, 562, 100, ItemType, ItemIndex, ItemLevel, ItemCnt)		-- ��ũ�Ÿӵ�
	
	ItemType = 13 ItemIndex = 151 ItemLevel = 0 ItemSkill = 0 ItemCnt = 1 Opt = 0 ExOpt = 0
	LuaQuestClass:SetQuestGetItem(ASK1, Ep10, 4, ItemType, ItemIndex, ItemLevel, ItemSkill, ItemCnt, Opt, ExOpt)	-- ������ ������
	
	ItemType = 13 ItemIndex = 157 ItemLevel = 0 dur = 0 ItemSkill = 0 ItemCnt = 1 
	LuaQuestClass:SetQuestRewardItem(Ep10, 4, ItemType, ItemIndex, ItemLevel, dur, ItemSkill, ItemCnt)		-- ���ε� �Ķ� ������ �η縶��
end
--================================================================================================================	
	