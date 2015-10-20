CREATE TABLE [dbo].[Adresse] (
    [AdresseID]  BIGINT         IDENTITY (1, 1) NOT NULL,
    [Type]       NVARCHAR (MAX) NOT NULL,
    [VejNavn]    NVARCHAR (MAX) NOT NULL,
    [HusNummer]  BIGINT         NOT NULL,
    [PostNummer] BIGINT         NOT NULL,
    [City]       NVARCHAR (MAX)   NOT NULL,
    CONSTRAINT [pk_Adresse] PRIMARY KEY CLUSTERED ([AdresseID] ASC)
);

