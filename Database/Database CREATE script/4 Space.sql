CREATE TABLE Space
(
  id                  UUID      PRIMARY KEY,
  name                VARCHAR   NOT NULL UNIQUE,
  capacity            INT       NOT NULL,
  required_approvals  INT       NOT NULL,
  is_reservable       BOOLEAN   NOT NULL,
  note                TEXT,
  type_id             UUID,
  group_id            UUID,

  CONSTRAINT Space_type_id_fk   FOREIGN KEY  (type_id)
                                REFERENCES "space" (space_id)
                                ON UPDATE CASCADE
                                ON DELETE CASCADE,

  CONSTRAINT Space_group_id_fk  FOREIGN KEY  (group_id)
                                REFERENCES "group" (group_id)
                                ON UPDATE CASCADE
                                ON DELETE CASCADE
);

  COMMENT ON TABLE  Space                     IS 'Database that keeps about space information';

  COMMENT ON COLUMN Space.name                IS 'Name of the space';
  COMMENT ON COLUMN Space.required_approvals  IS 'Amount of approvals that needed to verify the space reservation';
  COMMENT ON COLUMN Space.note                IS 'Description of the room';