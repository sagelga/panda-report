CREATE TABLE public.Problem
(
  id            UUID        PRIMARY KEY,
  title         VARCHAR     NOT NULL,
  created_at    VARCHAR     NOT NULL,
  description   TEXT        NOT NULL,
  space_id      UUID,
  user_id       UUID,

  CONSTRAINT Request_space_id_fk  FOREIGN KEY (space_id)
                                  REFERENCES "space" (id)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL,

  CONSTRAINT UserRole_user_id_fk  FOREIGN KEY (user_id)
                                  REFERENCES "user" (id)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL
);
