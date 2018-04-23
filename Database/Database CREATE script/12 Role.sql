CREATE TABLE public.Role
(
  id            UUID        PRIMARY KEY,
  name          VARCHAR     NOT NULL,
  description   TEXT,
  group_id      UUID,

  CONSTRAINT Role_group_id_fk FOREIGN KEY (group_id)
                              REFERENCES "group" (id)
                              ON UPDATE CASCADE
                              ON DELETE CASCADE
);