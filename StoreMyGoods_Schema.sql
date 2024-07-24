create database StoreMyGoods

use StoreMyGoods

go

create table [User]
(
	UserID int primary key,
	UserName varchar(50) NOT NULL,
	FirstName varchar(50),
	LastName varchar(50),
	[Password] varchar(50) NOT NULL,
	UserType int,
	Cnic varchar(13) NOT NULL,
	DOB date,
	PhoneNo varchar(11) NOT NULL,
	City varchar(50)
);

go

create table UserType
(
	UserTypeID int primary key,
	[Type] varchar(50),
);

go

alter table [User] add constraint fk_user foreign key (UserType) references UserType (UserTypeId) on update cascade

go

create table OutboundOrder
(
	OrderID int primary key,
	UserID int foreign key references [User](UserID) on delete cascade,
	CreationDate date NOT NULL,
	GoodsID int,
	DepartureDate date,
	Qty int NOT NULL,
	Charges int
);

go

create table InboundOrder
(
	OrderID int primary key,
	[Name] varchar(50),
	UserID int foreign key references [User](UserID) on delete cascade,
	CreationDate date NOT NULL,
	ArrivalDate date,
	GoodsType int,
	[Length] float NOT NULL,
	Width float NOT NULL,
	Height float NOT NULL,
	ExpiryDate date,
	Qty int NOT NULL
);

go

create table InboundOrderRequest
(
	OrderID int foreign key references InboundOrder(OrderID) on delete cascade on update cascade,
	StatusType int
);

go

create table StatusType
(
	StatusTypeID int primary key,
	Type varchar(50),
);

go

alter table InboundOrderRequest add constraint fk_IOR foreign key (StatusType) references StatusType (StatusTypeID) on update cascade

go

create table GoodsType
(
	GoodsTypeID int primary key,
	[Type] varchar(50)
);

go

alter table InboundOrder add constraint fk_IO foreign key (GoodsType) references GoodsType(GoodsTypeID) on update cascade

go

create table Inventory
(
	GoodsID int primary key,
	[Name] varchar(50),
	InboundDate date,
	UserID int foreign key references [User] (UserID) on delete cascade,  
	GoodsType int foreign key references GoodsType (GoodsTypeID) on update cascade,
	StorageSection int,
	RateID int,
	Volume float NOT NULL,
	ExpiryDate date,
	Qty int NOT NULL
);

go

alter table OutboundOrder add constraint fk_OO foreign key (GoodsID) references Inventory (GoodsID)

go

create table StoreSection
(
	StoreID int primary key,
	[Name] varchar(50),
	TotalVolume float NOT NULL,
	RemainingVolume float NOT NULL
);

go 

alter table Inventory add constraint fk_inventory foreign key (StorageSection) references StoreSection (StoreID)

go

create table Charges
(
	RateID int primary key,
	ChargesPerDay int,
	MinVolume int,
	MaxVolume int
);

go

alter table Inventory add constraint fk_inventory2 foreign key (RateID) references Charges (RateID)

go

create table Complaints
(
	ComplaintID int primary key,
	UserID int foreign key references [User] (UserID) on delete cascade,
	Description text NOT NULL,
	[Status] varchar(50)
);

go

create table PaymentRecords
(
	UserID int foreign key references [User] (UserID) on delete cascade,
	GoodsID int foreign key references Inventory (GoodsID),
	PaymentDate date,
	Amount int
);

go 

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

go

insert into Charges values 
(1,10,1,10),
(2,20,10,15),
(3,30,15,20),
(4,50,20,100),
(5,100,100,200),
(6,300,200,1000)

insert into StoreSection values 
(1,'Store A',1000,1000),
(2,'Store B',2000,2000),
(3,'Store C',3000,3000)

insert into GoodsType values 
(1,'Personal'),
(2,'Bussiness')

insert INTO StatusType values
(1,'Pending'),
(2,'Accepted'),
(3,'Rejected')

Insert into UserType values 
(1,'Admin'),
(2,'User')

insert into [User] values
(1,'Adil','Adil','Hussain','123',1,352001,NULL,'03134739226','Lahore'),
(2,'Ehaab','Ehaab','Qasim','123',1,352002,NULL,'03008745808','Lahore'),
(3,'Haze-X','Hasham','Tahir','123',1,352003,NULL,'03180475011','Lahore'),
(4,'Ebio','Ebrahim','Raza','123',1,352004,NULL,'03233331103','Lahore')

insert into Inventory values (1,'inventory',GETDATE(),1,1,1,1,20,GETDATE(),5)
insert into PaymentRecords values (1,1,GETDATE(),50000)
