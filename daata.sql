create database daata;
use daata ;
CREATE USER 'admine'@'localhost' IDENTIFIED BY 'admine123';
/* Table : Administrator                                        */
/*==============================================================*/
create table Administrator (
   adminName            varchar(254)         not null,
   adminEmail           varchar(254)         null, 
   constraint PK_ADMINISTRATOR primary key (adminName)
);
/*==============================================================*/
/* Table : User                                               */
/*==============================================================*/
create table users (
   UserId               varchar(254)         not null,
   password             varchar(254)         null,
   loginStatus          varchar(254)         null,
   constraint PK_USER primary key (UserId)
);
/*==============================================================*/
/* Table : customer                                             */
/*==============================================================*/
create table customer (
   customerName         varchar(254)         not null,
   customerEmail        varchar(254)         null,
   CreditCardInfo       varchar(254)         null,
   accountBalance       float                null,
   constraint PK_CUSTOMER primary key (customerName)
)
/*==============================================================*/
/* Table : Orders                                            */
/*==============================================================*/
create table Orders (
   orderId              int                  not null,
   shi_shippingId       int                  null,
   customerName         varchar(254)         null,
   dateCreated          varchar(254)         null,
   dateShipped          varchar(254)         null,
   CustomerId           varchar(254)         null,
   statu                varchar(254)         null,
   shippingId           varchar(254)         null,
   constraint PK_ORDER primary key (orderId)
);

/*==============================================================*/
/* Table : order_Details                                        */
/*==============================================================*/
create table order_Details (
   orderDetailsId       int                  not null,
   orderId              int                  null,
   productId            int                  null,
   productName          varchar(254)         null,
   quantity             int                  null,
   unitcosr             float                null,
   subTotal             float                null,
   constraint PK_ORDER_DETAILS primary key (orderDetailsId)
);
/*==============================================================*/
/* Table : shippingInfo                                         */
/*==============================================================*/
create table shippingInfo (
   shippingId           int                  not null,
   orgerId              int                  null,
   shippingCost         int                  null,
   shippingRegionId     int                  null,
   shippingType         varchar(254)         null,
   constraint PK_SHIPPINGINFO primary key (shippingId)
);

alter table Orders
   add constraint FK_ORDER_ASSOCIATI_CUSTOMER foreign key (customerName)
      references customer (customerName);

alter table Orders
   add constraint FK_ORDER_ASSOCIATI_SHIPPING foreign key (shippingId)
      references shippingInfo (shippingId);

alter table order_Details
   add constraint FK_ORDER_DE_ASSOCIATI_ORDER foreign key (orderId)
      references Orders (orderId);
      
 /* Table: Administrator  insert */   
 INSERT INTO Administrator ( adminName , adminEmail ) VALUES 
('imane',  'admin@gmail.com');
/* Table: Administrator update    */

UPDATE Administrator
SET adminName='sara', adminEmail='test@gmail.com';

/* Table: Administrator Delete    */
DELETE FROM Administrator 
WHERE adminName = 'sara';

/* Table: Users  insert */   
 INSERT INTO Users ( userId , password , loginStatus ) VALUES 
('1',  'admin', 'welcome');
/* Table: Users update    */

UPDATE Users
SET userId='2', password='test', loginStatus='up';

/* Table: Users Delete    */
DELETE FROM Users 
WHERE userId = '2';

/* Table: orders  insert */   
 INSERT INTO Orders ( orderId , dateCreated , dateShipped, CustomerId, status , ShippingId ) VALUES 
('20',  '25/03','30/03' , 5 , up , 3);
/* Table: orders update    */

UPDATE Orders
SET orderId ='1', dateCreated='25/04' , dateShipped='30/04', CustomerId='2', status='0' , ShippingId='6';

/* Table: orders Delete    */
DELETE FROM orders 
WHERE status='0';

/* Table: customer  insert */   
 INSERT INTO customer ( customerName , customerEmail, CreditCardInfo, accountBalance ) VALUES 
('ema',  'admins@gmail.com', '3090' ,'2O339' );

/* Table: customer update    */
UPDATE customer
SET customerName='llele' , customerEmail='hh@gmail.com', CreditCardInfo='jjffn', accountBalance='887747';

/* Table: customer Delete    */
DELETE FROM customer 
WHERE customerName='llele';

/* Table: shippingInfo  insert */   
 INSERT INTO shippingInfo ( shippingId , orgerId,shippingCost, shippingRegionId , shippingType ) VALUES 
('1',  '3' ,'95','usa','fkk' );
/* Table: shippingInfo update    */

UPDATE shippingInfo
SET shippingId='2', orgerId='4',shippingCost='303', shippingRegionId ='	iii', shippingType='K?K';

/* Table: shippingInfo Delete    */
DELETE FROM shippingInfo 
WHERE orgerId='4';

/* Table: order_Details  insert */   
 INSERT INTO order_Details ( orderDetailsId , orderId, productId , productName , quantity , unitcost, subTotal ) VALUES 
('2',  '4', '1' , 'one' ,	'50' , 	'10' ,'100' );
/* Table: order_Details update    */

UPDATE order_Details
SET orderDetailsId ='3', orderId='6', productId='9' , productName='fkk' , quantity='9', unitcost='994', subTotal='999';

/* Table: order_Details Delete    */
DELETE FROM order_Details 
WHERE orderId='6';
