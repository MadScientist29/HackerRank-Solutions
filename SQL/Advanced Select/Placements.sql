SELECT s.Name AS Student_Name
FROM Students s
JOIN Friends f ON s.ID = f.ID
JOIN Packages p ON s.ID = p.ID
JOIN Packages p2 ON f.Friend_ID = p2.ID
WHERE p.Salary < p2.Salary
ORDER BY p2.Salary ASC;