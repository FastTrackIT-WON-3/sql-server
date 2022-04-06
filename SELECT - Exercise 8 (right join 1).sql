SELECT
		pers.*
FROM
		[dbo].[Employee] AS emp
		RIGHT JOIN [dbo].[Person] AS pers ON pers.PersonId = emp.EmployeeId
WHERE
		emp.EmployeeId IS NULL;


