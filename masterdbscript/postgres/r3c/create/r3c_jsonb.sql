
CREATE TABLE public.r3c_jsonb (
    expiry_date date NOT NULL,
    shortner_id character varying(6) NOT NULL,
    json_data jsonb
);

ALTER TABLE ONLY public.r3c_jsonb
    ADD CONSTRAINT r3c_jsonb_pk PRIMARY KEY (expiry_date, shortner_id);


CREATE INDEX r3c_jsonb_base_msg_id ON ONLY public.r3c_jsonb USING btree (((json_data -> 'base_msg_id'::text)));


CREATE INDEX r3c_jsonb_cli_id ON ONLY public.r3c_jsonb USING btree (((json_data -> 'cli_id'::text)));


CREATE INDEX r3c_jsonb_dest ON ONLY public.r3c_jsonb USING btree (((json_data -> 'dest'::text)));


CREATE INDEX r3c_jsonb_file_id ON ONLY public.r3c_jsonb USING btree (((json_data -> 'file_id'::text)));


CREATE INDEX r3c_jsonb_shortner_id ON ONLY public.r3c_jsonb USING btree (shortner_id);



