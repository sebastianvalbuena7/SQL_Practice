create table "users" (
    "user_id" SERIAL PRIMARY KEY,
    "username" varchar
)

-- Better
create table "users3" (
    "user_id" INTEGER GENERATED always AS identity PRIMARY KEY,
    "username" varchar
)

-- Llaves compuestas
create table "users5" (
    id1 int,
    id2 int,
    PRIMARY KEY (id1, id2)
)

-- UUIDS
CREATE TABLE users6 (
    "user_id" uuid default uuid_generate_v4() PRIMARY KEY,
    "username" varchar
);

select uuid_generate_v4()