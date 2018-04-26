CREATE TABLE public.Request
(
  id            UUID        PRIMARY KEY,
  request_time  TIMESTAMP   NOT NULL,
  purposal      TEXT,
  space_id      UUID,
  user_id       UUID,

  CONSTRAINT Request_space_id_fk  FOREIGN KEY (space_id)
                                  REFERENCES "space" (id)
                                  ON UPDATE CASCADE
                                  ON DELETE CASCADE,

  CONSTRAINT Request_user_id_fk   FOREIGN KEY (user_id)
                                  REFERENCES USER (id)
                                  ON UPDATE CASCADE
                                  ON DELETE CASCADE
);