INSERT INTO `AppDatabase`.`AppSettings` (`ID`, `Category`, `SettingName`, `SettingValue`, `Description`, `GuiDisplay`, `DataType`) VALUES (NULL, 'Main', 'WebsiteTitle', 'Test Website', NULL, '1', '4');
INSERT INTO `AppDatabase`.`AppSettings` (`ID`, `Category`, `SettingName`, `SettingValue`, `Description`, `GuiDisplay`, `DataType`) VALUES (NULL, 'Main', 'RootUrl', 'Test Website', NULL, '1', '4');
INSERT INTO `AppDatabase`.`AppSettings` (`ID`, `Category`, `SettingName`, `SettingValue`, `Description`, `GuiDisplay`, `DataType`) VALUES (NULL, 'Authentication', 'RequireAuthentication', '0', NULL, '1', '4');

INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Noah', 'Panicola', '2017-07-13', 'Images/TestImage1.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Grace', 'Panicola', '2017-07-13', 'Images/TestImage2.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Jojo', 'Harig', '2017-07-13', 'Images/TestImage3.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Carter', 'Nea', '2017-07-13', 'Images/TestImage4.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Connor', 'Theisman', '2017-07-13', 'Images/TestImage1.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Berrick', 'Wahby', '2017-07-13', 'Images/TestImage2.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Xander', 'Neve', '2017-07-13', 'Images/TestImage3.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Eric', 'Meyer', '2017-07-13', 'Images/TestImage4.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Andy', 'Stroebel', '2017-07-13', 'Images/TestImage2.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Logan', 'Zick', '2017-07-13', 'Images/TestImage3.png');
INSERT INTO `AppDatabase`.`AppUser` (`ID`, `FirstName`, `LastName`, `DateCreated`, `UserImage`) VALUES (NULL, 'Justin', 'Klingl', '2017-07-13', 'Images/TestImage4.png');

INSERT INTO `AppDatabase`.`Role` (`ID`, `Title`, `AuthLevel`, `CreateTeamAccess`, `EditTeamAccess`) VALUES (NULL, 'Player', '0', '0', '0');
INSERT INTO `AppDatabase`.`Role` (`ID`, `Title`, `AuthLevel`, `CreateTeamAccess`, `EditTeamAccess`) VALUES (NULL, 'Assistant', '1', '0', '1');
INSERT INTO `AppDatabase`.`Role` (`ID`, `Title`, `AuthLevel`, `CreateTeamAccess`, `EditTeamAccess`) VALUES (NULL, 'Manager', '1', '1', '1');
INSERT INTO `AppDatabase`.`Role` (`ID`, `Title`, `AuthLevel`, `CreateTeamAccess`, `EditTeamAccess`) VALUES (NULL, 'Admin', '2', '0', '0');

INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '1', '4', 'noahp@appointlink.com', 'noahp@appointlink.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '2', '1', 'test1@app.com', 'test1@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '3', '1', 'test2@app.com', 'test2@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '4', '1', 'test3@app.com', 'test3@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '5', '1', 'test4@app.com', 'test4@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '6', '1', 'test5@app.com', 'test5@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '7', '2', 'test6@app.com', 'test6@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '8', '1', 'test7@app.com', 'test7@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '9', '3', 'test8@app.com', 'test8@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '10', '1', 'test9@app.com', 'test9@app.com', 'test', '1');
INSERT INTO `AppDatabase`.`UserRole` (`ID`, `UserID`, `RoleID`, `Login`, `Email`, `Password`, `IsActive`) VALUES (NULL, '11', '1', 'test10@app.com', 'test10@app.com', 'test', '1');

INSERT INTO `AppDatabase`.`Team` (`ID`, `Name`, `Type`, `TeamImage`, `Description`) VALUES (NULL, 'University of St. Thomas', 'College Soccer', 'Images/TeamImage.png', 'A college soccer team.');
INSERT INTO `AppDatabase`.`Team` (`ID`, `Name`, `Type`, `TeamImage`, `Description`) VALUES (NULL, 'Metro High School', 'High School Soccer', 'Images/TeamImage.png', 'A high school soccer team.');
INSERT INTO `AppDatabase`.`Team` (`ID`, `Name`, `Type`, `TeamImage`, `Description`) VALUES (NULL, 'Lou Fusz Soccer Club', 'Club Soccer', 'Images/TeamImage.png', 'A club soccer team.');

INSERT INTO `AppDatabase`.`Layout` (`ID`, `Name`, `Title`, `ObjectCount`, `BackgroundColor`, `BackgroundImage`, `Description`) VALUES (NULL, '4-4-2', 'England', '11', NULL, NULL, NULL);
INSERT INTO `AppDatabase`.`Layout` (`ID`, `Name`, `Title`, `ObjectCount`, `BackgroundColor`, `BackgroundImage`, `Description`) VALUES (NULL, '4-3-2-1', 'Borussia Dortmund', '11', NULL, NULL, NULL);

INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '1', '30', '60', '50', '100', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '2', '30', '60', '50', '150', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '3', '30', '60', '50', '200', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '4', '30', '60', '50', '250', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '5', '30', '60', '50', '300', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '6', '30', '60', '100', '50', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '7', '30', '60', '100', '100', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '8', '30', '60', '100', '150', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '9', '30', '60', '100', '200', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '10', '30', '60', '100', '250', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '1', '11', '30', '60', '100', '300', NULL, 'lightgrey', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '1', '50', '50', '50', '100', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '2', '50', '50', '60', '100', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '3', '50', '50', '70', '100', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '4', '50', '50', '80', '100', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '5', '50', '50', '90', '100', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '6', '50', '50', '100', '150', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '7', '50', '50', '110', '150', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '8', '50', '50', '120', '150', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '9', '50', '50', '130', '150', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '10', '50', '50', '140', '150', NULL, 'blue', NULL, NULL);
INSERT INTO `AppDatabase`.`LayoutObject` (`ID`, `LayoutID`, `ObjectNumber`, `Width`, `Height`, `Top`, `Left`, `BackgroundImage`, `BackgroundColor`, `Shape`, `Description`) VALUES (NULL, '2', '11', '50', '50', '150', '150', NULL, 'blue', NULL, NULL);

INSERT INTO `AppDatabase`.`TeamChart` (`ID`, `Name`, `TeamID`, `TeamCount`, `Description`) VALUES (NULL, 'First Team', '1', NULL, NULL);
INSERT INTO `AppDatabase`.`TeamChart` (`ID`, `Name`, `TeamID`, `TeamCount`, `Description`) VALUES (NULL, 'Second Team', '2', NULL, NULL);

INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '1', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '2', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '3', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '4', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '5', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '6', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '7', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '8', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '9', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '10', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '1', '11', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '1', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '2', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '3', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '4', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '5', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '6', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '7', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '8', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '9', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '10', NULL);
INSERT INTO `AppDatabase`.`ChartObject` (`ID`, `TeamChartID`, `LayoutObjectID`, `UserRoleID`) VALUES (NULL, '2', '11', NULL);

INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '1', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '2', 'Defense');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '3', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '4', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '5', 'Midfield');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '6', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '7', 'Defense');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '8', 'Midfield');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '9', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '10', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '1', '11', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '1', 'Defense');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '2', 'Midfield');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '3', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '4', 'Defense');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '5', 'Midfield');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '6', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '7', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '8', 'Midfield');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '9', 'Striker');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '10', 'Defense');
INSERT INTO `AppDatabase`.`UserRoleTeam` (`ID`, `TeamID`, `UserRoleID`, `Position`) VALUES (NULL, '2', '11', 'Striker');