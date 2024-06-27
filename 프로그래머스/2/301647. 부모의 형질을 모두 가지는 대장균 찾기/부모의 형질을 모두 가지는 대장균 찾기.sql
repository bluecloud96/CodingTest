WITH PARENT AS
(SELECT
    ID AS PARENT_ID,
    GENOTYPE AS PARENT_GENOTYPE
FROM
    ECOLI_DATA)
SELECT
    ECOLI_DATA.ID AS ID,
    ECOLI_DATA.GENOTYPE AS GENOTYPE,
    PARENT.PARENT_GENOTYPE
FROM
    ECOLI_DATA
LEFT JOIN
    PARENT
ON
    ECOLI_DATA.PARENT_ID = PARENT.PARENT_ID
WHERE
    ECOLI_DATA.GENOTYPE & PARENT.PARENT_GENOTYPE = PARENT.PARENT_GENOTYPE
ORDER BY
    1;

