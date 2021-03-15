CREATE TABLE my_contacts  (
    contact_id BIGSERIAL,
    last_name varchar(50) ,
    first_name varchar (50) ,
	phone varchar(10) ,
	email varchar(80) ,
	gender varchar(15) ,
	birthday date,
	
	CONSTRAINT  contact_key PRIMARY KEY (contact_id)
	
	);
	
CREATE TABLE postal_code  (
    postal_id BIGSERIAL,
    province varchar(80) ,
    city  varchar(80) ,
	CONSTRAINT  postal_key PRIMARY KEY (postal_id)
	
	);
	
ALTER TABLE my_contacts
add column prof_id bigserial REFERENCES profession(prof_id);

ALTER TABLE my_contacts
add column postal_code bigserial REFERENCES postal_code(postal_id);

ALTER TABLE my_contacts
add column status_id bigserial REFERENCES status(status_id);


CREATE TABLE interests (
    interest_id BIGSERIAL,
    ineterest varchar(80) ,
  
	CONSTRAINT  interest_key PRIMARY KEY (interest_id)
	
	);
	
CREATE TABLE seeking (
    seeking_id BIGSERIAL,
    seeking varchar(80) ,
  
	CONSTRAINT seeking_key PRIMARY KEY (seeking_id)
	
	);
	
CREATE TABLE contact_interest (
    contact_id bigserial REFERENCES my_contacts(contact_id),
    interest_id bigserial REFERENCES interests(interest_id)
  
	);
	
CREATE TABLE contact_seeking (
    contact_id bigserial REFERENCES my_contacts(contact_id),
    seeking_id bigserial REFERENCES seeking(seeking_id)
  
	);


	
	
	