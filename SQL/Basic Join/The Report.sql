SELECT 
    CASE 
        WHEN s.marks >= 70 THEN s.name 
        ELSE NULL 
    END AS student_name, LEAST(FLOOR(s.marks / 10) + 1, 10) AS grade, s.marks
FROM students s
ORDER BY grade DESC, 
    CASE 
        WHEN grade >= 8 THEN name 
        ELSE NULL 
    END ASC, 
    CASE 
        WHEN grade < 8 THEN marks 
        ELSE NULL 
    END ASC;