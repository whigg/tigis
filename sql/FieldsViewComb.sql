CREATE VIEW VIEW_FIELDS_COMB
AS
SELECT * FROM VIEW_FIELDS
UNION
SELECT * FROM VIEW_FIELDS_NEW;