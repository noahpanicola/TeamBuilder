DROP TABLE IF EXISTS `ChartObject`, `TeamChart`, `LayoutObject`, `UserRole`, `Layout`, `Team`, `Role`, `AppUser`, `AppSettings`;

CREATE TABLE `AppSettings`(
    `ID` int auto_increment,
	`Category` varchar(40),
	`SettingName` varchar(40),
	`SettingValue` varchar(100),
    `Description` varchar(100),
	`GuiDisplay` boolean,
    `DataType` int,
    PRIMARY KEY(`ID`)
);

CREATE TABLE `AppUser`(
    `ID` int auto_increment,
	`FirstName` varchar(40),
	`LastName` varchar(40),
	`DateCreated` DATE,
	`UserImage` varchar(100),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `Role`(
    `ID` int auto_increment,
	`Title` varchar(40),
    `AuthLevel` int,
    `CreateTeamAccess` boolean,
    `EditTeamAccess` boolean,
    PRIMARY KEY(`ID`)
);

CREATE TABLE `Team`(
    `ID` int auto_increment,
	`Name` varchar(40),
    `Type` varchar(40),
    `TeamImage` varchar(100),
    `Description` varchar(100),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `Layout`(
    `ID` int auto_increment,
	`Name` varchar(40),
    `Title` varchar(100),
    `ObjectCount` int,
    `BackgroundColor` varchar(100),
    `BackgroundImage` varchar(100),
    `Description` varchar(100),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `UserRole`(
    `ID` int auto_increment,
	`UserID` int,
    `RoleID` int,
    `Login` varchar(60),
    `Email` varchar(60),
    `Password` varchar(200),
    `IsActive` boolean,
    FOREIGN KEY(`UserID`) REFERENCES `AppUser`(`ID`),
    FOREIGN KEY(`RoleID`) REFERENCES `Role`(`ID`),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `LayoutObject`(
    `ID` int auto_increment,
	`LayoutID` int,
    `ObjectNumber` int,
    `Width` decimal,
    `Height` decimal,
    `Top` decimal,
    `Left` decimal,
    `BackgroundImage` varchar(100),
    `BackgroundColor` varchar(100),
    `Shape` varchar(40),
    `Description` varchar(100),
    FOREIGN KEY(`LayoutID`) REFERENCES `Layout`(`ID`),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `TeamChart` (
    `ID` int auto_increment,
    `Name` varchar(40),
    `TeamID` int,
    `PlacedCount` int,
    `Description` varchar(100),
    FOREIGN KEY(`TeamID`) REFERENCES `Team`(`ID`),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `UserRoleTeam`(
    `ID` int auto_increment,
    `TeamID` int,
    `UserRoleID` int,
    `Position` varchar(40),
    FOREIGN KEY(`TeamID`) REFERENCES `Team`(`ID`),
    FOREIGN KEY(`UserRoleID`) REFERENCES `UserRole`(`ID`),
    PRIMARY KEY(`ID`)
);

CREATE TABLE `ChartObject`(
    `ID` int auto_increment,
    `TeamChartID` int,
    `LayoutObjectID` int,
    `UserRoleID` int,
    FOREIGN KEY(`TeamChartID`) REFERENCES `TeamChart`(`ID`),
    FOREIGN KEY(`LayoutObjectID`) REFERENCES `LayoutObject`(`ID`),
    FOREIGN KEY(`UserRoleID`) REFERENCES `UserRole`(`ID`),
    PRIMARY KEY(`ID`)
);