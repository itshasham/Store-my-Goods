select * from [User]
select * from UserType
select * from OutboundOrder
select * from InboundOrder
select * from InboundOrderRequest
select * from StatusType
select * from GoodsType
select * from Inventory
select * from StoreSection
select * from Charges
select * from Complaints
select * from PaymentRecords

--Functionalities

--Sign Up

create procedure SignUp @UserName varchar(50), @FirstName varchar(50), @LastName varchar(50), @Password varchar(50), @UserType int, @Cnic varchar(13),@dob date, @PhoneNo varchar(11), @City varchar(50)
as begin
declare @ID int
set @ID = 1
select top 1 @ID = [User].UserID + 1
from [User]
order by [User].UserID desc
Insert into [User] values (@ID,@UserName,@FirstName,@LastName,@Password,@UserType,@Cnic,@dob,@PhoneNo,@City)
end


--declare @ID int
--set @ID = 1
--select top 1 @ID = [User].UserID + 1
--from [User]
--order by [User].UserID desc
--execute SignUp @ID,'eq','Ehab','Qasim','eq113','1','35202','07-06-2003','03008777777','Lahore'



--Log In

create procedure login @UserName varchar(50),@Password varchar(50)
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM [User] WHERE @UserName = UserName AND Password = @Password)
    IF @count > 0
        PRINT 'Login successful!'
    ELSE
        PRINT 'Login failed.'
END

--EXEC login eq,'eq113' 



--View Rental Charges

CREATE VIEW RentalCharges
AS
SELECT CONCAT(MinVolume,'-',MaxVolume) AS VolumeRange , ChargesPerDay AS RatePerDay 
FROM Charges

--select * from RentalCharges



--Create Inbound Order

create procedure [Create Inbound Order]
@Name varchar(50),@UserID int,@ArrivalDate Date, @GoodsType int, @Length float, @Width float, @Height float, @ExpiryDate Date, @Quantity int
as
begin
Declare @OrderID int
select @OrderID=max(OrderID) from InboundOrder
if(@OrderID is null)
begin
    set @OrderID=1
end
else 
begin
    set @OrderID=@OrderID+1
end
Declare @CreationDate Date
Set @CreationDate=getdate()
insert into InboundOrder values (@OrderID,@Name,@UserID,@CreationDate,@ArrivalDate,@GoodsType,@Length,@Width,@Height,@ExpiryDate,@Quantity)
insert into InboundOrderRequest values (@OrderID,1)
end


--execute [Create Inbound Order] @Name='Ehab',@UserID=1,@ArrivalDate='01-01-2000',@GoodsType=1,@Length=1,@Width=2,@Height=4,@ExpiryDate='02-12-2088',@Quantity=3



--Create Outbound Order

CREATE PROCEDURE [Create Outbound Order]
    @UserID INT,
    @GoodsID INT,
    @DepartureDate DATE,
    @Quantity INT
AS
BEGIN
    DECLARE @OrderID INT
    SELECT @OrderID = MAX(OrderID) FROM OutboundOrder
    IF (@OrderID IS NULL)
    BEGIN
        SET @OrderID = 1
    END
    ELSE
    BEGIN
        SET @OrderID = @OrderID + 1
    END

    DECLARE @CreationDate DATE
    SET @CreationDate = GETDATE()

    DECLARE @RateID INT
    SELECT @RateID = RateID FROM Inventory WHERE GoodsID = @GoodsID

    DECLARE @ChargesPerDay INT
    SELECT @ChargesPerDay = ChargesPerDay FROM Charges WHERE RateID = @RateID

    DECLARE @InboundDate DATE
    SELECT @InboundDate = InboundDate FROM Inventory WHERE GoodsID = @GoodsID

    DECLARE @Days INT
    SET @Days = DATEDIFF(day, @InboundDate, @DepartureDate)

    DECLARE @Charges INT
    SET @Charges = @Days * @ChargesPerDay

    -- check if enough quantity is available
    DECLARE @AvailableQuantity INT
    SELECT @AvailableQuantity = Qty FROM Inventory WHERE GoodsID = @GoodsID
    IF (@AvailableQuantity >= @Quantity)
    BEGIN
        -- update quantity in the inventory
        UPDATE Inventory
        SET Qty = Qty - @Quantity
        WHERE GoodsID = @GoodsID

        -- create outbound order
        INSERT INTO OutboundOrder VALUES (@OrderID, @UserID, @CreationDate, @GoodsID, @DepartureDate, @Quantity, @Charges)
    END
    ELSE
    BEGIN
        THROW 50000, 'Insufficient quantity available in inventory', 1
    END
END



--Check Inventory Details

create procedure details @UserID int
as begin
select * from Inventory 
where @UserID = UserID
end

--execute details 1



--Customer Complaint Centre 

CREATE PROCEDURE SubmitComplaint
@UserID int, 
@Description text
AS BEGIN
DECLARE @ComplaintID INT
select @ComplaintID=max(ComplaintID) from Complaints
if(@ComplaintID is null)
begin
    set @ComplaintID=1
end
else 
begin
    set @ComplaintID=@ComplaintID+1
end
INSERT INTO Complaints
Values
(@ComplaintID,@UserID,@Description,'Pending')
END



--Modify Inventory

create procedure modifyinventory @name varchar(50),@goodsid int
as begin
update Inventory 
set Name = @name
where GoodsID = @goodsid
end

--execute modifyinventory 'newgoods',1



--Payment Records 

CREATE PROCEDURE records @UserId int
AS
BEGIN
    DECLARE @count int
    SET @count = (SELECT COUNT(*) FROM PaymentRecords WHERE @UserID = UserId)

    IF @count = 1
        SELECT GoodsID, PaymentDate, Amount FROM PaymentRecords WHERE @UserID = UserId
    ELSE
        PRINT 'UserId does not match'
END

--EXEC records 1


--


create view [To Be Approved]
as
SELECT Distinct InboundOrder.*
FROM InboundOrder
join InboundOrderRequest ON InboundOrder.OrderID = InboundOrderRequest.OrderID
where InboundOrderRequest.StatusType=1


--


create procedure approveOrder
@OrderID int
as
begin
update InboundOrderRequest
set StatusType=2
where OrderID=@OrderID

DECLARE @GoodsID INT
    SELECT @GoodsID = MAX(GoodsID) FROM Inventory
    IF (@GoodsID IS NULL)
    BEGIN
        SET @GoodsID = 1
    END
    ELSE
    BEGIN
        SET @GoodsID = @GoodsID + 1
    END
	declare @Name varchar(20)
	declare @InboundDate date
	declare @UserID int
	declare @GoodsType int
	declare @StorageSection int
	declare @RateID int
	declare @Volume int
	declare @ExpiryDate date
	declare @Quantity int
	declare @Length int
	declare @Width int
	declare @Height int
	set @StorageSection=1
	select @Name=[Name],@InboundDate=ArrivalDate,@UserID=UserID,@GoodsType=GoodsType,@Length=[Length],@Width=Width,@Height=Height,@ExpiryDate=ExpiryDate,@Quantity=Qty from InboundOrder
	where OrderID=@OrderID
	set @Volume=@Length*@Width*@Height
	select @RateID=RateID from Charges
	where @Volume>MinVolume AND @Volume<MaxVolume

insert into Inventory values(@GoodsID,@Name,@InboundDate,@UserID,@GoodsType,@StorageSection,@RateID,@Volume,@ExpiryDate,@Quantity)
end