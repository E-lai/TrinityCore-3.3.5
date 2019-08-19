--
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (28474, 28488, 28490, 29194, 29210);
UPDATE `creature` SET `modelid`=0, `spawntimesecs`=20 WHERE `id`=28490;
UPDATE `creature` SET `spawntimesecs`=20 WHERE id=28488;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28474, 28490, 28488, 29194, 29210) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2847400, 2847401, 2849000) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28474, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Reset - Set Immune To NPC+PC"),
(28474, 0, 1, 0, 1, 0, 100, 0, 5000, 20000, 970000, 980000, 0, 80, 2847400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - OOC - Run Actionlist"),
(29194, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Reset - Set Immune To NPC+PC"),
(29194, 0, 1, 0, 1, 0, 100, 0, 5000, 20000, 970000, 980000, 0, 80, 2847401, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - OOC - Run Actionlist"),
(28490, 0, 0, 0, 13, 0, 100, 0, 15000, 20000, 0, 0, 0, 11, 53550, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Victim Casting - Cast 'Mind Freeze'"),
(28490, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 15000, 20000, 0, 11, 50349, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - In Combat - Cast 'Icy Touch'"),
(28490, 0, 2, 0, 0, 1, 100, 0, 16000, 16000, 30000, 40000, 0, 11, 51209, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - In Combat - Cast 'Hungering Cold' (Phase 1)"),
(28490, 0, 3, 0, 0, 1, 100, 0, 27000, 27000, 30000, 40000, 0, 11, 53536, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - In Combat - Cast 'Howling Blast' (Phase 1)"),
(28490, 0, 4, 5, 25, 0, 100, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Reset - Set Immune To NPC+PC"),
(28490, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Reset - Set Run Off"),
(28490, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 2, 2104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Reset - Set Faction"),
(28490, 0, 7, 8, 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 19, 28474, 50, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Death - Say Line 5 (Amal'thazad)"),
(28490, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 19, 29194, 50, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Death - Say Line 5 (Amal'thazad)"),
(28490, 0, 9, 10, 5, 0, 100, 0, 0, 0, 0, 28488, 0, 1, 6, 0, 0, 0, 0, 0, 19, 28474, 50, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Killed Coldwraith - Say Line 6 (Amal'thazad)"),
(28490, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 19, 29194, 50, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Killed Coldwraith - Say Line 6 (Amal'thazad)"),
(28490, 0, 11, 12, 5, 0, 100, 0, 0, 0, 0, 29210, 0, 1, 6, 0, 0, 0, 0, 0, 19, 28474, 50, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Killed Frigid Bones - Say Line 6 (Amal'thazad)"),
(28490, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 19, 29194, 50, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Killed Frigid Bones - Say Line 6 (Amal'thazad)"),
(28490, 0, 13, 0, 34, 0, 100, 0, 0, 1, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0.58552, "Disciple of Frost - On Point 1 Reached - Set Orientation"),
(28490, 0, 14, 0, 34, 0, 100, 0, 0, 2, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 3.82097, "Disciple of Frost - On Point 2 Reached - Set Orientation"),
(28490, 0, 15, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 2414.7710, -5532.0576, 377.0268, 0, "Disciple of Frost - On Data 1 1 Set - Move To Pos"),
(28490, 0, 16, 17, 38, 0, 100, 0, 2, 2, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Data 2 2 Set - Remove Immune To NPC+PC"),
(28490, 0, 17, 18, 61, 0, 100, 0, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Data 2 2 Set - Set Run On"),
(28490, 0, 18, 19, 61, 0, 100, 0, 0, 0, 0, 0, 0, 2, 2081, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Data 2 2 Set - Set Faction"),
(28490, 0, 19, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 28488, 10, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Data 2 2 Set - Attack Coldwraith"),
(28490, 0, 20, 0, 38, 0, 100, 0, 3, 3, 0, 0, 0, 80, 2849000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Data 3 3 Set - Run Actionlist"),
(28490, 0, 21, 0, 38, 0, 100, 0, 4, 4, 0, 0, 0, 69, 2, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 2422.0012, -5527.2939, 377.0545, 0, "Disciple of Frost - On Data 4 4 Set - Move To Pos"),
(28488, 0, 0, 0, 0, 0, 100, 0, 1000, 2000, 4000, 5000, 0, 11, 15043, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, "Coldwraith - In Combat - Cast 'Frostbolt'"),
(28488, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 11, 53539, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Coldwraith - On Respawn - Cast Spell"),
(28488, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Coldwraith - On Reset - Set Run Off"),
(28488, 0, 3, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 2422.0012, -5527.2939, 377.0545, 0, "Coldwraith - On Data 1 1 Set - Move To Pos"),
(28488, 0, 4, 0, 38, 0, 100, 0, 2, 2, 0, 0, 0, 69, 2, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 2414.7710, -5532.0576, 377.0268, 0, "Coldwraith - On Data 2 2 Set - Move To Pos"),
(28488, 0, 5, 0, 34, 0, 100, 0, 0, 1, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 3.82097, "Coldwraith - On Point 1 Reached - Set Orientation"),
(28488, 0, 6, 0, 34, 0, 100, 0, 0, 2, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0.58552, "Coldwraith - On Point 2 Reached - Set Orientation"),
(29210, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, 11, 53539, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Frigid Bones - On Just Summoned - Cast Spell"),
(29210, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 49, 1, 0, 0, 0, 0, 0, 19, 28490, 4, 0, 0, 0, 0, 0, 0, "Frigid Bones - On Just Summoned - Attack Disciple of Frost"),
(2847400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 128535, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 1 1 (Disciple of Frost)"),
(2847400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 128525, 28488, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 1 1 (Coldwraith)"),
(2847400, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 128535, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 2 2 (Disciple of Frost)"),
(2847400, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 1"),
(2847400, 9, 5, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 2"),
(2847400, 9, 6, 0, 0, 0, 100, 0, 240000, 245000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847400, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 128538, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 1 1 (Disciple of Frost)"),
(2847400, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 10, 128538, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 3 3 (Disciple of Frost)"),
(2847400, 9, 9, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 3"),
(2847400, 9, 10, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 4"),
(2847400, 9, 11, 0, 0, 0, 100, 0, 240000, 245000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847400, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 4, 4, 0, 0, 0, 0, 10, 128540, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 4 4 (Disciple of Frost)"),
(2847400, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 128526, 28488, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 2 2 (Coldwraith)"),
(2847400, 9, 14, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 128540, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 2 2 (Disciple of Frost)"),
(2847400, 9, 15, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 1"),
(2847400, 9, 16, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 2"),
(2847400, 9, 17, 0, 0, 0, 100, 0, 240000, 245000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847400, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 4, 4, 0, 0, 0, 0, 10, 128542, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 4 4 (Disciple of Frost)"),
(2847400, 9, 19, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 10, 128542, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 3 3 (Disciple of Frost)"),
(2847400, 9, 20, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 3"),
(2847400, 9, 21, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 4"),
(2847401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847401, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 125858, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 1 1 (Disciple of Frost)"),
(2847401, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 125841, 28488, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 1 1 (Coldwraith)"),
(2847401, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 125858, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 2 2 (Disciple of Frost)"),
(2847401, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 1"),
(2847401, 9, 5, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 2"),
(2847401, 9, 6, 0, 0, 0, 100, 0, 240000, 245000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847401, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 125856, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 1 1 (Disciple of Frost)"),
(2847401, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 10, 125856, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 3 3 (Disciple of Frost)"),
(2847401, 9, 9, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 3"),
(2847401, 9, 10, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 4"),
(2847401, 9, 11, 0, 0, 0, 100, 0, 240000, 245000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847401, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 4, 4, 0, 0, 0, 0, 10, 125857, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 4 4 (Disciple of Frost)"),
(2847401, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 125842, 28488, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 2 2 (Coldwraith)"),
(2847401, 9, 14, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 125857, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 2 2 (Disciple of Frost)"),
(2847401, 9, 15, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 1"),
(2847401, 9, 16, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 2"),
(2847401, 9, 17, 0, 0, 0, 100, 0, 240000, 245000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 0"),
(2847401, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 45, 4, 4, 0, 0, 0, 0, 10, 125859, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 4 4 (Disciple of Frost)"),
(2847401, 9, 19, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 10, 125859, 28490, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Set Data 3 3 (Disciple of Frost)"),
(2847401, 9, 20, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 3"),
(2847401, 9, 21, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Amal'thazad - On Script - Say Line 4"),
(2849000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Script - Set Event Phase 1"),
(2849000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Script - Remove Immune To NPC+PC"),
(2849000, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 11, 53525, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Script - Cast 'Summon Frigid Bones"),
(2849000, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 53525, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Script - Cast 'Summon Frigid Bones"),
(2849000, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 53525, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, "Disciple of Frost - On Script - Cast 'Summon Frigid Bones");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=28490;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 12, 28490, 0, 0, 29, 1, 29210, 50, 0, 1, 0, 0, "", "Run SAI only if there are no alive 'Frigid Bones' nearby"),
(22, 13, 28490, 0, 0, 29, 1, 29210, 50, 0, 1, 0, 0, "", "Run SAI only if there are no alive 'Frigid Bones' nearby");

DELETE FROM `creature_text` WHERE `CreatureID` IN (28474, 29194);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(28474, 0, 0, "Step forth disciple. Show me what you have learned.", 12, 0, 100, 0, 0, 0, 29664, 0, "Amal'thazad"),
(28474, 0, 1, "It is time for your learning to be put to the test. Step forth.", 12, 0, 100, 0, 0, 0, 29667, 0, "Amal'thazad"),
(28474, 0, 2, "Do not let the ice in your blood slow your step. Prove your prowess, disciple.", 12, 0, 100, 0, 0, 0, 29668, 0, "Amal'thazad"),
(28474, 0, 3, "You have stood and listened long enough. Step forth.", 12, 0, 100, 0, 0, 0, 29669, 0, "Amal'thazad"),
(28474, 0, 4, "Prove that you understand my teachings, disciple.", 12, 0, 100, 0, 0, 0, 29670, 0, "Amal'thazad"),
(28474, 0, 5, "It is time for your challenge disciple. Use my teachings well.", 12, 0, 100, 0, 0, 0, 29671, 0, "Amal'thazad"),
(28474, 1, 0, "Its spells would be less threatening if its incantations were slowed by your icy touch...", 12, 0, 100, 0, 0, 0, 29665, 0, "Amal'thazad"),
(28474, 2, 1, "Do not let it consider its next spell so freely, disciple... freeze its mind.", 12, 0, 100, 0, 0, 0, 29666, 0, "Amal'thazad"),
(28474, 3, 0, "You are not overwhelmed just yet disciple... let the hungering cold of death halt this onslaught.", 12, 0, 100, 0, 0, 0, 29673, 0, "Amal'thazad"),
(28474, 4, 1, "Frozen solid, ripe for the slaughter. Let loose a howling blast and shatter them into pieces, disciple.", 12, 0, 100, 0, 0, 0, 29674, 0, "Amal'thazad"),
(28474, 5, 0, "Do not be frightened child... welcome the cold embrace of death...", 12, 0, 100, 0, 0, 0, 29836, 0, "Amal'thazad"),
(28474, 5, 1, "Such is the price of failure.", 12, 0, 100, 0, 0, 0, 29837, 0, "Amal'thazad"),
(28474, 5, 2, "Death is the reward for your weakness.", 12, 0, 100, 0, 0, 0, 29838, 0, "Amal'thazad"),
(28474, 5, 3, "Your retention was poor.", 12, 0, 100, 0, 0, 0, 29839, 0, "Amal'thazad"),
(28474, 6, 0, "Well done.", 12, 0, 100, 0, 0, 0, 29840, 0, "Amal'thazad"),
(28474, 6, 1, "You have more learning ahead of you disciple. Return to your studies.", 12, 0, 100, 0, 0, 0, 29841, 0, "Amal'thazad"),
(28474, 6, 2, "You have learned well. Continue on your path, disciple.", 12, 0, 100, 0, 0, 0, 29842, 0, "Amal'thazad"),
(28474, 6, 3, "A good start. Return, disciple.", 12, 0, 100, 0, 0, 0, 29844, 0, "Amal'thazad"),
(29194, 0, 0, "Step forth disciple. Show me what you have learned.", 12, 0, 100, 0, 0, 0, 29664, 0, "Amal'thazad"),
(29194, 0, 1, "It is time for your learning to be put to the test. Step forth.", 12, 0, 100, 0, 0, 0, 29667, 0, "Amal'thazad"),
(29194, 0, 2, "Do not let the ice in your blood slow your step. Prove your prowess, disciple.", 12, 0, 100, 0, 0, 0, 29668, 0, "Amal'thazad"),
(29194, 0, 3, "You have stood and listened long enough. Step forth.", 12, 0, 100, 0, 0, 0, 29669, 0, "Amal'thazad"),
(29194, 0, 4, "Prove that you understand my teachings, disciple.", 12, 0, 100, 0, 0, 0, 29670, 0, "Amal'thazad"),
(29194, 0, 5, "It is time for your challenge disciple. Use my teachings well.", 12, 0, 100, 0, 0, 0, 29671, 0, "Amal'thazad"),
(29194, 1, 0, "Its spells would be less threatening if its incantations were slowed by your icy touch...", 12, 0, 100, 0, 0, 0, 29665, 0, "Amal'thazad"),
(29194, 2, 1, "Do not let it consider its next spell so freely, disciple... freeze its mind.", 12, 0, 100, 0, 0, 0, 29666, 0, "Amal'thazad"),
(29194, 3, 0, "You are not overwhelmed just yet disciple... let the hungering cold of death halt this onslaught.", 12, 0, 100, 0, 0, 0, 29673, 0, "Amal'thazad"),
(29194, 4, 1, "Frozen solid, ripe for the slaughter. Let loose a howling blast and shatter them into pieces, disciple.", 12, 0, 100, 0, 0, 0, 29674, 0, "Amal'thazad"),
(29194, 5, 0, "Do not be frightened child... welcome the cold embrace of death...", 12, 0, 100, 0, 0, 0, 29836, 0, "Amal'thazad"),
(29194, 5, 1, "Such is the price of failure.", 12, 0, 100, 0, 0, 0, 29837, 0, "Amal'thazad"),
(29194, 5, 2, "Death is the reward for your weakness.", 12, 0, 100, 0, 0, 0, 29838, 0, "Amal'thazad"),
(29194, 5, 3, "Your retention was poor.", 12, 0, 100, 0, 0, 0, 29839, 0, "Amal'thazad"),
(29194, 6, 0, "Well done.", 12, 0, 100, 0, 0, 0, 29840, 0, "Amal'thazad"),
(29194, 6, 1, "You have more learning ahead of you disciple. Return to your studies.", 12, 0, 100, 0, 0, 0, 29841, 0, "Amal'thazad"),
(29194, 6, 2, "You have learned well. Continue on your path, disciple.", 12, 0, 100, 0, 0, 0, 29842, 0, "Amal'thazad"),
(29194, 6, 3, "A good start. Return, disciple.", 12, 0, 100, 0, 0, 0, 29844, 0, "Amal'thazad");

UPDATE `creature_addon` SET `auras`="" WHERE `guid`= 128526;
