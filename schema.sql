DROP TABLE IF EXISTS consumable;
DROP TABLE IF EXISTS consumed;

CREATE TABLE consumable (
	id INT PRIMARY KEY AUTO_INCREMENT,
	upc TEXT NOT NULL,
	name TEXT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE consumed (
	id INT PRIMARY KEY AUTO_INCREMENT,
	atWhen DATETIME NOT NULL,
	consumable_id INT NOT NULL,
	FOREIGN KEY (consumable_id) REFERENCES consumable(id)  
) ENGINE=InnoDB;

