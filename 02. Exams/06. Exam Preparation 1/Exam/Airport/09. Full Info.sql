  SELECT [p].[FirstName] + ' ' + [p].[LastName] AS [Full Name],
         [p2].[Name] AS [Plane Name],
  	     [f].[Origin] + ' - ' + [f].[Destination] AS [Trip],
  	     [lt].[Type] AS [Luggage Type]
    FROM [dbo].[Passengers] AS p
    JOIN [dbo].[Tickets] AS [t] ON [p].[Id] = [t].[PassengerId]
    JOIN [dbo].[Flights] AS [f] ON [t].[FlightId] = [f].[Id]
    JOIN [dbo].[Luggages] AS [l] ON [t].[LuggageId] = [l].[Id]
    JOIN [dbo].[LuggageTypes] AS [lt] ON [l].[LuggageTypeId] = [lt].[Id]
    JOIN [dbo].[Planes] AS [p2] ON [f].[PlaneId] = [p2].[Id]
ORDER BY [Full Name], [Plane Name], [f].[Origin], [f].[Destination], [lt].[Type];