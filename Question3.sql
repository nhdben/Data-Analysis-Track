SELECT Track.Name as Name ,Track.Composer as Composer ,Album.Title as Title
FROM Track
INNER JOIN Album
On Album.Albumid = Track.Albumid
WHERE Name LIKE 'A%' AND Composer IS NOT NULL;