INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_doj','doj', 1),
	('society_doj1','doj1', 1),
	('society_doj2','doj2', 1),
	('society_doj3','doj3', 1)
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_doj','doj', 1),
	('society_doj1','doj1', 1),
	('society_doj2','doj2', 1),
	('society_doj3','doj3', 1)
;

INSERT INTO `jobs`(`name`, `label`, `whitelisted`) VALUES
	('doj', 'DOJ', 1),
	('offdoj', 'DOJ-OFFDUTY', 1) 
;

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(101, 'doj', 0, 'recrue', 'Rekrut', 400, '{}', '{}'),
(102, 'doj', 1, 'novice', 'Kadeciok', 450, '{}', '{}'),
(103, 'doj', 2, 'novice', 'Oficer', 500,  '{}', '{}'),
(104, 'doj', 3, 'novice', 'Sierzant', 550,  '{}', '{}'),
(105, 'doj', 4, 'novice', 'Kapitan', 750,  '{}', '{}'),
(106, 'doj', 5, 'novice', 'Sekretarz', 850,  '{}', '{}'),
(107, 'doj', 6, 'boss', 'Asystent Szefa', 950, '{}', '{}'),
(108, 'doj', 7, 'boss', 'Zastępca Szefa', 1050,  '{}', '{}'),
(109, 'doj', 8, 'boss', 'Szef', 1150,  '{}', '{}'),
(111, 'offdoj', 0, 'recrue', 'Rekrut', 400, '{}', '{}'),
(112, 'offdoj', 1, 'novice', 'Kadeciok', 400, '{}', '{}'),
(113, 'offdoj', 2, 'novice', 'Oficer', 400,  '{}', '{}'),
(114, 'offdoj', 3, 'novice', 'Sierzant', 400,  '{}', '{}'),
(115, 'offdoj', 4, 'novice', 'Kapitan', 400,  '{}', '{}'),
(116, 'offdoj', 5, 'novice', 'Sekretarz', 400,  '{}', '{}'),
(117, 'offdoj', 6, 'boss', 'Asystent Szefa', 400, '{}', '{}'),
(118, 'offdoj', 7, 'boss', 'Zastępca Szefa', 400,  '{}', '{}'),
(119, 'offdoj', 8, 'boss', 'Szef', 400, '{}', '{}')
;
