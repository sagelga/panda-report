CREATE TABLE public.RoleInclusion
(
  role_id       UUID,
  child_role_id UUID,

  CONSTRAINT RoleInclusion_pk                 PRIMARY KEY (role_id, child_role_id),

  CONSTRAINT RolePermission_role_id_fk        FOREIGN KEY (role_id)
                                              REFERENCES "role" (id)
                                              ON UPDATE CASCADE
                                              ON DELETE SET NULL,

  CONSTRAINT RolePermission_child_role_id_fk  FOREIGN KEY (child_role_id)
                                              REFERENCES "role" (id)
                                              ON UPDATE CASCADE
                                              ON DELETE SET NULL
);