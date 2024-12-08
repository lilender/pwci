drop database pwci_c1;
create database pwci_c1;

use pwci_c1;

create table users
(
    id       int auto_increment
        primary key,
    email    varchar(100) not null,
    password varchar(255) not null
);

create table notas
(
    id         int auto_increment
        primary key,
    title      varchar(100) not null,
    note       text         not null,
    user_id    int          null,
    create_at  timestamp    null,
    updated_at timestamp    null,
    deleted_at timestamp    null,
    constraint notas_users_id_fk
        foreign key (user_id) references users (id)
);

