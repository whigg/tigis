CREATE VIEW VIEW_FINDS
AS
SELECT
	A.FIND_ID AS "OBJECT_ID",
	A.XCOORD AS "X",
	A.YCOORD AS "Y",
	A.DEPTH AS "DEPTH",
	A.FIELD_NOTES AS "FIELD_NOTES",
	B.NAME AS "TYPE",
	B.PERIOD AS "PERIOD",
	B.USE AS "USE",
	1 AS "AREA_ID",
	C.COLOUR AS "COLOUR",
	D.IMAGE_PATH AS "FIND_IMAGE"
	FROM GISTEACH.FINDS A
	LEFT JOIN GISTEACH.CLASS B ON A.TYPE = B.TYPE
	LEFT JOIN S1783947.FF_FIND_COLOUR C ON B.TYPE = C.TYPE_ID
	LEFT JOIN S1783947.FF_FIND_IMAGES D ON A.FIND_ID = D.FIND_ID
	ORDER BY A.FIND_ID;