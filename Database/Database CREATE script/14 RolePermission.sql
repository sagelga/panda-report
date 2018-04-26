CREATE TABLE public.RolePermission
(
  role_id       UUID,
  permission_id UUID,

  CONSTRAINT RolePermission_pk                PRIMARY KEY (role_id,permission_id),

  CONSTRAINT RolePermission_role_id_fk        FOREIGN KEY (role_id)
                                              REFERENCES "role" (id)
                                              ON UPDATE CASCADE
                                              ON DELETE SET NULL,

  CONSTRAINT RolePermission_permission_id_fk  FOREIGN KEY (permission_id)
                                              REFERENCES "permission" (id)
                                              ON UPDATE CASCADE
                                              ON DELETE SET NULL
);