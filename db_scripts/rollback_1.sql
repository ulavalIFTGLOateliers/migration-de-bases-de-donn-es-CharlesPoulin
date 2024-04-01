ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer CHANGE COLUMN musicianName singerName VARCHAR(50);
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;
DROP TABLE IF EXISTS band;
ALTER TABLE album ADD CONSTRAINT singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);
ALTER TABLE album DROP FOREIGN KEY singerName;
