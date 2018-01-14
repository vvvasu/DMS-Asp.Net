
ALTER TABLE incident
ADD CONSTRAINT chk_inc_tlevel
CHECK (inc_tlevel='High' OR inc_tlevel='Medium' OR inc_tlevel='Low' OR inc_tlevel='None');


ALTER TABLE incident
ADD CONSTRAINT chk_inc_status
CHECK (inc_status='h' OR inc_status='s');