CREATE TABLE [dbo].[bor] (
    [PersonID]  BIGINT NOT NULL,
    [AdresseID] BIGINT NOT NULL,
    CONSTRAINT [pk_bor] PRIMARY KEY CLUSTERED ([PersonID] ASC, [AdresseID] ASC),
    CONSTRAINT [fk_bor] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([PersonID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [fk_bor2] FOREIGN KEY ([AdresseID]) REFERENCES [dbo].[Adresse] ([AdresseID])
);

