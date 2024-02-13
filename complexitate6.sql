--DROP PROCEDURE GetTotalSpentOnEventsInRange;

CREATE PROCEDURE GetTotalSpentOnEventsInRange
    @p_StartYear INT,
    @p_EndYear INT
AS
BEGIN
    SELECT
        V.VisitorID,
        V.FirstName + ' ' + V.LastName AS FullName,
        V.Email,
        SUM(PC.TicketPrice) AS TotalSpentOnEvents,
		YEAR(ET.PurchaseDate) AS PurchaseYear
    FROM
        Visitors V
        JOIN EventTickets ET ON V.VisitorID = ET.VisitorID -- 1
        JOIN PriceCategories PC ON ET.PriceID = PC.PriceID -- 2 
        JOIN Events E ON ET.EventID = E.EventID -- 3
    WHERE
        YEAR(ET.PurchaseDate) BETWEEN @p_StartYear AND @p_EndYear -- 4
    GROUP BY
        V.VisitorID, V.FirstName, V.LastName, V.Email, YEAR(ET.PurchaseDate) --5
	HAVING SUM(PC.TicketPrice) > 0 --6
    ORDER BY
         PurchaseYear DESC, TotalSpentOnEvents DESC;
END;


/*
SELECT
    V.VisitorID,
    V.FirstName + ' ' + V.LastName AS FullName,
    V.Email,
    SUM(PC.TicketPrice) AS TotalSpentOnEvents,
	YEAR(ET.PurchaseDate) AS PurchaseYear
FROM
    Visitors V
    JOIN EventTickets ET ON V.VisitorID = ET.VisitorID
    JOIN PriceCategories PC ON ET.PriceID = PC.PriceID
    JOIN Events E ON ET.EventID = E.EventID
WHERE
    YEAR(ET.PurchaseDate) BETWEEN 2023 AND 2027
GROUP BY
    V.VisitorID, V.FirstName, V.LastName, V.Email, YEAR(ET.PurchaseDate)
HAVING SUM(PC.TicketPrice) > 0
ORDER BY
        PurchaseYear DESC, TotalSpentOnEvents DESC;
*/