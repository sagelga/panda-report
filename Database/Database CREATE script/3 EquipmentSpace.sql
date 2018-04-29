CREATE TABLE EquipmentSpace
(
  equipment_id  UUID,
  space_id      UUID,
  quantity      INT,

  CONSTRAINT EquipmentSpace_pk                PRIMARY KEY (equipment_id,space_id),

  CONSTRAINT EquipmentSpace_equipment_id_fk   FOREIGN KEY (equipment_id)
                                              REFERENCES "equipment" (equipment_id)
                                              ON UPDATE CASCADE
                                              ON DELETE SET NULL,

  CONSTRAINT EquipmentSpace_space_id_fk       FOREIGN KEY (space_id)
                                              REFERENCES "space" (space_id)
                                              ON UPDATE CASCADE
                                              ON DELETE SET NULL
);