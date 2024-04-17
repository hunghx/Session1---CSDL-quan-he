# Tạo csdl 
Create schema if not exists demo_02;

# Xóa csdl
# drop database demo_02;

# selected database 
-- use demo_02;

#  tạo bảng
create table Catalog(
    id int auto_increment,
    name varchar(100) ,
    primary key(id,name)
);

insert into catalog(id, name) value (1,'ao');



create table product(
    id bigint primary key  auto_increment,
    name varchar(50) not null ,
    price decimal(10,2) not null ,
    stock int not null ,
    class_id int not null ,
    foreign key (class_id) references catalog(id)
);

# Sửa đối tượng
alter table product 
add column `description` text null,
add column `image_url` varchar(255) null,
drop column `stock`;


# Thêm dữ liệu
insert into catalog(name) 
values 
('áo'),
('quần'),
('trang sức'),
('điện tử'),
('vàng');

select * from catalog;
# thêm mới sản phẩm
insert into product (name,price,stock,class_id) 
values
('áo trung bình','10000000.5051',100,null);

select * from product;


# Update 
update product set price = 10000, name = 'áo mới' where id = 10 ;

update product set price = 1000000 where name like '%a_%' ;


# delete 
delete from product;

# truncate
truncate table product;



create table employee(
id int auto_increment primary key,
name varchar(50) not null,
phone varchar(15) not null unique,
avatar varchar(255) default 'avatar.jpg',
age int,
department_id int,
constraint ck_age check(age >=18)
# constraint fk_01 foreign key(department_id) references department(id)
# constraint pk_em primary key(id) 
);

create table department(
id int auto_increment primary key,
name varchar(100) not null
);

alter table employee 
add constraint fk_01 foreign key(department_id) references department(id);


insert into department(id,name)
value (1,'Sales ');
    
select * from department;

insert into employee(name, phone, age, department_id)
    VALUE ('Nguyen Van A','0984884334',19,1);
select * from employee;

 