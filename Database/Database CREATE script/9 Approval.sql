CREATE TABLE public.Approval
(
  request_id    UUID,
  user_id       UUID,
  approved_at   TIMESTAMP,

  CONSTRAINT Approval_pk            PRIMARY KEY (request_id, user_id),

  CONSTRAINT Approval_request_id_fk FOREIGN KEY (request_id)
                                    REFERENCES "request" (id)
                                    ON UPDATE CASCADE
                                    ON DELETE SET NULL,

  CONSTRAINT Approval_user_id_fk    FOREIGN KEY (user_id)
                                    REFERENCES "user" (id)
                                    ON UPDATE CASCADE
                                    ON DELETE SET NULL
);