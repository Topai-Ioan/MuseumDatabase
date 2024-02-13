--DROP PROCEDURE GetArtworkCountsPerGenre;

CREATE PROCEDURE GetArtworkCountsPerGenre
    @numberOfArts INT
AS
BEGIN
    SELECT
        AR.ArtistName,
        G.GenreName,
        COUNT(A.ArtworkID) AS ArtworkCount
    FROM
        Artworks A
        JOIN Artists AR ON A.ArtistID = AR.ArtistID -- 1
        JOIN Genres G ON A.GenreID = G.GenreID -- 2
    GROUP BY
        AR.ArtistID, G.GenreID, AR.ArtistName, G.GenreName -- 3
    HAVING
        COUNT(A.ArtworkID) > @numberOfArts -- 4
    ORDER BY
        AR.ArtistID, G.GenreID;
END;

/*
SELECT
    AR.ArtistName,
    G.GenreName,
    COUNT(A.ArtworkID) AS ArtworkCount
FROM
    Artworks A
    JOIN Artists AR ON A.ArtistID = AR.ArtistID
    JOIN Genres G ON A.GenreID = G.GenreID
GROUP BY
    AR.ArtistID, G.GenreID, AR.ArtistName, G.GenreName
HAVING
    COUNT(A.ArtworkID) > 1
ORDER BY
    AR.ArtistID, G.GenreID;

*/

