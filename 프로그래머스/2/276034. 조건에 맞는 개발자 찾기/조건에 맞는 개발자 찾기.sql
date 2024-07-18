-- 코드를 작성해주세요
SELECT DISTINCT(ID),
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM
    DEVELOPERS as d
JOIN (
    SELECT *
    FROM SKILLCODES
    WHERE name = "Python" or name = "C#") as s
ON (d.skill_code &s.code) = s.code
ORDER BY id