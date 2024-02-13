--DROP PROCEDURE GetCuratorPerformanceByYear;


CREATE PROCEDURE GetCuratorPerformanceByYear
    @p_Year INT
AS
BEGIN
	SELECT
		C.CuratorID,
		C.FirstName + ' ' + C.LastName AS CuratorName,
		COUNT(V.VisitorID) AS VisitorCount,
		SUM(ISNULL(PC.TicketPrice, 0)) AS TotalRevenue
	FROM
		Curators C
	JOIN (
		SELECT
			E.CuratorID,
			ET.VisitorID,
			ET.PriceID
		FROM
			Exhibits E
		JOIN ExhibitTickets ET ON E.ExhibitID = ET.ExhibitID -- 1
		WHERE YEAR(ET.PurchaseDate) = @p_Year -- 2

		UNION ALL

		SELECT
			Ev.CuratorID,
			ET.VisitorID,
			ET.PriceID
		FROM
			Events Ev
		JOIN EventTickets ET ON Ev.EventID = ET.EventID -- 1
		WHERE YEAR(ET.PurchaseDate) = @p_Year -- 2
	) NumberOfTotalVisitators ON C.CuratorID = NumberOfTotalVisitators.CuratorID -- 3, 4
	JOIN Visitors V ON NumberOfTotalVisitators.VisitorID = V.VisitorID -- 5
	JOIN PriceCategories PC ON NumberOfTotalVisitators.PriceID = PC.PriceID -- 6
	GROUP BY
		C.CuratorID, C.FirstName, C.LastName --7
	ORDER BY
		TotalRevenue DESC;

END;

/*

	SELECT
		C.CuratorID,
		C.FirstName + ' ' + C.LastName AS CuratorName,
		COUNT(V.VisitorID) AS VisitorCount,
		SUM(ISNULL(PC.TicketPrice, 0)) AS TotalRevenue
	FROM
		Curators C
	JOIN (
		SELECT
			E.CuratorID,
			ET.VisitorID,
			ET.PriceID
		FROM
			Exhibits E
		JOIN ExhibitTickets ET ON E.ExhibitID = ET.ExhibitID
		WHERE YEAR(ET.PurchaseDate) = 2023

		UNION ALL

		SELECT
			Ev.CuratorID,
			ET.VisitorID,
			ET.PriceID
		FROM
			Events Ev
		JOIN EventTickets ET ON Ev.EventID = ET.EventID
		WHERE YEAR(ET.PurchaseDate) = 2023
	) NumberOfTotalVisitators ON C.CuratorID = NumberOfTotalVisitators.CuratorID
	JOIN Visitors V ON NumberOfTotalVisitators.VisitorID = V.VisitorID
	JOIN PriceCategories PC ON NumberOfTotalVisitators.PriceID = PC.PriceID
	GROUP BY
		C.CuratorID, C.FirstName, C.LastName
	ORDER BY
		CuratorID DESC;

*/