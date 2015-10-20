CREATE TABLE [dbo].[Person] (
    [PersonID]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [CPRNr]      BIGINT         NOT NULL,
    [Fornavn]    NVARCHAR (MAX) NOT NULL,
    [Mellemnavn] NVARCHAR (MAX) NULL,
    [Efternavn]  NVARCHAR (MAX) NOT NULL,
    [type]       NVARCHAR (MAX) NOT NULL,
    [AdresseID]  BIGINT         NOT NULL,
    CONSTRAINT [pk_Person] PRIMARY KEY CLUSTERED ([PersonID] ASC),
    CONSTRAINT [fk_Person] FOREIGN KEY ([AdresseID]) REFERENCES [dbo].[Adresse] ([AdresseID]) ON UPDATE CASCADE
);

