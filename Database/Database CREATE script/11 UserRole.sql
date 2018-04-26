CREATE TABLE public.UserRole
(
  user_id       UUID,
  role_id       UUID,

  CONSTRAINT UserRole_pk          PRIMARY KEY (user_id, role_id),

  CONSTRAINT UserRole_user_id_fk  FOREIGN KEY (user_id)
                                  REFERENCES "user" (id)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL,

  CONSTRAINT UserRole_role_id_fk  FOREIGN KEY (role_id)
                                  REFERENCES "role" (id)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL
);
