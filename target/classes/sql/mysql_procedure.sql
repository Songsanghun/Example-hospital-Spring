delimiter $$
drop PROCEDURE if exists sp_hello_name $$
create PROCEDURE sp_hello_name(
  in name varchar(100),
  out rs varchar(100)
)
begin
  select concat("Hello ",name) into rs;
end $$
delimiter;

show PROCEDURE status;

set @name = 'James', @rs = '';
call sp_hello_name(@name,@rs);
select @rs;