CREATE TABLE public.Reservation
(
  id            UUID        PRIMARY KEY,
  date          DATE        NOT NULL,
  period        INT4RANGE   NOT NULL,
  is_attended   BOOLEAN     NOT NULL,
  request_id    UUID,

  CONSTRAINT Reservation_request_id_fk  FOREIGN KEY (request_id)
                                        REFERENCES "request" (id)
                                        ON UPDATE CASCADE
                                        ON DELETE SET NULL
);
