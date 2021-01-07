function onUpdateDatabase()
	print("> Updating database to version 12 (Player get daily reward)")
	db.query("ALTER TABLE `players` ADD `isreward` tinyint(1) NOT NULL DEFAULT '1'")
    print("> Updating database to version 12 (Magic Shield Spell)")
	db.query("ALTER TABLE `players` ADD `manashield` SMALLINT UNSIGNED NOT NULL DEFAULT '0' AFTER `skill_manaleech_amount`")
	db.query("ALTER TABLE `players` ADD `max_manashield` SMALLINT UNSIGNED NOT NULL DEFAULT '0' AFTER `manashield`")
	return true
end
