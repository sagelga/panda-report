CREATE TABLE public.User
(
  id            UUID        PRIMARY KEY,
  first_name    VARCHAR     NOT NULL,
  last_name     VARCHAR     NOT NULL,
  email         VARCHAR     NOT NULL
);