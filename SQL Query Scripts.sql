-- Table: Hospital_Data.tableau_file

-- DROP TABLE IF EXISTS "Hospital_Data".tableau_file;

CREATE TABLE IF NOT EXISTS "Hospital_Data".tableau_file
(
    provider_ccn text COLLATE pg_catalog."default",
    start_date_converted date,
    end_date_converted date,
    facility_id character varying(10) COLLATE pg_catalog."default",
    facility_name character varying(255) COLLATE pg_catalog."default",
    address character varying(255) COLLATE pg_catalog."default",
    city character varying(50) COLLATE pg_catalog."default",
    state character varying(2) COLLATE pg_catalog."default",
    zip_code character varying(10) COLLATE pg_catalog."default",
    county_or_parish character varying(50) COLLATE pg_catalog."default",
    telephone_number character varying(20) COLLATE pg_catalog."default",
    hcahps_measure_id character varying(255) COLLATE pg_catalog."default",
    hcahps_question character varying(255) COLLATE pg_catalog."default",
    hcahps_answer_description character varying(255) COLLATE pg_catalog."default",
    hcahps_answer_percent integer,
    num_completed_surveys integer,
    survey_response_rate_percent integer,
    start_date character varying(10) COLLATE pg_catalog."default",
    end_date character varying(10) COLLATE pg_catalog."default",
    number_of_beds integer,
    beds_start_report_period date,
    bed_end_report_period date
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Hospital_Data".tableau_file
    OWNER to postgres;