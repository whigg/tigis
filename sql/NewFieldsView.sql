CREATE VIEW VIEW_FIELDS_NEW AS
SELECT
	A.FIELD_ID AS "FIELD_ID",
	A.LOWX AS "LOW_X",
	A.HIX AS "HI_X",
	A.LOWY AS "LOW_Y",
	A.HIY AS "HI_Y",
	A.AREA AS "FIELD_AREA",
	B.NAME AS "CROP_NAME",
	B.START_OF_SEASON AS "CROP_START",
	B.END_OF_SEASON AS "CROP_END",
	A.OWNER AS "OWNER",
	A.AREA_ID AS "AREA_ID",
	C.IMAGE_PATH AS "OWNER_IMAGE",
	B.IMAGE_PATH AS "CROP_IMAGE"
	FROM S1783947.FF_FIELDS_NEW A
	LEFT JOIN S1783947.VIEW_CROP_COMB B ON A.CROP = B.CROP
	LEFT JOIN S1783947.FF_FARMERS C ON A.OWNER = C.FARMER_NAME
	ORDER BY A.FIELD_ID;