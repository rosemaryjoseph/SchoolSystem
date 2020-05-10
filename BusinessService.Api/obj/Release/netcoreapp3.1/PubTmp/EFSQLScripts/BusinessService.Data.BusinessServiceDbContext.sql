IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504070704_SchoolDb')
BEGIN
    CREATE TABLE [Grades] (
        [GradeId] int NOT NULL IDENTITY,
        [GradeName] nvarchar(max) NULL,
        [Division] nvarchar(max) NULL,
        CONSTRAINT [PK_Grades] PRIMARY KEY ([GradeId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504070704_SchoolDb')
BEGIN
    CREATE TABLE [Schools] (
        [SchoolID] int NOT NULL IDENTITY,
        [SchoolName] nvarchar(max) NULL,
        CONSTRAINT [PK_Schools] PRIMARY KEY ([SchoolID])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504070704_SchoolDb')
BEGIN
    CREATE TABLE [Students] (
        [StudentID] int NOT NULL IDENTITY,
        [SchoolID] int NOT NULL,
        [GradeId] int NOT NULL,
        [LastName] nvarchar(max) NULL,
        [FirstMidName] nvarchar(max) NULL,
        CONSTRAINT [PK_Students] PRIMARY KEY ([StudentID]),
        CONSTRAINT [FK_Students_Grades_GradeId] FOREIGN KEY ([GradeId]) REFERENCES [Grades] ([GradeId]) ON DELETE CASCADE,
        CONSTRAINT [FK_Students_Schools_SchoolID] FOREIGN KEY ([SchoolID]) REFERENCES [Schools] ([SchoolID]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504070704_SchoolDb')
BEGIN
    CREATE INDEX [IX_Students_GradeId] ON [Students] ([GradeId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504070704_SchoolDb')
BEGIN
    CREATE INDEX [IX_Students_SchoolID] ON [Students] ([SchoolID]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504070704_SchoolDb')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200504070704_SchoolDb', N'3.1.3');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200504072002_SchoolDbSecond')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200504072002_SchoolDbSecond', N'3.1.3');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200510133816_Final')
BEGIN
    ALTER TABLE [Students] DROP CONSTRAINT [FK_Students_Standards_StandardId];
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200510133816_Final')
BEGIN
    DECLARE @var0 sysname;
    SELECT @var0 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Students]') AND [c].[name] = N'GradeId');
    IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [Students] DROP CONSTRAINT [' + @var0 + '];');
    ALTER TABLE [Students] DROP COLUMN [GradeId];
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200510133816_Final')
BEGIN
    DROP INDEX [IX_Students_StandardId] ON [Students];
    DECLARE @var1 sysname;
    SELECT @var1 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Students]') AND [c].[name] = N'StandardId');
    IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [Students] DROP CONSTRAINT [' + @var1 + '];');
    ALTER TABLE [Students] ALTER COLUMN [StandardId] int NOT NULL;
    CREATE INDEX [IX_Students_StandardId] ON [Students] ([StandardId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200510133816_Final')
BEGIN
    ALTER TABLE [Students] ADD CONSTRAINT [FK_Students_Standards_StandardId] FOREIGN KEY ([StandardId]) REFERENCES [Standards] ([StandardId]) ON DELETE CASCADE;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200510133816_Final')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200510133816_Final', N'3.1.3');
END;

GO

