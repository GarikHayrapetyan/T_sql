create procedure ProductSummary as
begin
select * from products;
end;

exec ProductSummary;

create procedure AddProduct
 @name nvarchar(20),
 @manufacturer nvarchar(20),
 @count Int,
 @price Money
as
insert Products 
values(@name,@manufacturer,@count,@price);


declare @prodname nvarchar(20) ,@company nvarchar(20);
set @prodname='Honor 9'
set @company = 'Huawei'

exec AddProduct @name=@prodname,@manufacturer=@company,@count=2,@price=3000;



exec AddProduct 'Samsung','Samsung',20,2000;