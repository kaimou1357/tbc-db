-- Outrunner Alarion  - gossip
UPDATE creature_template SET GossipMenuId = 6573 WHERE entry = 15301;
DELETE FROM gossip_menu WHERE entry = 6573; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6573, 7788, 0, 0),
(6573, 7821, 0, 1004);
DELETE FROM conditions WHERE condition_entry IN (1002, 1003, 1004);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1004, -1, 1003, 1002),
(1003, 8, 8350, 0), 
(1002, 8, 9705, 0);
-- missing text added
DELETE FROM npc_text WHERE ID = 7821;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values
('7821','','Ah, $N - it is good to see you again.  I trust your affairs go well.','0','1','0','2','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');

-- Champion Sunstriker 
UPDATE creature_template SET EquipmentTemplateId = 108 WHERE Entry = 17812;

-- Champion Lightrend 
UPDATE creature_template SET EquipmentTemplateId = 110 WHERE Entry = 17810;

-- Champion Bloodwrath 
UPDATE creature_template SET EquipmentTemplateId = 109 WHERE Entry = 17809;


-- BACKPORTED UDB EQUIPMENT AND ASSIGNED TEMP ID FOR NOW
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('108','12950','0','0');
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('109','14535','0','0');
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('110','24034','24038','0');


