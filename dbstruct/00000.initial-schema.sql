--
-- file: 00000.initial-schema.sql
--


------------------------------------------------------------------
-- Copyright DTH Software, Inc. Released under AGPL-3.0 License --
------------------------------------------------------------------


--
-- TABLES
--

-- Table: public.agg_carrier_batch
CREATE TABLE public.agg_carrier_batch
(
    batch_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10) not null,
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    start_time timestamp,
    end_time timestamp,
    most_recent_cdr timestamp not null,
    processed_time timestamp not null default now()
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_customer_tg_1min
CREATE TABLE public.agg_carrier_customer_tg_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id_carrier text COLLATE pg_catalog."default" not null,
    tg_id_customer text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_404 int not null,
    code_487 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_customer_tg_daily
CREATE TABLE public.agg_carrier_customer_tg_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id_carrier text COLLATE pg_catalog."default" not null,
    tg_id_customer text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_404 int not null,
    code_487 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_customer_tg_hourly
CREATE TABLE public.agg_carrier_customer_tg_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id_carrier text COLLATE pg_catalog."default" not null,
    tg_id_customer text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_404 int not null,
    code_487 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_mediaip_1min
CREATE TABLE public.agg_carrier_mediaip_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text  COLLATE pg_catalog."default" NOT NULL,
    media_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    sd int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_mediaip_daily
CREATE TABLE public.agg_carrier_mediaip_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text  COLLATE pg_catalog."default" NOT NULL,
    media_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    sd int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_mediaip_hourly
CREATE TABLE public.agg_carrier_mediaip_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text  COLLATE pg_catalog."default" NOT NULL,
    media_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    sd int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_network_1min
CREATE TABLE public.agg_carrier_network_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    attempts int not null,
    attempts_ner int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    sd int not null,
    carrier_cost numeric(20, 10),
    code_404 int not null,
    code_487 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_network_daily
CREATE TABLE public.agg_carrier_network_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    attempts int not null,
    attempts_ner int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    sd int not null,
    carrier_cost numeric(20, 10),
    code_404 int not null,
    code_487 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_network_hourly
CREATE TABLE public.agg_carrier_network_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    attempts int not null,
    attempts_ner int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    sd int not null,
    carrier_cost numeric(20, 10),
    code_404 int not null,
    code_487 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_network_sipcode_1min
CREATE TABLE public.agg_carrier_network_sipcode_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    sip_code text COLLATE pg_catalog."default" not null,
    attempts int not null 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_network_sipcode_daily
CREATE TABLE public.agg_carrier_network_sipcode_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    sip_code text COLLATE pg_catalog."default" not null,
    attempts int not null 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_network_sipcode_hourly
CREATE TABLE public.agg_carrier_network_sipcode_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    sip_code text COLLATE pg_catalog."default" not null,
    attempts int not null 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_signalip_1min
CREATE TABLE public.agg_carrier_signalip_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text  COLLATE pg_catalog."default" NOT NULL,
    signal_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    sd int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_signalip_daily
CREATE TABLE public.agg_carrier_signalip_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text  COLLATE pg_catalog."default" NOT NULL,
    signal_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    sd int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_signalip_hourly
CREATE TABLE public.agg_carrier_signalip_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text  COLLATE pg_catalog."default" NOT NULL,
    signal_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    sd int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_1min
CREATE TABLE public.agg_carrier_tg_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_404 int not null,
    code_487 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_1sec
CREATE TABLE public.agg_carrier_tg_1sec
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_daily
CREATE TABLE public.agg_carrier_tg_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_404 int not null,
    code_487 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_hourly
CREATE TABLE public.agg_carrier_tg_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_404 int not null,
    code_487 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_routingprefix_1min
CREATE TABLE public.agg_carrier_tg_routingprefix_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    routing_prefix text COLLATE pg_catalog."default" NOT NULL,
    attempts int NOT NULL,
    completions int NOT NULL,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    carrier_rate_min numeric(20, 10),
    carrier_rate_max numeric(20, 10),
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_routingprefix_daily
CREATE TABLE public.agg_carrier_tg_routingprefix_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    routing_prefix text COLLATE pg_catalog."default" NOT NULL,
    attempts int NOT NULL,
    completions int NOT NULL,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    carrier_rate_min numeric(20, 10),
    carrier_rate_max numeric(20, 10),
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_carrier_tg_routingprefix_hourly
CREATE TABLE public.agg_carrier_tg_routingprefix_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    routing_prefix text COLLATE pg_catalog."default" NOT NULL,
    attempts int NOT NULL,
    completions int NOT NULL,
    duration int not null,
    duration_billed int not null,
    carrier_cost numeric(20, 10),
    carrier_rate_min numeric(20, 10),
    carrier_rate_max numeric(20, 10),
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_ani_1min
CREATE TABLE public.agg_customer_ani_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    ani text not null,
    attempts int not null,
    attempts_ner int not null,
    attempts_dcr int not null,
    attempts_rvm int,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_ani_daily
CREATE TABLE public.agg_customer_ani_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    ani text not null,
    attempts int not null,
    attempts_ner int not null,
    attempts_dcr int not null,
    attempts_rvm int,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_ani_hourly
CREATE TABLE public.agg_customer_ani_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    ani text not null,
    attempts int not null,
    attempts_ner int not null,
    attempts_dcr int not null,
    attempts_rvm int,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_batch
CREATE TABLE public.agg_customer_batch
(
    batch_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    start_time timestamp,
    end_time timestamp,
    most_recent_cdr timestamp not null,
    processed_time timestamp not null default now()
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnislata_1min
CREATE TABLE public.agg_customer_dnislata_1min
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_lata integer,
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnislata_daily
CREATE TABLE public.agg_customer_dnislata_daily
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_lata integer,
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnislata_hourly
CREATE TABLE public.agg_customer_dnislata_hourly
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_lata integer,
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnisocn_1min
CREATE TABLE public.agg_customer_dnisocn_1min
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_ocn text COLLATE pg_catalog."default",
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnisocn_daily
CREATE TABLE public.agg_customer_dnisocn_daily
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_ocn text COLLATE pg_catalog."default",
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnisocn_hourly
CREATE TABLE public.agg_customer_dnisocn_hourly
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_ocn text COLLATE pg_catalog."default",
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnisstate_1min
CREATE TABLE public.agg_customer_dnisstate_1min
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_state text COLLATE pg_catalog."default",
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnisstate_daily
CREATE TABLE public.agg_customer_dnisstate_daily
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_state text COLLATE pg_catalog."default",
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_dnisstate_hourly
CREATE TABLE public.agg_customer_dnisstate_hourly
(
    batch_id text COLLATE pg_catalog."default",
    call_time timestamp without time zone,
    dnis_state text COLLATE pg_catalog."default",
    attempts int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_mediaip_1min
CREATE TABLE public.agg_customer_mediaip_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    media_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    attempts_acr int,
    attempts_dcr int,
    attempts_rvm int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric,
    sd int,
    code_487 int,
    code_404 int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_mediaip_daily
CREATE TABLE public.agg_customer_mediaip_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    media_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    attempts_acr int,
    attempts_dcr int,
    attempts_rvm int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric,
    sd int,
    code_487 int,
    code_404 int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_mediaip_hourly
CREATE TABLE public.agg_customer_mediaip_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    media_ip text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    attempts_acr int,
    attempts_dcr int,
    attempts_rvm int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric,
    sd int,
    code_487 int,
    code_404 int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_network_1min
CREATE TABLE public.agg_customer_network_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    attempts int not null,
    attempts_ner int not null,
    attempts_acr int not null,
    attempts_dcr int not null,
    attempts_rvm int,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_network_daily
CREATE TABLE public.agg_customer_network_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    attempts int not null,
    attempts_ner int not null,
    attempts_acr int not null,
    attempts_dcr int not null,
    attempts_rvm int,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_network_hourly
CREATE TABLE public.agg_customer_network_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    attempts int not null,
    attempts_ner int not null,
    attempts_acr int not null,
    attempts_dcr int not null,
    attempts_rvm int,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10) not null,
    carrier_cost numeric(20, 10),
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_network_sipcode_1min
CREATE TABLE public.agg_customer_network_sipcode_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    sip_code text COLLATE pg_catalog."default" not null,
    attempts int not null 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_network_sipcode_daily
CREATE TABLE public.agg_customer_network_sipcode_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    sip_code text COLLATE pg_catalog."default" not null,
    attempts int not null 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_network_sipcode_hourly
CREATE TABLE public.agg_customer_network_sipcode_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    sip_code text COLLATE pg_catalog."default" not null,
    attempts int not null 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_signalip_1min
CREATE TABLE public.agg_customer_signalip_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    signal_ip text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    attempts integer,
    attempts_ner integer,
    attempts_acr integer,
    attempts_dcr integer,
    attempts_rvm integer,
    completions integer,
    duration integer,
    duration_billed integer,
    revenue numeric,
    carrier_cost numeric(20, 10),
    sd integer,
    code_487 integer,
    code_404 integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_signalip_hourly
CREATE TABLE public.agg_customer_signalip_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    signal_ip text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    attempts integer,
    attempts_ner integer,
    attempts_acr integer,
    attempts_dcr integer,
    attempts_rvm integer,
    completions integer,
    duration integer,
    duration_billed integer,
    revenue numeric,
    carrier_cost numeric(20, 10),
    sd integer,
    code_487 integer,
    code_404 integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_signalip_hourly
CREATE TABLE public.agg_customer_signalip_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    signal_ip text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    attempts integer,
    attempts_ner integer,
    attempts_acr integer,
    attempts_dcr integer,
    attempts_rvm integer,
    completions integer,
    duration integer,
    duration_billed integer,
    revenue numeric,
    carrier_cost numeric(20, 10),
    sd integer,
    code_487 integer,
    code_404 integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_switchid_1min
CREATE TABLE public.agg_customer_switchid_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    switch_id text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric,
    sd int,
    code_487 int,
    code_404 int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_switchid_daily
CREATE TABLE public.agg_customer_switchid_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    switch_id text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric,
    sd int,
    code_487 int,
    code_404 int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_switchid_hourly
CREATE TABLE public.agg_customer_switchid_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    switch_id text COLLATE pg_catalog."default" NOT NULL,
    attempts int,
    attempts_ner int,
    completions int,
    duration int,
    duration_billed int,
    revenue numeric,
    sd int,
    code_487 int,
    code_404 int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_tg_1min
CREATE TABLE public.agg_customer_tg_1min
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10),
    carrier_cost numeric(20, 10),
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_tg_daily
CREATE TABLE public.agg_customer_tg_daily
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10),
    carrier_cost numeric(20, 10),
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_tg_hourly
CREATE TABLE public.agg_customer_tg_hourly
(
    batch_id text COLLATE pg_catalog."default" not null,
    call_time timestamp without time zone not null,
    tg_id text COLLATE pg_catalog."default" not null,
    attempts int not null,
    completions int not null,
    duration int not null,
    duration_billed int not null,
    revenue numeric(20, 10),
    carrier_cost numeric(20, 10),
    sd int not null,
    code_487 int not null,
    code_404 int not null,
    lcr_depth_completed int,
    lcr_depth_incomplete int,
    lcr_depth_all int,
    lack_cap int,
    ring_time int,
    ring_time_before_cancel int,
    attempts_npr int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_tg_routingprefix_1min
CREATE TABLE public.agg_customer_tg_routingprefix_1min
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    routing_prefix text COLLATE pg_catalog."default" NOT NULL,
    attempts int NOT NULL,
    completions int NOT NULL,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_tg_routingprefix_daily
CREATE TABLE public.agg_customer_tg_routingprefix_daily
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    routing_prefix text COLLATE pg_catalog."default" NOT NULL,
    attempts int NOT NULL,
    completions int NOT NULL,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.agg_customer_tg_routingprefix_hourly
CREATE TABLE public.agg_customer_tg_routingprefix_hourly
(
    batch_id text COLLATE pg_catalog."default" NOT NULL,
    call_time timestamp without time zone NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    routing_prefix text COLLATE pg_catalog."default" NOT NULL,
    attempts int NOT NULL,
    completions int NOT NULL,
    lcr_depth int
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.carriers
CREATE TABLE public.carriers
(
    carrier_id text COLLATE pg_catalog."default" NOT NULL,
    carrier_name text COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT carriers_pkey PRIMARY KEY (carrier_id)
)
TABLESPACE pg_default;


-- Table: public.cdr_customer

-- Customer CDR (often referred to as A-leg) are used to create statistics and patterns on the
-- customer/ingress attempts. There should be 1 record per customer attempt. Data can be pushed directly 
-- into this table. Custom formats can be staged into custom tables but ultimately will be normalized to 
-- this structure.

-- Customer CDR are only required if you’re using customer-based statistics.

CREATE UNLOGGED TABLE public.cdr_customer
(
    call_time timestamp without time zone NOT NULL, -- Required. Start time of the call. Preferably in UTC.
    sip_call_id text NOT NULL, -- Required. Unique SIP call identifier. Also used to join to cdr_carrier if required.
    switch_id text not null, -- Required. UniqueID on the internal device that received the ingress attempt. The switch IP is perfectly viable as a value.
    tg_id text NOT NULL, -- Required. Value that identifies the customer's trunk group.
    ani text, -- Optional. Normalized ANI including country code. Required if using our ANI-based statistics.
    ani_lata integer, -- Optional. Used for LATA-based statistics. If it is not in your CDR but you have LERG we can dip it from there. 
    ani_ocn text, -- Optional. Used for OCN-based statistics. If it is not in your CDR but you have LERG we can dip it from there.
    ani_state text, -- Optional. Used for State/Province-based statistics. If it is not in your CDR but you have LERG we can dip it from there. 
    dnis text, -- Optional. Normalized DNIS including country code. Required if using our DNIS-based statistics.
    lrn text, -- Optional. Local Routing Number for the call.
    dnis_lata integer, -- Optional. Used for LATA-based statistics. If it is not in your CDR but you have LERG we can dip it from there. 
    dnis_ocn text, -- Optional. Used for OCN-based statistics. If it is not in your CDR but you have LERG we can dip it from there. 
    dnis_state text, -- Optional. Used for State/Province-based statistics. If it is not in your CDR but you have LERG we can dip it from there. 
    dnis_clli text, -- Optional. Pronounced "silly". Common Language Location Identifier. If it is not in your CDR but you have LERG we can dip it from there. 
    billing_prefix text, -- Optional. Prefix the customer was billed on. 
    routing_prefix text, -- Optional. Prefix used to route the call. 
    juris text NOT NULL, -- Required. https://github.com/rainmandata/networkanalytics-voice/wiki/Jurisdictions
    signal_ip text, -- Optional. Customer's signaling IP. Only required if using signal IP-based statistics.
    media_ip text, -- Optional. Customer's media IP. Only required if using media IP-based statistics.
    sip_code text NOT NULL, -- Required. Final release cause of the attempt. This is typically a SIP-standard integer value but you can insert internal text-based codes as some networks have custom indicators.
    ring_time int, -- Optional. Duration of the ring. Seconds or milliseconds based on your preference.
    duration integer, -- Optional. Only needed for completed attempts. Leave 0 or null for incomplete attempts.
    duration_billed integer, -- Optional. Only needed for completed attempts. Leave 0 or null for incomplete attempts.
    customer_rate numeric(20, 10), -- Optional. Only required if Rain Man is being used for financial reporting. If not available in the CDR we can dip it from there customer deck.
    customer_revenue numeric(20, 10), -- Optional. Only required if Rain Man is being used for financial reporting. If not available in the CDR we can calculate it using customer_rate/billed_duration.
    carrier_tg_id text, -- Optional. If you are not sending Rain Man a separate carrier CDR feed then you can include final carrier trunk group here. 
    carrier_rate numeric(20, 10), -- Optional. If you are not sending Rain Man a separate CDR feed but would like financial reporting include it here.
    carrier_cost numeric(20, 10), -- Optional. If you are not sending Rain Man a separate CDR feed but would like financial reporting include it here.
    pdd int, -- Optional. Post Dial Delay as observed by the customer. Seconds or milliseconds based on your preference. Milliseconds recommended.
    lcr_depth smallint, -- Optional. LCR Depth of the call. Used to identify inefficient routing.
    batch_id text, -- Optional. ID to uniquely identify the batch of records. Normally the CDR file names is used. If you do not supply a batch_id then we will generate one using switch_id and timestamp.
    id bigserial NOT NULL, -- System-generated. Do not supply.
    received_time timestamp not null default now() -- System-generated. Do not supply.
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.customers
CREATE TABLE public.customers
(
    customer_id text COLLATE pg_catalog."default" NOT NULL,
    customer_name text COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT customer_pkey PRIMARY KEY (customer_id)
)
TABLESPACE pg_default;


-- Table: public.data_retention_setup
CREATE TABLE public.data_retention_setup
(
    dataset text COLLATE pg_catalog."default" NOT NULL, -- name of dataset
    retention_1min integer NOT NULL, -- retention period of 1-minute aggregates (in minutes)
    retention_hourly integer NOT NULL, -- retention period of hourly aggregates (in hours)
    retention_daily integer NOT NULL, -- retention period of daily aggregates (in days)
    CONSTRAINT data_retention_setup_pkey PRIMARY KEY (dataset)
)
TABLESPACE pg_default;


-- Table: public.deck_term_prefix_carrier
CREATE TABLE public.deck_term_prefix_carrier
(
    deck_id text COLLATE pg_catalog."default" NOT NULL,
    prefix text COLLATE pg_catalog."default" NOT NULL,
    rate_inter numeric(20,10),
    rate_intra numeric(20,10),
    rate_ij numeric(20,10),
    rate_intl numeric(20,10),
    interval_min smallint,
    interval_sub smallint,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    rate_local numeric(20,10),
    rate_interlata numeric(20,10),
    rate_intralata numeric(20,20),
    rate_tfani numeric(20,10),
    rate_intlani numeric(20,10),
    CONSTRAINT deck_term_prefix_carrier_pkey PRIMARY KEY (deck_id, prefix)
)
TABLESPACE pg_default;


-- Table: public.deck_term_prefix_customer
CREATE TABLE public.deck_term_prefix_customer
(
    deck_id text COLLATE pg_catalog."default" NOT NULL,
    prefix text COLLATE pg_catalog."default" NOT NULL,
    rate_inter numeric(20,10),
    rate_intra numeric(20,10),
    rate_ij numeric(20,10),
    rate_intl numeric(20,10),
    interval_min smallint,
    interval_sub smallint,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT deck_term_prefix_customer_pkey PRIMARY KEY (deck_id, prefix)
)
TABLESPACE pg_default;


-- Table: public.decks_apply_carrier
CREATE TABLE public.decks_apply_carrier
(
    id serial,
    deck_id text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    apply_date timestamp with time zone NOT NULL DEFAULT now(),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT decks_apply_carrier_pkey PRIMARY KEY (deck_id, tg_id, apply_date)
)
TABLESPACE pg_default;


-- Table: public.decks_apply_customer
CREATE TABLE public.decks_apply_customer
(
    id serial NOT NULL,
    deck_id text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    apply_date timestamp with time zone NOT NULL DEFAULT now(),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT decks_apply_customer_pkey PRIMARY KEY (deck_id, tg_id, apply_date)
)
TABLESPACE pg_default;


-- Table: public.decks_carrier
CREATE TABLE public.decks_carrier
(
    deck_id text COLLATE pg_catalog."default" NOT NULL,
    deck_name text COLLATE pg_catalog."default" NOT NULL,
    deck_type text COLLATE pg_catalog."default" NOT NULL,
    interval_min smallint NOT NULL,
    interval_sub smallint NOT NULL,
    routing_method text COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT decks_carrier_pkey PRIMARY KEY (deck_id)
)
TABLESPACE pg_default;


-- Table: public.decks_customer
CREATE TABLE public.decks_customer
(
    deck_id text NOT NULL,
    deck_name text NOT NULL,
    deck_type text NOT NULL,
    interval_min smallint NOT NULL,
    interval_sub smallint NOT NULL,
    routing_method text not null, -- lrn or dnis
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    PRIMARY KEY (deck_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.disc_numbers
CREATE TABLE public.disc_numbers
(
    dnis text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    expires_at timestamp without time zone NOT NULL,
    PRIMARY KEY (dnis)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.lerg6
CREATE TABLE public.lerg6
(
    lata text NOT NULL,
    npa text NOT NULL,
    nxx text NOT NULL,
    block_id text NOT NULL,
    aocn text NOT NULL,
    ocn text NOT NULL,
    loc_state text NOT NULL,
    rc_abbre text NOT NULL,
    switch text
)
WITH (
    OIDS = FALSE,
    FILLFACTOR = 100
)
TABLESPACE pg_default;


-- Table: public.signal_ips_customer
CREATE TABLE public.signal_ips_customer
(
    signal_ip text NOT NULL, -- IP customer is signaling from.
    tg_id text NOT NULL, -- customer's trunk group ID
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    PRIMARY KEY (signal_ip, tg_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.tg_routing
CREATE TABLE public.tg_routing
(
    id bigserial NOT NULL,
    tg_id_customer text NOT NULL,
    tg_id_carrier text NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT tg_routing_pkey PRIMARY KEY (tg_id_customer, tg_id_carrier)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- Table: public.transactions_customer
CREATE TABLE public.transactions_customer
(
    customer_id text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default",
    tran_date date NOT NULL,
    tran_amount numeric(10,2) NOT NULL,
    period_start timestamp with time zone,
    period_end timestamp with time zone,
    tran_ref text COLLATE pg_catalog."default",
    tran_desc text COLLATE pg_catalog."default",
    id bigserial NOT NULL
)
TABLESPACE pg_default;

-- sample transactions
-- insert into transactions_customer (customer_id, tran_date, tran_amount, tran_ref, tran_desc) values ('12345', Now(), 123.45, 'Auth: 1234567890', 'Payment Received.')
-- insert into transactions_customer (customer_id, tran_date, tran_amount, tran_ref, tran_desc) values ('12345', Now(), -123.45, 'Auth: 1234567890', 'Payment Voided.')


-- Table: public.trunk_groups_carrier
CREATE TABLE public.trunk_groups_carrier
(
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    carrier_id text COLLATE pg_catalog."default" NOT NULL,
    tg_name text COLLATE pg_catalog."default" NOT NULL,
    tg_type text COLLATE pg_catalog."default" NOT NULL,
    status text COLLATE pg_catalog."default" NOT NULL,
    ports integer,
    cps integer,
    target_asr numeric(5,2),
    target_ner numeric(5,2),
    target_acd smallint,
    target_sdr numeric(5,2),
    target_rvmr numeric(5,2),
    target_404r numeric(5,2),
    target_487r numeric(5,2),
    target_attempts integer,
    target_minutes integer,
    target_rate numeric(20,10),
    target_404_max numeric(5,2),
    trusted_404 smallint NOT NULL DEFAULT 0,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT trunk_groups_carrier_pkey PRIMARY KEY (tg_id)
)
TABLESPACE pg_default;


-- Table: public.trunk_groups_customer
CREATE TABLE public.trunk_groups_customer
(
    tg_id text COLLATE pg_catalog."default" NOT NULL, -- customer's trunk group ID
    customer_id text COLLATE pg_catalog."default", -- associated customer from customers table.
    tg_name text COLLATE pg_catalog."default", -- descriptive trunk group name
    tg_type text COLLATE pg_catalog."default", -- nanp or intl
    status text COLLATE pg_catalog."default" NOT NULL,
    ports integer, -- max port allowed
    cps integer, -- max CPS allowed
    target_asr numeric(5,2), -- target ASR for trunk group. Used in reporting/alarming/dashboards.
    target_ner numeric(5,2), -- reserved for future use
    target_acd smallint, -- target ACD for trunk group. Used in reporting/alarming/dashboards.
    target_sdr numeric(5,2), -- target short duration ratio/percent for trunk group. Used in reporting/alarming/dashboards.
    target_rvmr numeric(5,2), -- reserved for future use.
    target_404r numeric(5,2), -- target 404 ratio for trunk group. Used in reporting/alarming/dashboards.
    target_487r numeric(5,2), -- target 487 ratio for trunk group. Used in reporting/alarming/dashboards.
    target_attempts integer, -- target daily attempts for trunk group. Used in reporting/alarming/dashboards/traffic loss alarm.
    target_minutes integer, -- target daily minutes for trunk group. Used in reporting/alarming/dashboards/alarms.
    target_revenue numeric(20,2), -- target daily revenue for trunk group. Used in reporting/alarming/dashboards/alarms.
    target_profit numeric(20,2), -- target daily profit for trunk group. Used in reporting/alarming/dashboards/alarms.
    target_rate numeric(20,10), -- target daily average rate for trunk group. Used in reporting/alarming/dashboards/alarms.
    target_ppm numeric(20,10), -- target profit per minute for trunk group. Used in reporting/alarming/dashboards/alarms.
    target_margin numeric(5,2), -- target margin for trunk group. Used in reporting/alarming/dashboards/alarms.
    min_ppm numeric(20,10), -- minimum profit per minute. Used for profit protection. Leave null if not using.
    min_margin smallint, -- minimum margin (percent). Used for profit protection. Leave null if not using.
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT trunk_groups_customer_pkey PRIMARY KEY (tg_id)
)
TABLESPACE pg_default;


-- Table: public.trunks_carrier
CREATE TABLE public.trunks_carrier
(
    trunk_id text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    dest_ip text COLLATE pg_catalog."default" NOT NULL,
    port integer NOT NULL DEFAULT 5060,
    prefix text COLLATE pg_catalog."default" NOT NULL,
    strip text COLLATE pg_catalog."default" NOT NULL,
    status text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT trunks_carrier_pkey PRIMARY KEY (trunk_id)
)
TABLESPACE pg_default;


-- Table: public.trunks_customer
CREATE TABLE public.trunks_customer
(
    trunk_id text COLLATE pg_catalog."default" NOT NULL,
    tg_id text COLLATE pg_catalog."default" NOT NULL,
    source_ip text COLLATE pg_catalog."default" NOT NULL,
    port integer NOT NULL DEFAULT 5060,
    prefix text COLLATE pg_catalog."default" NOT NULL,
    strip text COLLATE pg_catalog."default" NOT NULL,
    status text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone,
    CONSTRAINT trunks_customer_pkey PRIMARY KEY (trunk_id)
)
TABLESPACE pg_default;



--
-- VIEWS
--

-- View: public.vw_agg_customer_tg_today
CREATE VIEW public.vw_agg_carrier_customer_tg_1min
 AS
select call_time
, tg_id_carrier
, tg_id_customer
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 60 as cps_avg
from agg_carrier_customer_tg_1min
group by call_time, tg_id_carrier, tg_id_customer;


-- View: public.vw_agg_carrier_customer_tg_daily
CREATE VIEW public.vw_agg_carrier_customer_tg_daily
 AS
select call_time
, tg_id_carrier
, tg_id_customer
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 86400 as cps_avg
from agg_carrier_customer_tg_daily
group by call_time, tg_id_carrier, tg_id_customer;


-- View: public.vw_agg_carrier_customer_tg_hourly
CREATE VIEW public.vw_agg_carrier_customer_tg_hourly
 AS
select call_time
, tg_id_carrier
, tg_id_customer
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0::numeric(5, 2) else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 3600 as cps_avg
from agg_carrier_customer_tg_hourly
group by call_time, tg_id_carrier, tg_id_customer;


-- View: public.vw_agg_carrier_mediaip_1min
CREATE VIEW public.vw_agg_carrier_mediaip_1min
 AS
select call_time
, tg_id
, media_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
from agg_carrier_mediaip_1min
group by call_time, tg_id, media_ip;


-- View: public.vw_agg_carrier_mediaip_daily
CREATE VIEW public.vw_agg_carrier_mediaip_daily
 AS
select call_time
, tg_id
, media_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
from agg_carrier_mediaip_daily
group by call_time, tg_id, media_ip;


-- View: public.vw_agg_carrier_mediaip_hourly
CREATE VIEW public.vw_agg_carrier_mediaip_hourly
 AS
select call_time
, tg_id
, media_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
from agg_carrier_mediaip_hourly
group by call_time, tg_id, media_ip;


-- View: public.vw_agg_carrier_network_1min
CREATE VIEW public.vw_agg_carrier_network_1min
 AS
select call_time
, sum(attempts) as attempts
, sum(attempts_ner) as attempts_ner
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, ((sum(completions) / sum(attempts_ner)::numeric) * 100)::numeric(5, 2) as ner
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 60 as cps_avg
from agg_carrier_network_1min
group by call_time;


-- View: public.vw_agg_carrier_network_daily
CREATE VIEW public.vw_agg_carrier_network_daily
 AS
select call_time
, sum(attempts) as attempts
, sum(attempts_ner) as attempts_ner
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, ((sum(completions) / sum(attempts_ner)::numeric) * 100)::numeric(5, 2) as ner
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 86400 as cps_avg
from agg_carrier_network_daily
group by call_time;


-- View: public.vw_agg_carrier_network_hourly
CREATE VIEW public.vw_agg_carrier_network_hourly
 AS
select call_time
, sum(attempts) as attempts
, sum(attempts_ner) as attempts_ner
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, ((sum(completions) / sum(attempts_ner)::numeric) * 100)::numeric(5, 2) as ner
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 3600 as cps_avg
from agg_carrier_network_hourly
group by call_time;


-- View: public.vw_agg_carrier_signalip_1min
CREATE VIEW public.vw_agg_carrier_signalip_1min
 AS
select call_time
, tg_id
, signal_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
from agg_carrier_signalip_1min
group by call_time, tg_id, signal_ip;


-- View: public.vw_agg_carrier_signalip_daily
CREATE VIEW public.vw_agg_carrier_signalip_daily
 AS
select call_time
, tg_id
, signal_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
from agg_carrier_signalip_daily
group by call_time, tg_id, signal_ip;


-- View: public.vw_agg_carrier_signalip_hourly
CREATE VIEW public.vw_agg_carrier_signalip_hourly
 AS
select call_time
, tg_id
, signal_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
from agg_carrier_signalip_hourly
group by call_time, tg_id, signal_ip;


-- View: public.vw_agg_carrier_tg_1min
CREATE VIEW public.vw_agg_carrier_tg_1min
 AS
select call_time
, tg_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 60 as cps_avg
from agg_carrier_tg_1min
group by call_time, tg_id;


-- View: public.vw_agg_carrier_tg_daily
CREATE VIEW public.vw_agg_carrier_tg_daily
 AS
select call_time
, tg_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 86400 as cps_avg
from agg_carrier_tg_daily
group by call_time, tg_id;


-- View: public.vw_agg_carrier_tg_hourly
CREATE VIEW public.vw_agg_carrier_tg_hourly
 AS
select call_time
, tg_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(carrier_cost) as carrier_cost
, sum(attempts) / 3600 as cps_avg
from agg_carrier_tg_hourly
group by call_time, tg_id;


-- View: public.vw_agg_carrier_tg_routingprefix_1min
CREATE VIEW public.vw_agg_carrier_tg_routingprefix_1min
 AS
select call_time
, tg_id
, routing_prefix
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
from agg_carrier_tg_routingprefix_1min
group by call_time, tg_id, routing_prefix;


-- View: public.vw_agg_carrier_tg_routingprefix_daily
CREATE VIEW public.vw_agg_carrier_tg_routingprefix_daily
 AS
select call_time
, tg_id
, routing_prefix
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
from agg_carrier_tg_routingprefix_daily
group by call_time, tg_id, routing_prefix;


-- View: public.vw_agg_carrier_tg_routingprefix_hourly
CREATE VIEW public.vw_agg_carrier_tg_routingprefix_hourly
 AS
select call_time
, tg_id
, routing_prefix
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
from agg_carrier_tg_routingprefix_hourly
group by call_time, tg_id, routing_prefix;


-- View: public.vw_agg_customer_ani_1min
CREATE VIEW public.vw_agg_customer_ani_1min
 AS
select call_time
, ani
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 60 as cps_avg
from agg_customer_ani_1min
group by call_time, ani;


-- View: public.vw_agg_customer_ani_daily
CREATE VIEW public.vw_agg_customer_ani_daily
 AS
select call_time
, ani
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 86400 as cps_avg
from agg_customer_ani_daily
group by call_time, ani;


-- View: public.vw_agg_customer_ani_hourly
CREATE VIEW public.vw_agg_customer_ani_hourly
 AS
select call_time
, ani
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_ani_hourly
group by call_time, ani;


-- View: public.vw_agg_customer_dnislata_1min
CREATE VIEW public.vw_agg_customer_dnislata_1min
 AS
select call_time
, dnis_lata
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 60 as cps_avg
from agg_customer_dnislata_1min
group by call_time, dnis_lata;


-- View: public.vw_agg_customer_dnislata_daily
CREATE VIEW public.vw_agg_customer_dnislata_daily
 AS
select call_time
, dnis_lata
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_dnislata_daily
group by call_time, dnis_lata;


-- View: public.vw_agg_customer_dnislata_hourly
CREATE VIEW public.vw_agg_customer_dnislata_hourly
 AS
select call_time
, dnis_lata
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_dnislata_hourly
group by call_time, dnis_lata;


-- View: public.vw_agg_customer_dnisocn_1min
CREATE VIEW public.vw_agg_customer_dnisocn_1min
 AS
select call_time
, dnis_ocn
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 60 as cps_avg
from agg_customer_dnisocn_1min
group by call_time, dnis_ocn;


-- View: public.vw_agg_customer_dnisocn_daily
CREATE VIEW public.vw_agg_customer_dnisocn_daily
 AS
select call_time
, dnis_ocn
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 86400 as cps_avg
from agg_customer_dnisocn_daily
group by call_time, dnis_ocn;


-- View: public.vw_agg_customer_dnisocn_hourly
CREATE VIEW public.vw_agg_customer_dnisocn_hourly
 AS
select call_time
, dnis_ocn
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_dnisocn_hourly
group by call_time, dnis_ocn;


-- View: public.vw_agg_customer_dnisstate_1min
CREATE VIEW public.vw_agg_customer_dnisstate_1min
 AS
select call_time
, dnis_state
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 60 as cps_avg
from agg_customer_dnisstate_1min
group by call_time, dnis_state;


-- View: public.vw_agg_customer_dnisstate_daily
CREATE VIEW public.vw_agg_customer_dnisstate_daily
 AS
select call_time
, dnis_state
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 86400 as cps_avg
from agg_customer_dnisstate_daily
group by call_time, dnis_state;


-- View: public.vw_agg_customer_dnisstate_hourly
CREATE VIEW public.vw_agg_customer_dnisstate_hourly
 AS
select call_time
, dnis_state
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_dnisstate_hourly
group by call_time, dnis_state;


-- View: public.vw_agg_customer_mediaip_1min
CREATE VIEW public.vw_agg_customer_mediaip_1min
 AS
select call_time
, media_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 60 as cps_avg
from agg_customer_mediaip_1min
group by call_time, media_ip;


-- View: public.vw_agg_customer_mediaip_daily
CREATE VIEW public.vw_agg_customer_mediaip_daily
 AS
select call_time
, media_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 86400 as cps_avg
from agg_customer_mediaip_daily
group by call_time, media_ip;


-- View: public.vw_agg_customer_mediaip_hourly
CREATE VIEW public.vw_agg_customer_mediaip_hourly
 AS
select call_time
, media_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_mediaip_hourly
group by call_time, media_ip;


-- View: public.vw_agg_customer_network_1min
CREATE VIEW public.vw_agg_customer_network_1min
 AS
select call_time
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 60 as cps_avg
from agg_customer_network_1min
group by call_time;


-- View: public.vw_agg_customer_network_daily
CREATE VIEW public.vw_agg_customer_network_daily
 AS
select call_time
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
from agg_customer_network_daily
group by call_time;


-- View: public.vw_agg_customer_network_hourly
CREATE VIEW public.vw_agg_customer_network_hourly
 AS
select call_time
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
from agg_customer_network_hourly
group by call_time;


-- View: public.vw_agg_customer_signalip_1min
CREATE VIEW public.vw_agg_customer_signalip_1min
 AS
select call_time
, signal_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 60 as cps_avg
from agg_customer_signalip_1min
group by call_time, signal_ip;


-- View: public.vw_agg_customer_signalip_daily
CREATE VIEW public.vw_agg_customer_signalip_daily
 AS
select call_time
, signal_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 86400 as cps_avg
from agg_customer_signalip_daily
group by call_time, signal_ip;


-- View: public.vw_agg_customer_signalip_hourly
CREATE VIEW public.vw_agg_customer_signalip_hourly
 AS
select call_time
, signal_ip
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 3600 as cps_avg
from agg_customer_signalip_hourly
group by call_time, signal_ip;


-- View: public.vw_agg_customer_switchid_1min
CREATE VIEW public.vw_agg_customer_switchid_1min
 AS
select call_time
, switch_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 60 as cps_avg
from agg_customer_switchid_1min
group by call_time, switch_id;


-- View: public.vw_agg_customer_switchid_daily
CREATE VIEW public.vw_agg_customer_switchid_daily
 AS
select call_time
, switch_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_switchid_daily
group by call_time, switch_id;


-- View: public.vw_agg_customer_switchid_hourly
CREATE VIEW public.vw_agg_customer_switchid_hourly
 AS
select call_time
, switch_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, case sum(completions) when 0 then 0.00 else ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) end as sdr
, sum(code_404) as "404s"
, case sum(completions) when 0 then 0.00 else ((sum(code_404) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "404r"
, sum(code_487) as "487s"
, case sum(completions) when 0 then 0.00 else ((sum(code_487) / sum(attempts)::numeric) * 100)::numeric(5, 2) end as "487r"
, sum(revenue) as revenue
, sum(attempts) / 3600 as cps_avg
from agg_customer_switchid_hourly
group by call_time, switch_id;


-- View: public.vw_agg_customer_tg_1min
CREATE VIEW public.vw_agg_customer_tg_1min
 AS
select call_time
, tg_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 60 as cps_avg
from agg_customer_tg_1min
group by call_time, tg_id;


-- View: public.vw_agg_customer_tg_daily
CREATE VIEW public.vw_agg_customer_tg_daily
 AS
select call_time
, tg_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 86400 as cps_avg
from agg_customer_tg_daily
group by call_time, tg_id;


-- View: public.vw_agg_customer_tg_hourly
CREATE VIEW public.vw_agg_customer_tg_hourly
 AS
select call_time
, tg_id
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
, sum(duration) as duration_seconds
, sum(duration_billed) as duration_billed_seconds
, sum(sd) as sd
, ((sum(sd) / sum(completions)::numeric) * 100)::numeric(5, 2) as sdr
, sum(code_404) as "404s"
, ((sum(code_404) / sum(completions)::numeric) * 100)::numeric(5, 2) as "404r"
, sum(code_487) as "487s"
, ((sum(code_487) / sum(completions)::numeric) * 100)::numeric(5, 2) as "487r"
, sum(revenue) as revenue
, sum(carrier_cost) as carrier_cost
, sum(revenue) - sum(carrier_cost) as profit
, sum(attempts) / 3600 as cps_avg
from agg_customer_tg_hourly
group by call_time, tg_id;


-- View: public.vw_agg_customer_tg_routingprefix_1min
CREATE VIEW public.vw_agg_customer_tg_routingprefix_1min
 AS
select call_time
, tg_id
, routing_prefix
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
from agg_customer_tg_routingprefix_1min
group by call_time, tg_id, routing_prefix;


-- View: public.vw_agg_customer_tg_routingprefix_daily
CREATE VIEW public.vw_agg_customer_tg_routingprefix_daily
 AS
select call_time
, tg_id
, routing_prefix
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
from agg_customer_tg_routingprefix_daily
group by call_time, tg_id, routing_prefix;


-- View: public.vw_agg_customer_tg_routingprefix_hourly
CREATE VIEW public.vw_agg_customer_tg_routingprefix_hourly
 AS
select call_time
, tg_id
, routing_prefix
, sum(attempts) as attempts
, sum(completions) as completions
, ((sum(completions) / sum(attempts)::numeric) * 100)::numeric(5, 2) as asr
from agg_customer_tg_routingprefix_hourly
group by call_time, tg_id, routing_prefix;


-- View: public.vw_agg_customer_tg_today
CREATE VIEW public.vw_agg_customer_tg_today
 AS
 SELECT agg_customer_tg_daily.call_time,
    agg_customer_tg_daily.tg_id,
    sum(agg_customer_tg_daily.attempts) AS attempts,
    sum(agg_customer_tg_daily.completions) AS completions,
    (sum(agg_customer_tg_daily.completions)::numeric / sum(agg_customer_tg_daily.attempts)::numeric * 100::numeric)::numeric(5,2) AS asr,
    sum(agg_customer_tg_daily.duration) AS duration_seconds,
    sum(agg_customer_tg_daily.duration_billed) AS duration_billed_seconds,
    sum(agg_customer_tg_daily.sd) AS sd,
    (sum(agg_customer_tg_daily.sd)::numeric / sum(agg_customer_tg_daily.completions)::numeric * 100::numeric)::numeric(5,2) AS sdr,
    sum(agg_customer_tg_daily.code_404) AS "404s",
    (sum(agg_customer_tg_daily.code_404)::numeric / sum(agg_customer_tg_daily.completions)::numeric * 100::numeric)::numeric(5,2) AS "404r",
    sum(agg_customer_tg_daily.code_487) AS "487s",
    (sum(agg_customer_tg_daily.code_487)::numeric / sum(agg_customer_tg_daily.completions)::numeric * 100::numeric)::numeric(5,2) AS "487r",
    sum(agg_customer_tg_daily.revenue) AS revenue,
    sum(agg_customer_tg_daily.carrier_cost) AS carrier_cost,
    sum(agg_customer_tg_daily.revenue) - sum(agg_customer_tg_daily.carrier_cost) AS profit,
    sum(agg_customer_tg_daily.attempts) / 86400 AS cps_avg
   FROM agg_customer_tg_daily
   where agg_customer_tg_daily.call_time >= Now()::date
  GROUP BY agg_customer_tg_daily.call_time, agg_customer_tg_daily.tg_id;


-- View: public.vw_transaction_summary_customer
CREATE VIEW public.vw_transaction_summary_customer
 AS
 SELECT transactions_customer.customer_id,
    sum(transactions_customer.tran_amount) AS tran_summ
   FROM transactions_customer
  GROUP BY transactions_customer.customer_id;


-- View: public.vw_usage_summary_customer
CREATE VIEW public.vw_usage_summary_customer
 AS
 SELECT coalesce(trunk_groups_customer.customer_id, 'customer_id not assigned in trunk_groups_customer') as customer_id
    , sum(agg_customer_tg_daily.revenue) AS usage_amount
   FROM agg_customer_tg_daily
   right outer join trunk_groups_customer on trunk_groups_customer.tg_id = agg_customer_tg_daily.tg_id
   where agg_customer_tg_daily.revenue >= 0
  GROUP BY trunk_groups_customer.customer_id;


-- View: public.vw_balances_customer
CREATE VIEW public.vw_balances_customer
 AS
 SELECT vw_transaction_summary_customer.customer_id
    , vw_transaction_summary_customer.tran_summ
    , vw_usage_summary_customer.usage_amount
    , vw_transaction_summary_customer.tran_summ + vw_usage_summary_customer.usage_amount as running_balance
   FROM vw_transaction_summary_customer
   left outer join vw_usage_summary_customer on vw_usage_summary_customer.customer_id = vw_transaction_summary_customer.customer_id;


-- View: public.vw_current_tg_deck_carrier
CREATE VIEW public.vw_current_tg_deck_carrier
 AS
 SELECT decks_apply_carrier.tg_id,
    decks_apply_carrier.deck_id
   FROM decks_apply_carrier
  WHERE ((decks_apply_carrier.apply_date || '-'::text) || decks_apply_carrier.tg_id IN ( SELECT (max(decks_apply_1.apply_date) || '-'::text) || decks_apply_1.tg_id
           FROM decks_apply_carrier decks_apply_1
          WHERE decks_apply_1.apply_date <= now()
          GROUP BY decks_apply_1.tg_id));


-- View: public.vw_current_tg_deck_customer
CREATE VIEW public.vw_current_tg_deck_customer
 AS
 SELECT decks_apply_customer.tg_id,
    decks_apply_customer.deck_id
   FROM decks_apply_customer
  WHERE ((decks_apply_customer.apply_date || '-'::text) || decks_apply_customer.tg_id IN ( SELECT (max(decks_apply_1.apply_date) || '-'::text) || decks_apply_1.tg_id
           FROM decks_apply_customer decks_apply_1
          WHERE decks_apply_1.apply_date <= now()
          GROUP BY decks_apply_1.tg_id));


-- View: public.vw_daily_spend_customer_tg
CREATE VIEW public.vw_daily_spend_customer_tg
 AS
 SELECT agg_customer_tg_daily.tg_id
    , agg_customer_tg_daily.call_time::date AS date
    , sum(agg_customer_tg_daily.revenue) AS spend
    , to_char(min(call_time), 'Day') as "day_of_week"
   FROM agg_customer_tg_daily
  GROUP BY agg_customer_tg_daily.tg_id, (agg_customer_tg_daily.call_time::date);


-- View: public.vw_spend_dayofweek_customer_tg
CREATE VIEW public.vw_spend_dayofweek_customer_tg
 AS
 SELECT vw_daily_spend_customer_tg.tg_id
    , day_of_week as "day_of_week"
    , avg(vw_daily_spend_customer_tg.spend)::numeric(20, 2) AS spend_avg
   FROM vw_daily_spend_customer_tg
  GROUP BY vw_daily_spend_customer_tg.tg_id, (vw_daily_spend_customer_tg.day_of_week);


-- View: public.vw_potential_fraud_customer_tg_today
-- DOCUMENTATION:https://github.com/rainmandata/networkanalytics-voice/wiki/Potential-Fraud-Reporting
CREATE VIEW public.vw_potential_fraud_customer_tg_today
 AS
 SELECT trunk_groups_customer.tg_id
 , trunk_groups_customer.tg_name
 , vw_agg_customer_tg_today.attempts
 , vw_spend_dayofweek_customer_tg.spend_avg
 , vw_agg_customer_tg_today.revenue as "spend_today"
 , (((vw_agg_customer_tg_today.revenue - vw_spend_dayofweek_customer_tg.spend_avg) / vw_spend_dayofweek_customer_tg.spend_avg) * 100)::numeric(10, 2) as "over_under%" -- positive value = above normal spend. Negative value = below normal.
 from trunk_groups_customer
 join vw_spend_dayofweek_customer_tg on vw_spend_dayofweek_customer_tg.tg_id = trunk_groups_customer.tg_id
 join vw_agg_customer_tg_today on vw_agg_customer_tg_today.tg_id = trunk_groups_customer.tg_id
 where vw_spend_dayofweek_customer_tg.day_of_week = to_char(Now(), 'Day');



--
-- MATERIALIZED VIEWS
--


-- Materialized view: public.mv_lerg6
CREATE MATERIALIZED VIEW public.mv_lerg6
TABLESPACE pg_default
AS
 SELECT max(lerg6.lata) AS lata,
    max(lerg6.ocn) AS ocn,
    max(lerg6.loc_state) AS state,
    max(lerg6.switch) AS switch,
    (('1'::text || lerg6.npa) || lerg6.nxx) || lerg6.block_id AS prefix
   FROM lerg6
  WHERE lerg6.block_id <> 'A'::text
  GROUP BY lerg6.npa, lerg6.nxx, lerg6.block_id
WITH DATA;


-- Materialized view: public.mv_lerg6a
CREATE MATERIALIZED VIEW public.mv_lerg6a
TABLESPACE pg_default
AS
 SELECT max(lerg6.lata) AS lata,
    max(lerg6.ocn) AS ocn,
    max(lerg6.loc_state) AS state,
    max(lerg6.switch) AS switch,
    ('1'::text || lerg6.npa) || lerg6.nxx AS prefix
   FROM lerg6
  WHERE lerg6.block_id = 'A'::text
  GROUP BY lerg6.npa, lerg6.nxx
WITH DATA;


-- Materialized view: public.mv_redis_deck_term_prefix_carrier
CREATE MATERIALIZED VIEW public.mv_redis_deck_term_prefix_carrier
TABLESPACE pg_default
AS
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'E' AS key,
    deck_term_prefix_carrier.rate_inter AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'E' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_inter IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'A' AS key,
    deck_term_prefix_carrier.rate_intra AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'A' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_intra IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'U' AS key,
    deck_term_prefix_carrier.rate_ij AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'U' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_ij IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'L' AS key,
    deck_term_prefix_carrier.rate_local AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'L' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_local IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'EL' AS key,
    deck_term_prefix_carrier.rate_interlata AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'EL' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_interlata IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'AL' AS key,
    deck_term_prefix_carrier.rate_intralata AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'AL' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_intralata IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'ANI_TF' AS key,
    deck_term_prefix_carrier.rate_tfani AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'ANI_TF' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_tfani IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_carrier.deck_id || '_' || deck_term_prefix_carrier.prefix || '_' || 'ANI_INTL' AS key,
    deck_term_prefix_carrier.rate_intlani AS rate,
    deck_term_prefix_carrier.deck_id,
    deck_term_prefix_carrier.prefix,
    'ANI_INTL' AS juris
   FROM deck_term_prefix_carrier
  WHERE deck_term_prefix_carrier.rate_intlani IS NOT NULL
WITH DATA;

CREATE UNIQUE INDEX on mv_redis_deck_term_prefix_carrier (key); 

-- See Maintenance instructions for mv_redis_deck_term_prefix_carrier https://github.com/rainmandata/networkanalytics-voice/wiki/Maintenance


-- Materialized view: public.mv_redis_deck_term_prefix_customer
CREATE MATERIALIZED VIEW public.mv_redis_deck_term_prefix_customer
TABLESPACE pg_default
AS
 SELECT deck_term_prefix_customer.deck_id || '_' || deck_term_prefix_customer.prefix || '_' || 'E' AS key,
    deck_term_prefix_customer.rate_inter AS rate,
    deck_term_prefix_customer.deck_id,
    deck_term_prefix_customer.prefix,
    'E'::text AS juris
   FROM deck_term_prefix_customer
  WHERE deck_term_prefix_customer.rate_inter IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_customer.deck_id || '_' || deck_term_prefix_customer.prefix || '_' || 'A' AS key,
    deck_term_prefix_customer.rate_intra AS rate,
    deck_term_prefix_customer.deck_id,
    deck_term_prefix_customer.prefix,
    'A'::text AS juris
   FROM deck_term_prefix_customer
  WHERE deck_term_prefix_customer.rate_intra IS NOT NULL
UNION ALL
 SELECT deck_term_prefix_customer.deck_id || '_' || deck_term_prefix_customer.prefix || '_' || 'U' AS key,
    deck_term_prefix_customer.rate_ij AS rate,
    deck_term_prefix_customer.deck_id,
    deck_term_prefix_customer.prefix,
    'U'::text AS juris
   FROM deck_term_prefix_customer
  WHERE deck_term_prefix_customer.rate_ij IS NOT NULL
WITH DATA;

CREATE UNIQUE INDEX on mv_redis_deck_term_prefix_customer (key); 

-- See Maintenance instructions for mv_redis_deck_term_prefix_customer https://github.com/rainmandata/networkanalytics-voice/wiki/Maintenance


-- Materialized view: public.mv_tg_rates_customer
CREATE MATERIALIZED VIEW public.mv_tg_rates_customer
TABLESPACE pg_default
AS
 SELECT (((vw_current_tg_deck_customer.tg_id || '_'::text) || mv_redis_deck_term_prefix_customer.prefix) || '_'::text) || mv_redis_deck_term_prefix_customer.juris AS key,
    mv_redis_deck_term_prefix_customer.rate AS value,
    vw_current_tg_deck_customer.tg_id,
    mv_redis_deck_term_prefix_customer.prefix,
    mv_redis_deck_term_prefix_customer.juris,
    mv_redis_deck_term_prefix_customer.rate,
    vw_current_tg_deck_customer.deck_id
   FROM vw_current_tg_deck_customer
     JOIN mv_redis_deck_term_prefix_customer ON vw_current_tg_deck_customer.deck_id = mv_redis_deck_term_prefix_customer.deck_id
WITH DATA;

CREATE UNIQUE INDEX on mv_tg_rates_customer (key); 

CREATE UNIQUE INDEX idx_customer_rate ON mv_tg_rates_customer (tg_id, prefix, juris) INCLUDE (rate);

-- See Maintenance instructions for mv_tg_rates_customer https://github.com/rainmandata/networkanalytics-voice/wiki/Maintenance



--
-- FUNCTIONS
--


-- Function: public.fnanalyze_capacity_perf_carrier()

-- DOCUMENTATION: https://github.com/rainmandata/networkanalytics-voice/wiki/Carrier-Performance-vs-Capacity
-- SAMPLE EXECUTION: select * from fnanalyze_capacity_perf_carrier('37', '2021-01-01 10:00:00', '2021-01-31 17:00:00');

-- DEPENDENCIES
-- Table: agg_carrier_tg_1sec

create function fnanalyze_capacity_perf_carrier (
    p_tg_id text --carrier trunk group ID
    , p_start_date timestamp without time zone
    , p_end_date timestamp without time zone
)
returns table ( call_time timestamp without time zone
              , cps int
              , completions int
              , asr numeric(5, 2)) 
language plpgsql
as $$
declare

begin

RETURN QUERY 
    select agg_carrier_tg_1sec.call_time
    , agg_carrier_tg_1sec.attempts as "cps"
    , agg_carrier_tg_1sec.completions
    , ((agg_carrier_tg_1sec.completions / agg_carrier_tg_1sec.attempts::numeric) * 100) ::numeric(5, 2) as "asr"
    from agg_carrier_tg_1sec
    where agg_carrier_tg_1sec.tg_id = p_tg_id
    and agg_carrier_tg_1sec.call_time >= p_start_date
    and agg_carrier_tg_1sec.call_time <= p_end_date
    order by agg_carrier_tg_1sec.call_time;

end;
$$;


-- Function: public.fnanalyze_deck_perf_carrier()

-- DOCUMENTATION: https://github.com/rainmandata/networkanalytics-voice/wiki/Carrier-Performance-Decks
-- SAMPLE EXECUTION: select * from fnanalyze_deck_perf_carrier('9', '2020-01-01', '2021-12-31');

-- AUGMENTATIONS
-- Make sure carrier deck didn't change within the period specified.
-- Modify to exclude uncompleteable attempts (404, etc)

-- DEPENDENCIES
-- View: vw_current_tg_deck_carrier
-- Table: deck_term_prefix_carrier
-- Table: agg_carrier_tg_routingprefix_daily

create function public.fnanalyze_deck_perf_carrier (
    p_tg_id text --carrier trunk group ID
    , p_start_date date
    , p_end_date date
)
returns table ( tg_id text
              , deck_id text
              , prefix text
              , attempts bigint
              , completions bigint
              , asr numeric(5, 2)) 
language plpgsql
as $$
declare

begin

DROP TABLE IF EXISTS tmp_deck_perf_carrier;

-- results left in tmp table between runs in case you want to pull from there.
CREATE TABLE tmp_deck_perf_carrier AS
    select vw_current_tg_deck_carrier.tg_id
    , vw_current_tg_deck_carrier.deck_id 
    , deck_term_prefix_carrier.prefix
    , coalesce(sum(agg_carrier_tg_routingprefix_daily.attempts), 0) as "attempts"
    , coalesce(sum(agg_carrier_tg_routingprefix_daily.completions), 0) as "completions"
    , case coalesce(sum(agg_carrier_tg_routingprefix_daily.attempts), 0) when 0 then 0 else ((coalesce(sum(agg_carrier_tg_routingprefix_daily.completions), 0) / coalesce(sum(agg_carrier_tg_routingprefix_daily.attempts), 0)::numeric) * 100)::numeric(5, 2) end as "asr"
    from vw_current_tg_deck_carrier
    inner join deck_term_prefix_carrier on deck_term_prefix_carrier.deck_id = vw_current_tg_deck_carrier.deck_id
    left outer join agg_carrier_tg_routingprefix_daily on agg_carrier_tg_routingprefix_daily.routing_prefix = deck_term_prefix_carrier.prefix
        where vw_current_tg_deck_carrier.tg_id = p_tg_id
        and agg_carrier_tg_routingprefix_daily.call_time >= p_start_date
        and agg_carrier_tg_routingprefix_daily.call_time <= p_end_date
        group by vw_current_tg_deck_carrier.tg_id
    , vw_current_tg_deck_carrier.deck_id 
    , deck_term_prefix_carrier.prefix;

RETURN QUERY 
    select tmp_deck_perf_carrier.tg_id
    , tmp_deck_perf_carrier.deck_id
    , tmp_deck_perf_carrier.prefix
    , tmp_deck_perf_carrier.attempts
    , tmp_deck_perf_carrier.completions
    , tmp_deck_perf_carrier.asr
    from tmp_deck_perf_carrier
    order by attempts desc;

end;
$$;


-- Function: public.fnanalyze_deck_perf_customer()

-- select * from fnanalyze_deck_perf_customer('1521', '2020-01-01', '2020-12-31');

-- DEPENDENCIES
-- View: vw_current_tg_deck_customer
-- Table: deck_term_prefix_customer
-- Table: agg_customer_tg_routingprefix_daily

create function public.fnanalyze_deck_perf_customer (
    p_tg_id text
    , p_start_date date
    , p_end_date date
)
returns table ( tg_id text
              , deck_id text
              , prefix text
              , attempts bigint
              , completions bigint
              , asr numeric(5, 2)) 
language plpgsql
as $$
declare

begin

DROP TABLE IF EXISTS tmp_deck_perf_customer;

--results left in tmp table between runs in case you want to pull from there.
CREATE TABLE tmp_deck_perf_customer AS
    select vw_current_tg_deck_customer.tg_id
    , vw_current_tg_deck_customer.deck_id 
    , deck_term_prefix_customer.prefix
    , coalesce(sum(agg_customer_tg_routingprefix_daily.attempts), 0) as "attempts"
    , coalesce(sum(agg_customer_tg_routingprefix_daily.completions), 0) as "completions"
    , case coalesce(sum(agg_customer_tg_routingprefix_daily.attempts), 0) when 0 then 0 else ((coalesce(sum(agg_customer_tg_routingprefix_daily.completions), 0) / coalesce(sum(agg_customer_tg_routingprefix_daily.attempts), 0)::numeric) * 100)::numeric(5, 2) end as "asr"
    from vw_current_tg_deck_customer
    inner join deck_term_prefix_customer on deck_term_prefix_customer.deck_id = vw_current_tg_deck_customer.deck_id
    left outer join agg_customer_tg_routingprefix_daily on agg_customer_tg_routingprefix_daily.routing_prefix = deck_term_prefix_customer.prefix
        where vw_current_tg_deck_customer.tg_id = p_tg_id
        and agg_customer_tg_routingprefix_daily.call_time >= p_start_date
        and agg_customer_tg_routingprefix_daily.call_time <= p_end_date
        group by vw_current_tg_deck_customer.tg_id
    , vw_current_tg_deck_customer.deck_id 
    , deck_term_prefix_customer.prefix;

RETURN QUERY 
    select tmp_deck_perf_customer.tg_id
    , tmp_deck_perf_customer.deck_id
    , tmp_deck_perf_customer.prefix
    , tmp_deck_perf_customer.attempts
    , tmp_deck_perf_customer.completions
    , tmp_deck_perf_customer.asr
    from tmp_deck_perf_customer
    order by attempts desc;

end;
$$;


-- Function: public.fnanalyze_traffic_profile_customer()

-- DOCUMENTATION: https://github.com/rainmandata/networkanalytics-voice/wiki/Customer-Traffic-Profile-Monitoring
-- SAMPLE EXECUTION: select * from fnanalyze_traffic_profile_customer('2020-01-01', '2020-12-31');

-- DEPENDENCIES
-- Table: trunk_groups_customer
-- Table: agg_customer_tg_daily

-- AUGMENTATIONS
-- 1. Detect if period is less than a day and switch source the _1min agg.
-- 2. Add ability to archive the calculation.

create function public.fnanalyze_traffic_profile_customer (
      p_start_datetime timestamp without time zone
    , p_end_datetime timestamp without time zone
)
returns table ( tg_id text
              , attempts bigint
              , completions bigint
              , asr_target numeric(5, 2)
              , asr_actual numeric(5, 2)
              , asr_variance numeric(5, 2)
              , acd_target smallint
              , acd_actual smallint
              , acd_variance smallint
              , sdr_target numeric(5, 2)
              , sdr_actual numeric(5, 2)
              , sdr_variance numeric(5, 2)
              , "404r_target" numeric(5, 2)
              , "404r_actual" numeric(5, 2)
              , "404r_variance" numeric(5, 2)
              , "487r_target" numeric(5, 2)
              , "487r_actual" numeric(5, 2)
              , "487r_variance" numeric(5, 2)
              , tg_name text
              , tg_status text
              , customer_id text
)
language plpgsql
as $$
declare

begin

DROP TABLE IF EXISTS tmp_traffic_profile_customer;

-- results left in tmp table between runs in case you want to pull from there.
CREATE TABLE tmp_traffic_profile_customer AS
    select trunk_groups_customer.tg_id
    , coalesce(sum(agg_customer_tg_daily.attempts), 0) as "attempts"
    , coalesce(sum(agg_customer_tg_daily.completions), 0) as "completions" 
    , trunk_groups_customer.target_asr as "asr_target"
    , ((coalesce(sum(agg_customer_tg_daily.completions), 0) / coalesce(sum(agg_customer_tg_daily.attempts), 0)::numeric) * 100)::numeric(5, 2) as "asr_actual"
    , trunk_groups_customer.target_acd as "acd_target"
    , (sum(agg_customer_tg_daily.duration_billed) / sum(agg_customer_tg_daily.completions))::smallint as "acd_actual"
    , trunk_groups_customer.target_sdr as "sdr_target"
    , ((coalesce(sum(agg_customer_tg_daily.sd), 0) / coalesce(sum(agg_customer_tg_daily.completions), 0)::numeric) * 100)::numeric(5, 2) as "sdr_actual"
    , trunk_groups_customer.target_404r as "404r_target"
    , ((coalesce(sum(agg_customer_tg_daily.code_404), 0) / coalesce(sum(agg_customer_tg_daily.attempts), 0)::numeric) * 100)::numeric(5, 2) as "404r_actual"
    , trunk_groups_customer.target_487r as "487r_target"
    , ((coalesce(sum(agg_customer_tg_daily.code_487), 0) / coalesce(sum(agg_customer_tg_daily.attempts), 0)::numeric) * 100)::numeric(5, 2) as "487r_actual"
    from trunk_groups_customer
    left outer join agg_customer_tg_daily on agg_customer_tg_daily.tg_id = trunk_groups_customer.tg_id
        where agg_customer_tg_daily.call_time >= p_start_datetime
            and agg_customer_tg_daily.call_time <= p_end_datetime
        group by trunk_groups_customer.tg_id
    ;

RETURN QUERY 
    select tmp_traffic_profile_customer.tg_id
    , tmp_traffic_profile_customer.attempts
    , tmp_traffic_profile_customer.completions
    , tmp_traffic_profile_customer.asr_target
    , tmp_traffic_profile_customer.asr_actual
    , tmp_traffic_profile_customer.asr_actual - tmp_traffic_profile_customer.asr_target as "asr_variance"
    , tmp_traffic_profile_customer.acd_target
    , tmp_traffic_profile_customer.acd_actual
    , tmp_traffic_profile_customer.acd_actual - tmp_traffic_profile_customer.acd_target as "acd_variance"
    , tmp_traffic_profile_customer.sdr_target
    , tmp_traffic_profile_customer.sdr_actual
    , tmp_traffic_profile_customer.sdr_actual - tmp_traffic_profile_customer.sdr_target as "sdr_variance"
    , tmp_traffic_profile_customer."404r_target"
    , tmp_traffic_profile_customer."404r_actual"
    , tmp_traffic_profile_customer."404r_actual" - tmp_traffic_profile_customer."404r_target" as "404r_variance"
    , tmp_traffic_profile_customer."487r_target"
    , tmp_traffic_profile_customer."487r_actual"
    , tmp_traffic_profile_customer."487r_actual" - tmp_traffic_profile_customer."487r_target" as "487r_variance"
    , trunk_groups_customer.tg_name
    , trunk_groups_customer.status as "tg_status"
    , trunk_groups_customer.customer_id
    from tmp_traffic_profile_customer
    inner join trunk_groups_customer on trunk_groups_customer.tg_id = tmp_traffic_profile_customer.tg_id
    order by tmp_traffic_profile_customer.attempts desc
    ;

end;
$$;


-- Function: public.fnanalyze_trunk_perf_carrier()

-- DOCUMENTATION: https://github.com/rainmandata/networkanalytics-voice/wiki/Carrier-Trunk-Performance
-- SAMPLE EXECUTION: select * from fnanalyze_trunk_perf_carrier('2021-01-01', '2021-01-31 12:00:00');

-- DEPENDENCIES
-- Table: agg_carrier_signalip_daily - 
-- Table: trunk_groups_carrier - https://github.com/rainmandata/networkanalytics-voice/blob/main/tbl_trunk_groups_carrier.txt

create function public.fnanalyze_trunk_perf_carrier (
      p_start_datetime timestamp without time zone
    , p_end_datetime timestamp without time zone
) 
returns table ( tg_id text
               , tg_name text
               , tg_attempts bigint
               , tg_completions bigint
               , tg_asr numeric(5, 2)
               , trunk_number bigint
               , signal_ip text
               , trunk_attempts bigint
               , trunk_competions bigint
               , trunk_asr numeric(5, 2)
               , asr_variance numeric(5, 2)
)
language plpgsql
as $$
declare

begin

DROP TABLE IF EXISTS tmp_trunk_perf_per_tg;

CREATE TABLE tmp_trunk_perf_per_tg as
    SELECT agg_carrier_signalip_daily.tg_id
    , sum(agg_carrier_signalip_daily.attempts) as "tg_attempts"
    , sum(agg_carrier_signalip_daily.completions) as "tg_completions"
    , ((sum(agg_carrier_signalip_daily.completions) / sum(agg_carrier_signalip_daily.attempts)::numeric) * 100)::numeric(5, 2) as "tg_asr"
        from agg_carrier_signalip_daily 
    where agg_carrier_signalip_daily.call_time >= p_start_datetime
    and agg_carrier_signalip_daily.call_time <= p_end_datetime
    group by agg_carrier_signalip_daily.tg_id;

RETURN QUERY 
    select tmp_trunk_perf_per_tg.tg_id
    , coalesce(trunk_groups_carrier.tg_name, 'trunk_groups_carrier.tg_name not set.') as tg_name
    , tmp_trunk_perf_per_tg.tg_attempts
    , tmp_trunk_perf_per_tg.tg_completions
    , tmp_trunk_perf_per_tg.tg_asr
    , ROW_NUMBER () OVER (PARTITION BY tmp_trunk_perf_per_tg.tg_id ORDER BY sum(agg_carrier_signalip_daily.attempts) desc)
    , agg_carrier_signalip_daily.signal_ip
    , sum(agg_carrier_signalip_daily.attempts) as "trunk_attempts"
    , sum(agg_carrier_signalip_daily.completions) as "trunk_completions"
    , ((sum(agg_carrier_signalip_daily.completions) / sum(agg_carrier_signalip_daily.attempts)::numeric) * 100)::numeric(5, 2) as "trunk_asr"
    , ((sum(agg_carrier_signalip_daily.completions) / sum(agg_carrier_signalip_daily.attempts)::numeric) * 100)::numeric(5, 2) - tmp_trunk_perf_per_tg.tg_asr as "asr_variance"
from tmp_trunk_perf_per_tg
left outer join trunk_groups_carrier on trunk_groups_carrier.tg_id = tmp_trunk_perf_per_tg.tg_id
inner join agg_carrier_signalip_daily on agg_carrier_signalip_daily.tg_id = tmp_trunk_perf_per_tg.tg_id
    where agg_carrier_signalip_daily.call_time >= p_start_datetime
    and agg_carrier_signalip_daily.call_time <= p_end_datetime
    group by tmp_trunk_perf_per_tg.tg_id
    , coalesce(trunk_groups_carrier.tg_name, 'trunk_groups_carrier.tg_name not set.')
    , tmp_trunk_perf_per_tg.tg_attempts
    , tmp_trunk_perf_per_tg.tg_completions
    , tmp_trunk_perf_per_tg.tg_asr
    , agg_carrier_signalip_daily.signal_ip
    order by tmp_trunk_perf_per_tg.tg_attempts desc
    , sum(agg_carrier_signalip_daily.attempts) desc
    ;

end;
$$;


-- Function: public.fnfas_detection()

-- DOCUMENTATION: https://github.com/rainmandata/networkanalytics-voice/wiki/FAS-Detection
-- SAMPLE EXECUTION: select * from fnfas_detection('2021-01-01', '2021-01-31 12:00:00');

-- DEPENDENCIES
-- Table: agg_carrier_mediaip_1min - https://github.com/rainmandata/networkanalytics-voice/blob/main/tbl_agg_carrier_mediaip_1min.txt
-- Table: trunk_groups_carrier - https://github.com/rainmandata/networkanalytics-voice/blob/main/tbl_trunk_groups_carrier.txt

-- AUGMENTATIONS
-- 1. Output what % of TG traffic hit bad media IPs.

create function public.fnfas_detection (
      p_start_datetime timestamp without time zone
    , p_end_datetime timestamp without time zone
)
returns table ( tg_id_carrier text
              , asr_tg_average numeric(5, 2) 
              , media_ip text
              , attempts bigint
              , completions bigint
              , asr_this_mediaip numeric(5, 2)
              , minutes numeric(20, 2)
              , tg_name text
)
language plpgsql
as $$
declare

begin

-- Carriers won't send all your attempts off to fake audio. That would be too obvious.
-- We look for specific IPs who behavior is a little too good relative to
-- the carrier's normal IP behavior.

DROP TABLE IF EXISTS tmp_fas_detect_per_tg;

CREATE TABLE tmp_fas_detect_per_tg as
    SELECT tg_id, sum(agg_carrier_mediaip_1min.attempts) as "attempts"
    , sum(agg_carrier_mediaip_1min.completions) as "completions"
    --, sum(agg_carrier_mediaip_1min.duration) as "duration"
    , ((sum(agg_carrier_mediaip_1min.completions) / sum(agg_carrier_mediaip_1min.attempts)::numeric) * 100)::numeric(5, 2) as "asr"
        from agg_carrier_mediaip_1min 
    where call_time >= p_start_datetime
    and call_time <= p_end_datetime
    group by tg_id;
    --select * from tmp_fas_detect_per_tg order by attempts desc;

DROP TABLE IF EXISTS tmp_fas_detect_per_mediaip;

CREATE TABLE tmp_fas_detect_per_mediaip AS
    select tmp_fas_detect_per_tg.tg_id
        , tmp_fas_detect_per_tg.asr as "tg_asr"
        , agg_carrier_mediaip_1min.media_ip
        , sum(agg_carrier_mediaip_1min.attempts) as "mediaip_attempts"
        , sum(agg_carrier_mediaip_1min.completions) as "mediaip_completions"
        , ((sum(agg_carrier_mediaip_1min.completions) / sum(agg_carrier_mediaip_1min.attempts)::numeric) * 100)::numeric(5, 2) as "mediaip_asr"
        , (sum(agg_carrier_mediaip_1min.duration) / 60.00)::numeric(20, 2) as "minutes"
    from tmp_fas_detect_per_tg
    inner join agg_carrier_mediaip_1min on agg_carrier_mediaip_1min.tg_id = tmp_fas_detect_per_tg.tg_id
    where agg_carrier_mediaip_1min.call_time >= p_start_datetime
    and agg_carrier_mediaip_1min.call_time <= p_end_datetime
    group by tmp_fas_detect_per_tg.tg_id, tmp_fas_detect_per_tg.asr, agg_carrier_mediaip_1min.media_ip;
--select * from tmp_fas_detect_per_mediaip

RETURN QUERY 
    select tmp_fas_detect_per_mediaip.tg_id
    , tmp_fas_detect_per_mediaip.tg_asr as "asr_tg_average"
    , tmp_fas_detect_per_mediaip.media_ip as "media_ip"
    , tmp_fas_detect_per_mediaip.mediaip_attempts
    , tmp_fas_detect_per_mediaip.mediaip_completions
    , tmp_fas_detect_per_mediaip.mediaip_asr as "asr_this_mediaip"
    , tmp_fas_detect_per_mediaip.minutes as "minutes"
    , coalesce(trunk_groups_carrier.tg_name, 'trunk_groups_carrier.tg_name not set.') as tg_name
from tmp_fas_detect_per_mediaip
left outer join trunk_groups_carrier on trunk_groups_carrier.tg_id = tmp_fas_detect_per_mediaip.tg_id
where tmp_fas_detect_per_mediaip.mediaip_attempts >= 1 --TODO change to 100
    and (tmp_fas_detect_per_mediaip.mediaip_asr >= 97 or tmp_fas_detect_per_mediaip.mediaip_asr >= (tmp_fas_detect_per_mediaip.tg_asr + 10))
    order by tmp_fas_detect_per_mediaip.mediaip_attempts desc
    ;

end;
$$;


-- Function: public.fnprocess_cdr_carrier()

-- DESCRIPTION: This function will process a batch of carrier CDR. If
-- you supply the batch_id parameter, it will process that batch. If you do not
-- then it will choose the oldest batch that has not received in any new records
-- in the last 10 seconds.
-- Note: If a CDR batch gets borked (that's the technical term for sending in a bad batch),
-- you can delete the row from agg_carrier_batch, resubmit the CDR file to the cdr_carrier table
-- and Rain Man will clear out the previous entries for that batch automatically.

-- DEPENDENCIES
-- Table: cdr_carrier
-- Table: agg_carrier_batch
-- Table: trunk_groups_carrier
-- Table: agg_carrier_network_1min
-- Table: agg_carrier_network_hourly
-- Table: agg_carrier_network_daily
-- Table: agg_carrier_network_sipcode_1min
-- Table: agg_carrier_network_sipcode_hourly
-- Table: agg_carrier_network_sipcode_daily
-- Table: agg_carrier_tg_1sec
-- Table: agg_carrier_tg_1min
-- Table: agg_carrier_tg_hourly
-- Table: agg_carrier_tg_daily
-- Table: agg_carrier_customer_tg_1min
-- Table: agg_carrier_customer_tg_hourly
-- Table: agg_carrier_customer_tg_daily
-- Table: agg_carrier_mediaip_1min
-- Table: agg_carrier_mediaip_hourly
-- Table: agg_carrier_mediaip_daily
-- Table: agg_carrier_signalip_1min
-- Table: agg_carrier_signalip_hourly
-- Table: agg_carrier_signalip_daily
-- Table: agg_carrier_tg_routingprefix_1min
-- Table: agg_carrier_tg_routingprefix_hourly
-- Table: agg_carrier_tg_routingprefix_daily
-- Table: disc_numbers

-- PSEUDO-DEPENDENCIES
-- Some dependencies are only required for specific statistics.
-- 1. None

-- TODO: create indices with fill factor = 100
-- TODO: Add execution of custom function so people can add custom behavior without modifying this function directly.

-- DROP FUNCTION public.fnprocess_cdr_carrier(text);
-- Manually execute function with batch auto-detect: SELECT public.fnprocess_cdr_carrier(null)

CREATE FUNCTION public.fnprocess_cdr_carrier(
in_batch_id text --TODO: convert to array to process multiple batches per execution.
    )
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

DECLARE 
vstart_time timestamp;
--vend_time timestamp;

BEGIN

RAISE NOTICE 'Determining which batch to process: %', clock_timestamp();
vstart_time = clock_timestamp();
drop table if exists tmp_batches_carrier;
create temporary table tmp_batches_carrier (batch_id text not null);

--get oldest batch and run it if no batch_id was supplied.
if (in_batch_id is null) then
    drop table if exists tmp_batches_received_carrier;
    create table tmp_batches_received_carrier as
        select batch_id, max(received_time) as "last_update" from cdr_carrier group by batch_id;

    insert into tmp_batches_carrier
        select batch_id from tmp_batches_received_carrier where last_update < (now() - INTERVAL '10 seconds') and batch_id not in (select batch_id from agg_carrier_batch where batch_id != 'CDR_REVIEW') order by last_update limit 1;
else
    insert into tmp_batches_carrier (batch_id) values (in_batch_id);
end if;

RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
RAISE NOTICE 'BatchID: %', (select batch_id from tmp_batches_carrier limit 1);

if (select batch_id from tmp_batches_carrier limit 1) is null then
    --select * from tmp_batches_carrier;
    RAISE NOTICE 'No batches found to process. Exiting';
    return;
end if;


--normalize secondary fields
RAISE NOTICE 'Normalizing secondary fields: %', clock_timestamp();
vstart_time = clock_timestamp();
--add custom handling here.
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--normalize juris
RAISE NOTICE 'Normalizing jurisdiction: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set juris = 'E' where juris in ('INTERSTATE');
update cdr_carrier set juris = 'A' where juris in ('INTRASTATE');
update cdr_carrier set juris = 'U' where juris in ('NON-JURISDICTIONAL', 'INDETERMINATE');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--normalize ani
RAISE NOTICE 'Normalizing ANIs: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set ani = replace(ani, '+', '') where ani like '+%';
update cdr_carrier set ani = '1' || ani where length(ani) = 10 and juris in ('E', 'A', 'U');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--normalize dnis
RAISE NOTICE 'Normalizing DNISs: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set dnis = '1' || dnis where length(dnis) = 10 and juris in ('E', 'A', 'U');
update cdr_carrier set juris = 'TFT' where left(dnis, 4) in ('1800', '1822', '1844', '1855', '1866', '1877', '1888');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--normalize lrn
RAISE NOTICE 'Normalizing LRN: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set lrn = '1' || lrn where length(lrn) = 10 and juris in ('E', 'A', 'U');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--populate routing_prefix if not sent. If not sent, we have to assume LRN-based routing with fallback to dnis-based routing.
RAISE NOTICE 'Determining routing_prefix: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set routing_prefix = left(lrn, 7) where length(lrn) = 11 and routing_prefix is null and juris in ('E', 'A', 'U');
update cdr_carrier set routing_prefix = left(dnis, 7) where length(dnis) = 11 and routing_prefix is null and juris in ('E', 'A', 'U');
update cdr_carrier set routing_prefix = left(dnis, 4) where length(dnis) = 11 and routing_prefix is null and juris in ('TFT');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--populate duration_billed if not sent
--TODO: Add code to pull billing intervals from customer deck if loaded.
RAISE NOTICE 'Determining duration_billed: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set duration_billed = duration where duration_billed is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--calculate carrier_cost if not supplied
RAISE NOTICE 'Determining carrier_cost: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_carrier set carrier_cost = carrier_rate * (duration_billed / 60) where carrier_cost is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate 1-min carrier-side network agg
RAISE NOTICE 'Aggregating agg_carrier_network_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_network_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_network_1min
    (batch_id, call_time, attempts, attempts_ner, completions, duration, duration_billed, carrier_cost, sd, code_487, code_404, lcr_depth)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(carrier_cost) as "carrier_cost"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time");
--select * from agg_carrier_network_1min order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_carrier_network_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_network_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_network_hourly
    (batch_id, call_time, attempts, attempts_ner, completions, duration, duration_billed, carrier_cost, sd, code_487, code_404, lcr_depth)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(carrier_cost) as "carrier_cost"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from agg_carrier_network_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time");
--select * from agg_carrier_network_hourly order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



RAISE NOTICE 'Aggregating agg_carrier_network_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_network_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_network_daily
    (batch_id, call_time, attempts, attempts_ner, completions, duration, duration_billed, carrier_cost, sd, code_487, code_404, lcr_depth)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(carrier_cost) as "carrier_cost"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from agg_carrier_network_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time");
--select * from agg_carrier_network_daily order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



--generate 1-min carrier-side signalip agg
RAISE NOTICE 'Aggregating agg_carrier_signalip_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_signalip_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_signalip_1min
    (batch_id, call_time, signal_ip, tg_id, attempts, attempts_ner, completions, duration, sd)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, signal_ip
, tg_id
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       where signal_ip is not null
       group by cdr.batch_id, date_trunc('minute', "call_time"), signal_ip, tg_id;
--select * from agg_carrier_signalip_1min order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_carrier_signalip_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_signalip_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_signalip_hourly
    (batch_id, call_time, signal_ip, tg_id, attempts, attempts_ner, completions, duration, sd)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, signal_ip
, tg_id
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(sd) as "sd"
       from agg_carrier_signalip_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       where signal_ip is not null
       group by agg.batch_id, date_trunc('hour', "call_time"), signal_ip, tg_id;
--select * from agg_carrier_signalip_hourly order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



RAISE NOTICE 'Aggregating agg_carrier_signalip_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_signalip_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_signalip_daily
    (batch_id, call_time, signal_ip, tg_id, attempts, attempts_ner, completions, duration, sd)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, signal_ip
, tg_id
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(sd) as "sd"
       from agg_carrier_signalip_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       where signal_ip is not null
       group by agg.batch_id, date_trunc('day', "call_time"), signal_ip, tg_id;
--select * from agg_carrier_signalip_daily order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));




--generate 1-min carrier-side mediaip agg
RAISE NOTICE 'Aggregating agg_carrier_mediaip_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_mediaip_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_mediaip_1min
    (batch_id, call_time, tg_id, media_ip, attempts, attempts_ner, completions, duration, sd)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, media_ip
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       where media_ip is not null
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id, media_ip;
--select * from agg_carrier_mediaip_1min order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



RAISE NOTICE 'Aggregating agg_carrier_mediaip_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_mediaip_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_mediaip_hourly
    (batch_id, call_time, tg_id, media_ip, attempts, attempts_ner, completions, duration, sd)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, tg_id
, media_ip
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(sd) as "sd"
       from agg_carrier_mediaip_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       where media_ip is not null
       group by agg.batch_id, date_trunc('hour', "call_time"), tg_id, media_ip;
--select * from agg_carrier_mediaip_hourly order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



RAISE NOTICE 'Aggregating agg_carrier_mediaip_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_mediaip_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_mediaip_daily
    (batch_id, call_time, tg_id, media_ip, attempts, attempts_ner, completions, duration, sd)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, tg_id
, media_ip
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(sd) as "sd"
       from agg_carrier_mediaip_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       where media_ip is not null
       group by agg.batch_id, date_trunc('day', "call_time"), tg_id, media_ip;
--select * from agg_carrier_mediaip_daily order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate carrier network-wide sip code aggs
RAISE NOTICE 'Aggregating agg_carrier_network_sipcode_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_network_sipcode_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_network_sipcode_1min
    (batch_id, call_time, sip_code, attempts)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, sip_code
, count(*) as "attempts"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), sip_code;
--select * from agg_carrier_network_sipcode_1min order by call_time desc limit 100000;
--select sip_code from agg_carrier_network_sipcode_1min group by sip_code order by count(*) desc
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_carrier_network_sipcode_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_network_sipcode_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_network_sipcode_hourly
    (batch_id, call_time, sip_code, attempts)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, sip_code
, sum(attempts) as "attempts"
       from agg_carrier_network_sipcode_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), sip_code;
--select * from agg_carrier_network_sipcode_hourly order by call_time desc limit 100000;
--select sip_code from agg_carrier_network_sipcode_hourly group by sip_code order by count(*) desc
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_carrier_network_sipcode_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_network_sipcode_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_network_sipcode_daily
    (batch_id, call_time, sip_code, attempts)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, sip_code
, sum(attempts) as "attempts"
       from agg_carrier_network_sipcode_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), sip_code;
--select * from agg_carrier_network_sipcode_daily order by call_time desc limit 100000;
--select sip_code from agg_carrier_network_sipcode_daily group by sip_code order by count(*) desc
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate carrier tg 1-sec agg
RAISE NOTICE 'Aggregating agg_carrier_tg_1sec: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_1sec where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_1sec (batch_id, call_time, tg_id, attempts, completions)
select cdr.batch_id
, date_trunc('second', min(call_time)) as "call_time"
, tg_id
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('second', "call_time"), tg_id;
       
       --select * from agg_carrier_tg_1sec order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate carrier tg 1-min agg
RAISE NOTICE 'Aggregating agg_carrier_tg_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_1min (batch_id, call_time, tg_id, attempts, completions, duration, duration_billed, sd, code_487, code_404, lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel, attempts_npr, carrier_cost)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
, sum(case duration when 0 then null else lcr_depth end) as "lcr_depth_completed"
, sum(case duration when 0 then lcr_depth else null end) as "lcr_depth_incomplete"
, sum(lcr_depth) as "lcr_depth_all"
, sum(case sip_code when '521' then 1 when '523' then 1 when '525' then 1 when '533' then 1 else 0 end) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(case sip_code when '487' then ring_time else null end) as "ring_time_before_cancel"
, sum(case sip_code when 'NPR' then 1 else 0 end) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id;
       
       --select * from agg_carrier_tg_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_carrier_tg_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_hourly (batch_id, call_time, tg_id, attempts, completions, duration, duration_billed, sd, code_487, code_404, lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel, attempts_npr, carrier_cost)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, tg_id
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth_completed) as "lcr_depth_completed"
, sum(lcr_depth_incomplete) as "lcr_depth_incomplete"
, sum(lcr_depth_all) as "lcr_depth_all"
, sum(lack_cap) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(ring_time_before_cancel) as "ring_time_before_cancel"
, sum(attempts_npr) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from agg_carrier_tg_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), tg_id;
       
       --select * from agg_carrier_tg_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_carrier_tg_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_daily (batch_id, call_time, tg_id, attempts, completions, duration, duration_billed, sd, code_487, code_404, lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel, attempts_npr, carrier_cost)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, tg_id
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth_completed) as "lcr_depth_completed"
, sum(lcr_depth_incomplete) as "lcr_depth_incomplete"
, sum(lcr_depth_all) as "lcr_depth_all"
, sum(lack_cap) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(ring_time_before_cancel) as "ring_time_before_cancel"
, sum(attempts_npr) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from agg_carrier_tg_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), tg_id;
       
       --select * from agg_carrier_tg_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate carrier/customer tg 1-min agg
RAISE NOTICE 'Aggregating agg_carrier_customer_tg_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_customer_tg_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_customer_tg_1min (batch_id, call_time, tg_id_carrier, tg_id_customer, attempts, completions, duration, duration_billed, sd, code_487, code_404, lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel, attempts_npr, carrier_cost)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, customer_tg_id
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
, sum(case duration when 0 then null else lcr_depth end) as "lcr_depth_completed"
, sum(case duration when 0 then lcr_depth else null end) as "lcr_depth_incomplete"
, sum(lcr_depth) as "lcr_depth_all"
, sum(case sip_code when '521' then 1 when '523' then 1 when '525' then 1 when '533' then 1 else 0 end) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(case sip_code when '487' then ring_time else null end) as "ring_time_before_cancel"
, sum(case sip_code when 'NPR' then 1 else 0 end) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id, customer_tg_id;
       
       --select * from agg_carrier_customer_tg_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_carrier_customer_tg_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_customer_tg_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_customer_tg_hourly (batch_id, call_time, tg_id_carrier, tg_id_customer, attempts, completions, duration, duration_billed, sd, code_487, code_404, lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel, attempts_npr, carrier_cost)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, tg_id_carrier
, tg_id_customer
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth_completed) as "lcr_depth_completed"
, sum(lcr_depth_incomplete) as "lcr_depth_incomplete"
, sum(lcr_depth_all) as "lcr_depth_all"
, sum(lack_cap) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(ring_time_before_cancel) as "ring_time_before_cancel"
, sum(attempts_npr) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from agg_carrier_customer_tg_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), tg_id_carrier, tg_id_customer;
       
       --select * from agg_carrier_customer_tg_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_carrier_customer_tg_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_customer_tg_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_customer_tg_daily (batch_id, call_time, tg_id_carrier, tg_id_customer, attempts, completions, duration, duration_billed, sd, code_487, code_404, lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel, attempts_npr, carrier_cost)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, tg_id_carrier
, tg_id_customer
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth_completed) as "lcr_depth_completed"
, sum(lcr_depth_incomplete) as "lcr_depth_incomplete"
, sum(lcr_depth_all) as "lcr_depth_all"
, sum(lack_cap) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(ring_time_before_cancel) as "ring_time_before_cancel"
, sum(attempts_npr) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from agg_carrier_customer_tg_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), tg_id_carrier, tg_id_customer;
       
       --select * from agg_carrier_customer_tg_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate tg prefix 1-min agg
RAISE NOTICE 'Aggregating agg_carrier_routingprefix_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_routingprefix_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_routingprefix_1min (batch_id, call_time, tg_id, routing_prefix, attempts, completions, lcr_depth, duration
                                               , duration_billed, carrier_cost, carrier_rate_min, carrier_rate_max)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(lcr_depth) as "lcr_depth"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(carrier_cost) as "carrier_cost"
, min(case sip_code when '200' then carrier_rate else null end) as "carrier_rate_min"
, max(case sip_code when '200' then carrier_rate else null end) as "carrier_rate_max"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id, routing_prefix;
       
       --select * from agg_carrier_tg_routingprefix_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



RAISE NOTICE 'Aggregating agg_carrier_routingprefix_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_routingprefix_hourly where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_routingprefix_hourly (batch_id, call_time, tg_id, routing_prefix, attempts, completions, lcr_depth
                                                , duration, duration_billed, carrier_cost, carrier_rate_min, carrier_rate_max)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(lcr_depth) as "lcr_depth"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(carrier_cost) as "carrier_cost"
, min(carrier_rate_min) as "carrier_rate_min"
, max(carrier_rate_max) as "carrier_rate_max"
       from agg_carrier_tg_routingprefix_1min as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), tg_id, routing_prefix;
       
       --select * from agg_carrier_tg_routingprefix_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



RAISE NOTICE 'Aggregating agg_carrier_routingprefix_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_routingprefix_daily where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_routingprefix_daily (batch_id, call_time, tg_id, routing_prefix, attempts, completions, lcr_depth
                                               , duration, duration_billed, carrier_cost, carrier_rate_min, carrier_rate_max)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(lcr_depth) as "lcr_depth"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(carrier_cost) as "carrier_cost"
, min(carrier_rate_min) as "carrier_rate_min"
, max(carrier_rate_max) as "carrier_rate_max"
       from agg_carrier_tg_routingprefix_hourly as agg
       inner join tmp_batches_carrier as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), tg_id, routing_prefix;
       
       --select * from agg_carrier_tg_routingprefix_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate tg prefix/juris 1-min agg
--create table agg_carrier_tg_prefix_juris_1min as
/* BETA
RAISE NOTICE 'Aggregating agg_carrier_prefix_juris_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_carrier_tg_prefix_juris_1min where batch_id in (select batch_id from tmp_batches_carrier);
insert into agg_carrier_tg_prefix_juris_1min (batch_id, call_time, tg_id, routing_prefix, juris, attempts, completions, lcr_depth)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, juris
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
        --, sum(duration) as "duration"
       --, sum(duration_billed) as "duration_billed"
       --, sum(revenue) as "revenue"
       --sum(case when duration between 1 and 6 then 1 else 0 end) as "sdr"
       --sum(case sip_code when '487' then 1 else 0 end) as "code_",
       --sum(case sip_code when '404' then 1 else 0 end)
, sum(lcr_depth) as "lcr_depth"       
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id, routing_prefix, juris;
       
       --select * from agg_carrier_tg_prefix_juris_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/



--record bad numbers (404)
RAISE NOTICE 'Aggregating disc_numbers: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into disc_numbers (dnis, created_at, expires_at)
    select dnis, now(), now() + interval '7' day
    from cdr_carrier as cdr
    inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
    inner join trunk_groups_carrier on trunk_groups_carrier.tg_id = cdr.tg_id
    where cdr.sip_code = '404'
    and trunk_groups_carrier.trusted_404 = 1
    group by dnis
    ON CONFLICT (dnis) DO UPDATE set created_at = now(), expires_at = now() + interval '7' day;
    --select * from tmp_batches_carrier
    --select * from cdr_carrier where sip_code = '404'
    --select * from trunk_groups_carrier where tg_id = '31'
    --select * from disc_numbers order by created_at desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--close off the batch. KEEP AT BOTTOM
RAISE NOTICE 'Aggregating agg_carrier_batch: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into agg_carrier_batch (batch_id, attempts, completions, duration, duration_billed, carrier_cost, sd, code_487, code_404, start_time, end_time, most_recent_cdr)
select cdr.batch_id
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(cdr.carrier_cost) as "carrier_cost"
, sum(case when duration between 1 and 6 then 1 else 0 end)
, sum(case sip_code when '487' then 1 else 0 end)
, sum(case sip_code when '404' then 1 else 0 end)
, now()
, clock_timestamp()
, max(call_time) as "most_recent_cdr"
       from cdr_carrier as cdr
       inner join tmp_batches_carrier as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id;
--select * from agg_carrier_batch order by processed_time desc;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

/*
RAISE NOTICE 'Create carrier TGs that don''t already exist: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into trunk_groups_carrier (tg_id, status, carrier_id, tg_name)
select tg_id, 'new', 'XX', '' from cdr_carrier where tg_id not in (select tg_id from trunk_groups_carrier) group by tg_id;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/
--select * from trunk_groups_carrier order by created_at desc





--TODO: purge batches we have processed
RAISE NOTICE 'Deleting processed batch: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from cdr_carrier where batch_id in (select batch_id from tmp_batches_carrier) and batch_id != 'CDR_REVIEW';
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'DONE: %', clock_timestamp();

--vacuum (full, analyze);

END;
$BODY$;

ALTER FUNCTION public.fnprocess_cdr_carrier(text)
    OWNER TO postgres;
-- FUNCTION: public.fnprocess_cdr_customer()

--DESCRIPTION: This function will process a batch of customer CDR. If
--you supply the batch_id parameter, it will process that batch. If you do not
--then it will choose the oldest batch that has not received in any new records
--in the last 10 seconds.
--Note: If a CDR batch gets borked, you can delete the row from agg_customer_batch, resubmit the CDR to cdr_customer
--and Rain Man will clear out the previous entries for that batch automatically.


--DEPENDENCIES--
--Table: trunk_groups_customer
--Table: signal_ips_customer
--Table: agg_customer_batch
--Table: cdr_customer
--Table: agg_customer_network_1min
--Table: agg_customer_network_hourly
--Table: agg_customer_network_daily
--Table: agg_customer_network_sipcode_1min
--Table: agg_customer_network_sipcode_hourly
--Table: agg_customer_network_sipcode_daily
--Table: agg_customer_tg_1min 
--Table: agg_customer_tg_hourly
--Table: agg_customer_tg_daily
--Table: agg_customer_tg_routingprefix_1min
--Table: agg_customer_tg_routingprefix_hourly
--Table: agg_customer_tg_routingprefix_daily
--Table: agg_customer_signalip_1min
--Table: agg_customer_signalip_hourly
--Table: agg_customer_signalip_daily
--Table: agg_customer_mediaip_1min
--Table: agg_customer_mediaip_hourly
--Table: agg_customer_mediaip_daily
--Table: agg_switchid_1min
--Table: agg_switchid_hourly
--Table: agg_switchid_daily
--Table: agg_customer_ani_1min
--Table: agg_customer_ani_hourly
--Table: agg_customer_ani_daily
--Table: agg_customer_dnislata_1min
--Table: agg_customer_dnislata_hourly
--Table: agg_customer_dnislata_daily
--Materialized View: mv_lerg6
--Materialized View: mv_lerg6a
--Table: agg_customer_dnisocn_1min
--Table: agg_customer_dnisocn_hourly
--Table: agg_customer_dnisocn_daily
--Table: agg_customer_dnisstate_1min
--Table: agg_customer_dnisstate_hourly
--Table: agg_customer_dnisstate_daily


--PSEUDO-DEPENDENCIES--
--Some dependencies are only required for specific statistics.
--1. None




--TODO: create indices with fill factor = 100
--TODO: Add execution of custom function so people can add custom behavior without modifying this function directly.

-- DROP FUNCTION public.fnprocess_cdr_customer(text);
--Manually execute function with batch auto-detect: SELECT public.fnprocess_cdr_customer(null)


CREATE OR REPLACE FUNCTION public.fnprocess_cdr_customer(
in_batch_id text
    )
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

DECLARE 
vstart_time timestamp;
--vend_time timestamp;

BEGIN

RAISE NOTICE 'Determining which batch to process: %', clock_timestamp();
vstart_time = clock_timestamp();
drop table if exists tmp_batches;
create temporary table tmp_batches (batch_id text not null);

--get oldest batch and run it if no batch_id was supplied.
if (in_batch_id is null) then
    drop table if exists tmp_batches_received;
    create table tmp_batches_received as
        select batch_id, max(received_time) as "last_update" from cdr_customer group by batch_id;

    insert into tmp_batches
        select batch_id from tmp_batches_received where last_update < (now() - INTERVAL '10 seconds') and batch_id not in (select batch_id from agg_customer_batch where batch_id != 'CDR_REVIEW') order by last_update limit 1;
else
    insert into tmp_batches (batch_id) values (in_batch_id);
end if;

RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
RAISE NOTICE 'BatchID: %', (select batch_id from tmp_batches limit 1);

if (select batch_id from tmp_batches limit 1) is null then
    --select * from tmp_batches;
    RAISE NOTICE 'No batches found to process. Exiting';
    return;
end if;



--normalize secondary fields
RAISE NOTICE 'Normalizing secondary fields: %', clock_timestamp();
vstart_time = clock_timestamp();
--add custom handling here.
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--normalize juris
RAISE NOTICE 'Normalizing jurisdiction: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set juris = 'E' where juris in ('INTERSTATE');
update cdr_customer set juris = 'A' where juris in ('INTRASTATE');
update cdr_customer set juris = 'U' where juris in ('NON-JURISDICTIONAL', 'INDETERMINATE');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--normalize ani
RAISE NOTICE 'Normalizing ANIs: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set ani = replace(ani, '+', '') where ani like '+%';
update cdr_customer set ani = '1' || ani where length(ani) = 10 and juris in ('E', 'A', 'U');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--normalize dnis
RAISE NOTICE 'Normalizing DNISs: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set dnis = '1' || dnis where length(dnis) = 10 and juris in ('E', 'A', 'U');
update cdr_customer set juris = 'TFT' where left(dnis, 4) in ('1800', '1822', '1844', '1855', '1866', '1877', '1888');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--normalize lrn
RAISE NOTICE 'Normalizing LRN: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set lrn = '1' || lrn where length(lrn) = 10 and juris in ('E', 'A', 'U');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--populate billing_prefix if not sent. If not sent, we have to assume LRN-based billing with fallback to dnis-based billing.
RAISE NOTICE 'Determining billing_prefix: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set billing_prefix = left(lrn, 7) where length(lrn) = 11 and billing_prefix is null and juris in ('E', 'A', 'U');
update cdr_customer set billing_prefix = left(dnis, 7) where length(dnis) = 11 and billing_prefix is null and juris in ('E', 'A', 'U');
update cdr_customer set billing_prefix = left(dnis, 4) where length(dnis) = 11 and billing_prefix is null and juris in ('TFT');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--populate routing_prefix if not sent. If not sent, we have to assume LRN-based routing with fallback to dnis-based routing.
RAISE NOTICE 'Determining routing_prefix: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set routing_prefix = left(lrn, 7) where length(lrn) = 11 and routing_prefix is null and juris in ('E', 'A', 'U');
update cdr_customer set routing_prefix = left(dnis, 7) where length(dnis) = 11 and routing_prefix is null and juris in ('E', 'A', 'U');
update cdr_customer set routing_prefix = left(dnis, 4) where length(dnis) = 11 and routing_prefix is null and juris in ('TFT');
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--populate duration_billed if not sent
--TODO: Add code to pull billing intervals from customer deck if loaded.
RAISE NOTICE 'Determining duration_billed: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set duration_billed = duration where duration_billed is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--calculate customer_revenue if not supplied
RAISE NOTICE 'Determining customer_revenue: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set customer_revenue = customer_rate * (duration_billed / 60) where customer_revenue is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--TODO: Skip this section if lerg6 table does not exist or is empty.
--create lerg6 table temp processing table.
/* BETA
RAISE NOTICE 'Create LERG6: %', clock_timestamp();
vstart_time = clock_timestamp();
drop table if exists tmp_lerg6;
create temporary table tmp_lerg6 as select max(lata) as "lata", max(ocn) as "ocn", max(loc_state) as "state", max(switch) as "switch", '1' || npa || nxx || block_id as "prefix" from lerg6 where block_id <> 'A' group by npa, nxx, block_id;
--TODO convert this to mat view with index to speed it up and not have to recreate it every time.
alter table tmp_lerg6 add primary key (prefix);
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/

--create lerg6a table
/* BETA
RAISE NOTICE 'Create LERG6a: %', clock_timestamp();
vstart_time = clock_timestamp();
drop table if exists tmp_lerg6a;
create temporary table tmp_lerg6a as select max(lata) as "lata", max(ocn) as "ocn", max(loc_state) as "state", max(switch) as "switch", '1' || npa || nxx as "prefix" from lerg6 where block_id = 'A' group by npa, nxx; 
--TODO convert this to mat view with index to speed it up and not have to recreate it every time.
alter table tmp_lerg6a add primary key (prefix);
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/

--retrieve dnis_lata
--TODO: lookup to setting to see if using lata statistics. Skip if not.
RAISE NOTICE 'Determining dnis_lata: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set dnis_lata = (select lata::int from mv_lerg6 where left(cdr_customer.lrn, 8) = mv_lerg6.prefix)
where cdr_customer.dnis_lata is null and length(cdr_customer.lrn) = 11;

update cdr_customer set dnis_lata = (select lata::int from mv_lerg6 where left(cdr_customer.dnis, 8) = mv_lerg6.prefix)
where cdr_customer.dnis_lata is null and length(cdr_customer.dnis) = 11;

update cdr_customer set dnis_lata = (select lata::int from mv_lerg6a where routing_prefix =mv_lerg6a.prefix)
where cdr_customer.dnis_lata is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--retrieve dnis_ocn
--TODO: lookup to setting to see if using ocn statistics. skip if not.
RAISE NOTICE 'Determining dnis_ocn: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set dnis_ocn = (select ocn from mv_lerg6 where left(cdr_customer.lrn, 8) = mv_lerg6.prefix)
where cdr_customer.dnis_ocn is null and length(cdr_customer.lrn) = 11;

update cdr_customer set dnis_ocn = (select ocn from mv_lerg6 where left(cdr_customer.dnis, 8) = mv_lerg6.prefix)
where cdr_customer.dnis_ocn is null and length(cdr_customer.dnis) = 11;

update cdr_customer set dnis_ocn = (select ocn from mv_lerg6a where routing_prefix = mv_lerg6a.prefix)
where cdr_customer.dnis_ocn is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--retrieve dnis_state
--TODO: lookup to setting to see if using state statistics. skip if not.
RAISE NOTICE 'Determining dnis_state: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set dnis_state = (select state from mv_lerg6 where left(cdr_customer.lrn, 8) = mv_lerg6.prefix)
where cdr_customer.dnis_state is null and length(cdr_customer.lrn) = 11;

update cdr_customer set dnis_state = (select state from mv_lerg6 where left(cdr_customer.dnis, 8) = mv_lerg6.prefix)
where cdr_customer.dnis_state is null and length(cdr_customer.dnis) = 11;

update cdr_customer set dnis_state = (select state from mv_lerg6a where routing_prefix = mv_lerg6a.prefix)
where cdr_customer.dnis_state is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--retrieve clli
--TODO: lookup to setting to see if using clli statistics. Skip if not.
--TODO: This block below is the biggest runtime. Need to find a better way to do it.
/* BETA
RAISE NOTICE 'Determining CLLI: %', clock_timestamp();
vstart_time = clock_timestamp();
update cdr_customer set dest_clli = (select switch from tmp_lerg6 where left(cdr_customer.lrn, 8) = tmp_lerg6.prefix)
where cdr_customer.dest_clli is null and length(cdr_customer.lrn) = 11;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

vstart_time = clock_timestamp();
update cdr_customer set dest_clli = (select switch from tmp_lerg6 where left(cdr_customer.dnis, 8) = tmp_lerg6.prefix)
where cdr_customer.dest_clli is null and length(cdr_customer.dnis) = 11;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

vstart_time = clock_timestamp();
update cdr_customer set dest_clli = (select switch from tmp_lerg6a where routing_prefix = tmp_lerg6a.prefix)
where cdr_customer.dest_clli is null;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/

       
--summarize rvm (BETA)
/*
RAISE NOTICE 'Determining RVM: %', clock_timestamp();
vstart_time = clock_timestamp();
create temporary table tmp_rvm as     select cdr.batch_id, date_trunc('minute', "call_time") as "minute", count(*) as "rvm" from cdr_customer as cdr inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id group by cdr.batch_id, date_trunc('minute', "call_time"), dnis having count(*) >= 2;

drop table tmp_rvmsumm
create temporary table tmp_rvmsumm as
    select batch_id, "minute", sum(rvm) as "attempts_rvm" from tmp_rvm group by batch_id, "minute";
--select * from tmp_rvmsumm
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/

--generate 1-min customer-side network agg
RAISE NOTICE 'Aggregating agg_customer_network_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_network_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_network_1min
    (batch_id, call_time, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, carrier_cost, sd, code_487, code_404, lcr_depth)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, count(distinct(ani)) as "attempts_acr"
, count(distinct(dnis)) as "attempts_dcr"
, null as "attempts_rvm"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
, sum(carrier_cost) as "carrier_cost"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time");
--select * from agg_customer_network_1min order by call_time desc limit 100000


RAISE NOTICE 'Aggregating agg_customer_network_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_network_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_network_hourly
    (batch_id, call_time, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, carrier_cost, sd, code_487, code_404, lcr_depth)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, count(attempts_acr) as "attempts_acr"
, count(attempts_dcr) as "attempts_dcr"
, sum(attempts_rvm) as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(carrier_cost) as "carrier_cost"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from agg_customer_network_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time");
--select * from agg_customer_network_hourly order by call_time desc limit 100000


RAISE NOTICE 'Aggregating agg_customer_network_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_network_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_network_daily
    (batch_id, call_time, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, carrier_cost, sd, code_487, code_404, lcr_depth)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, count(attempts_acr) as "attempts_acr"
, count(attempts_dcr) as "attempts_dcr"
, sum(attempts_rvm) as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(carrier_cost) as "carrier_cost"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from agg_customer_network_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time");
--select * from agg_customer_network_daily order by call_time desc limit 100000



--update agg_customer_network_1min set attempts_rvm = (select attempts_rvm from tmp_rvmsumm as rvmsumm where --rvmsumm.batch_id = agg_customer_network_1min.batch_id and rvmsumm.minute = agg_customer_network_1min.call_time)
--where batch_id in (select batch_id from tmp_batches);
--RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate 1-min customer-side ani agg
RAISE NOTICE 'Aggregating agg_customer_ani_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_ani_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_ani_1min
    (batch_id, call_time, ani, attempts, attempts_ner, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, sd, code_487, code_404, lcr_depth)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, ani
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, count(distinct(dnis)) as "attempts_dcr"
, null as "attempts_rvm"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), cdr.ani;
--select * from agg_customer_ani_1min order by call_time desc limit 100000;
--TODO: add ani RVM
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_ani_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_ani_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_ani_hourly
    (batch_id, call_time, ani, attempts, attempts_ner, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, sd, code_487, code_404, lcr_depth)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, ani
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(attempts_dcr) as "attempts_dcr"
, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from agg_customer_ani_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), agg.ani;
--select * from agg_customer_ani_hourly order by call_time desc limit 100000;
--TODO: add ani RVM
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_ani_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_ani_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_ani_daily
    (batch_id, call_time, ani, attempts, attempts_ner, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, sd, code_487, code_404, lcr_depth)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, ani
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(attempts_dcr) as "attempts_dcr"
, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth) as "lcr_depth"
       from agg_customer_ani_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), agg.ani;
--select * from agg_customer_ani_daily order by call_time desc limit 100000;
--TODO: add ani RVM
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate 1-min customer-side switch_id agg
RAISE NOTICE 'Aggregating agg_customer_switchid_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_switchid_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_switchid_1min
    (batch_id, call_time, switch_id, attempts, attempts_ner, completions, duration, duration_billed, revenue, sd, code_487, code_404)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, switch_id
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
--, count(distinct(dnis)) as "attempts_dcr"
--, null as "attempts_rvm"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), cdr.switch_id;
--select * from agg_customer_switchid_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_switchid_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_switchid_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_switchid_hourly
    (batch_id, call_time, switch_id, attempts, attempts_ner, completions, duration, duration_billed, revenue, sd, code_487, code_404)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, switch_id
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
--, count(distinct(dnis)) as "attempts_dcr"
--, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
       from agg_customer_switchid_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), agg.switch_id;
--select * from agg_customer_switchid_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_switchid_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_switchid_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_switchid_daily
    (batch_id, call_time, switch_id, attempts, attempts_ner, completions, duration, duration_billed, revenue, sd, code_487, code_404)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, switch_id
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
--, count(distinct(dnis)) as "attempts_dcr"
--, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
       from agg_customer_switchid_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), agg.switch_id;
--select * from agg_customer_switchid_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



--generate 1-min customer-side signalip agg
RAISE NOTICE 'Aggregating agg_customer_signalip_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_signalip_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_signalip_1min
    (batch_id, call_time, signal_ip, tg_id, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, carrier_cost, sd, code_487, code_404)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, signal_ip
, tg_id
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, count(distinct(ani)) as "attempts_acr"
, count(distinct(dnis)) as "attempts_dcr"
, null as "attempts_rvm"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
, sum(carrier_cost) as "carrier_cost"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       where signal_ip is not null
       group by cdr.batch_id, date_trunc('minute', "call_time"), signal_ip, tg_id;
--select * from agg_customer_signalip_1min order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_signalip_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_signalip_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_signalip_hourly
    (batch_id, call_time, signal_ip, tg_id, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, carrier_cost, sd, code_487, code_404)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, signal_ip
, tg_id
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(attempts_acr) as "attempts_acr"
, sum(attempts_dcr) as "attempts_dcr"
, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(carrier_cost) as "carrier_cost"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
       from agg_customer_signalip_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       where signal_ip is not null
       group by agg.batch_id, date_trunc('hour', "call_time"), signal_ip, tg_id;
--select * from agg_customer_signalip_hourly order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_customer_signalip_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_signalip_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_signalip_daily
    (batch_id, call_time, signal_ip, tg_id, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, carrier_cost, sd, code_487, code_404)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, signal_ip
, tg_id
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(attempts_acr) as "attempts_acr"
, sum(attempts_dcr) as "attempts_dcr"
, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(carrier_cost) as "carrier_cost"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
       from agg_customer_signalip_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       where signal_ip is not null
       group by agg.batch_id, date_trunc('day', "call_time"), signal_ip, tg_id;
--select * from agg_customer_signalip_daily order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



--generate 1-min customer-side mediaip agg
RAISE NOTICE 'Aggregating agg_customer_mediaip_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_mediaip_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_mediaip_1min
    (batch_id, call_time, media_ip, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, sd, code_487, code_404)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, media_ip
, count(*) as "attempts"
, sum(case when sip_code like '4%' then 0 else 1 end) as "attempts_ner"
, count(distinct(ani)) as "attempts_acr"
, count(distinct(dnis)) as "attempts_dcr"
, null as "attempts_rvm"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       where media_ip is not null
       group by cdr.batch_id, date_trunc('minute', "call_time"), media_ip;
--select * from agg_customer_mediaip_1min order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_mediaip_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_mediaip_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_mediaip_hourly
    (batch_id, call_time, media_ip, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, sd, code_487, code_404)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, media_ip
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(attempts_acr) as "attempts_acr"
, sum(attempts_dcr) as "attempts_dcr"
, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
       from agg_customer_mediaip_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       where media_ip is not null
       group by agg.batch_id, date_trunc('hour', "call_time"), media_ip;
--select * from agg_customer_mediaip_hourly order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_mediaip_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_mediaip_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_mediaip_daily
    (batch_id, call_time, media_ip, attempts, attempts_ner, attempts_acr, attempts_dcr, attempts_rvm, completions, duration, duration_billed, revenue, sd, code_487, code_404)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, media_ip
, sum(attempts) as "attempts"
, sum(attempts_ner) as "attempts_ner"
, sum(attempts_acr) as "attempts_acr"
, sum(attempts_dcr) as "attempts_dcr"
, null as "attempts_rvm"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
       from agg_customer_mediaip_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       where media_ip is not null
       group by agg.batch_id, date_trunc('day', "call_time"), media_ip;
--select * from agg_customer_mediaip_daily order by call_time desc limit 100000
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate customer network-wide sip code aggs
RAISE NOTICE 'Aggregating agg_customer_network_sipcode_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_network_sipcode_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_network_sipcode_1min
    (batch_id, call_time, sip_code, attempts)
select 
cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, sip_code
, count(*) as "attempts"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), sip_code;
--select * from agg_customer_network_sipcode_1min order by call_time desc limit 100000;
--select sip_code from agg_customer_network_sipcode_1min group by sip_code order by count(*) desc
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_customer_network_sipcode_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_network_sipcode_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_network_sipcode_hourly
    (batch_id, call_time, sip_code, attempts)
select 
agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, sip_code
, sum(attempts) as "attempts"
       from agg_customer_network_sipcode_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), sip_code;
--select * from agg_customer_network_sipcode_hourly order by call_time desc limit 100000;
--select sip_code from agg_customer_network_sipcode_hourly group by sip_code order by count(*) desc
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_network_sipcode_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_network_sipcode_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_network_sipcode_daily
    (batch_id, call_time, sip_code, attempts)
select 
agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, sip_code
, sum(attempts) as "attempts"
       from agg_customer_network_sipcode_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), sip_code;
--select * from agg_customer_network_sipcode_daily order by call_time desc limit 100000;
--select sip_code from agg_customer_network_sipcode_daily group by sip_code order by count(*) desc
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



--generate tg 1-min agg
RAISE NOTICE 'Aggregating agg_customer_tg_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_1min (batch_id, call_time, tg_id, attempts, completions, duration, duration_billed, revenue, sd, code_487, code_404
                                  , lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel,
                                 attempts_npr, carrier_cost)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
, sum(case when duration between 1 and 6 then 1 else 0 end) as "sd"
, sum(case sip_code when '487' then 1 else 0 end) as "code_487"
, sum(case sip_code when '404' then 1 else 0 end) as "code_404"
, sum(case duration when 0 then null else lcr_depth end) as "lcr_depth_completed"
, sum(case duration when 0 then lcr_depth else null end) as "lcr_depth_incomplete"
, sum(lcr_depth) as "lcr_depth_all"
, sum(case sip_code when '521' then 1 when '523' then 1 when '525' then 1 when '533' then 1 else 0 end) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(case sip_code when '487' then ring_time else null end) as "ring_time_before_cancel"
, sum(case sip_code when 'NPR' then 1 else 0 end) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id;
       
       --select * from agg_customer_tg_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_customer_tg_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_hourly (batch_id, call_time, tg_id, attempts, completions, duration, duration_billed, revenue, sd, code_487, code_404
                                  , lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel,
                                 attempts_npr, carrier_cost)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, tg_id
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth_completed) as "lcr_depth_completed"
, sum(lcr_depth_incomplete) as "lcr_depth_incomplete"
, sum(lcr_depth_all) as "lcr_depth_all"
, sum(lack_cap) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(ring_time_before_cancel) as "ring_time_before_cancel"
, sum(attempts_npr) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from agg_customer_tg_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), tg_id;
       
       --select * from agg_customer_tg_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_customer_tg_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_daily (batch_id, call_time, tg_id, attempts, completions, duration, duration_billed, revenue, sd, code_487, code_404
                                  , lcr_depth_completed, lcr_depth_incomplete, lcr_depth_all, lack_cap, ring_time, ring_time_before_cancel,
                                 attempts_npr, carrier_cost)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, tg_id
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
, sum(sd) as "sd"
, sum(code_487) as "code_487"
, sum(code_404) as "code_404"
, sum(lcr_depth_completed) as "lcr_depth_completed"
, sum(lcr_depth_incomplete) as "lcr_depth_incomplete"
, sum(lcr_depth_all) as "lcr_depth_all"
, sum(lack_cap) as "lack_cap"
, sum(ring_time) as "ring_time"
, sum(ring_time_before_cancel) as "ring_time_before_cancel"
, sum(attempts_npr) as "attempts_npr"
, sum(carrier_cost) as "carrier_cost"
       from agg_customer_tg_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), tg_id;
       
       --select * from agg_customer_tg_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--generate customer dnislata 1-min agg
RAISE NOTICE 'Aggregating agg_customer_dnislata_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnislata_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnislata_1min (batch_id, call_time, dnis_lata, attempts, completions, duration, duration_billed, revenue)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, dnis_lata
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       where dnis_lata >= 1
       group by cdr.batch_id, date_trunc('minute', "call_time"), dnis_lata;
       --select * from agg_customer_dnislata_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_dnislata_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnislata_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnislata_hourly (batch_id, call_time, dnis_lata, attempts, completions, duration, duration_billed, revenue)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, dnis_lata
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from agg_customer_dnislata_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       where dnis_lata >= 1
       group by agg.batch_id, date_trunc('hour', "call_time"), dnis_lata;
       --select * from agg_customer_dnislata_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_dnislata_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnislata_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnislata_daily (batch_id, call_time, dnis_lata, attempts, completions, duration, duration_billed, revenue)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, dnis_lata
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from agg_customer_dnislata_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       where dnis_lata >= 1
       group by agg.batch_id, date_trunc('day', "call_time"), dnis_lata;
       --select * from agg_customer_dnislata_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate customer ocn 1-min agg
--drop table agg_customer_ocn_1min
--create table agg_customer_ocn_1min as
RAISE NOTICE 'Aggregating agg_customer_dnisocn_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnisocn_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnisocn_1min (batch_id, call_time, dnis_ocn, attempts, completions, duration, duration_billed, revenue)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, dnis_ocn
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), dnis_ocn;
       
       --select * from agg_customer_dnisocn_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_dnisocn_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnisocn_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnisocn_hourly (batch_id, call_time, dnis_ocn, attempts, completions, duration, duration_billed, revenue)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, dnis_ocn
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from agg_customer_dnisocn_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), dnis_ocn;
       
       --select * from agg_customer_dnisocn_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_dnisocn_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnisocn_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnisocn_daily (batch_id, call_time, dnis_ocn, attempts, completions, duration, duration_billed, revenue)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, dnis_ocn
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from agg_customer_dnisocn_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), dnis_ocn;
       
       --select * from agg_customer_dnisocn_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate customer dnis_state 1-min agg
--drop table agg_customer_dnstate_1min
--create table agg_customer_state_1min as

RAISE NOTICE 'Aggregating agg_customer_dnisstate_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnisstate_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnisstate_1min (batch_id, call_time, dnis_state, attempts, completions, duration, duration_billed, revenue)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, coalesce(dnis_state, 'XX') as "dnis_state"
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(customer_revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), dnis_state;
       
       --select * from agg_customer_dnisstate_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_dnisstate_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnisstate_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnisstate_hourly (batch_id, call_time, dnis_state, attempts, completions, duration, duration_billed, revenue)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, dnis_state
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from agg_customer_dnisstate_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), dnis_state;
       
       --select * from agg_customer_dnisstate_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_dnisstate_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_dnisstate_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_dnisstate_daily (batch_id, call_time, dnis_state, attempts, completions, duration, duration_billed, revenue)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, dnis_state
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from agg_customer_dnisstate_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), dnis_state;
       
       --select * from agg_customer_dnisstate_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));



--generate customer clli 1-min agg
--truncate table agg_customer_clli_1min
--create table agg_customer_clli_1min as
/* BETA
RAISE NOTICE 'Aggregating agg_customer_clli_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_clli_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_clli_1min (batch_id, call_time, dest_clli, attempts, completions, duration, duration_billed, revenue)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, coalesce(dest_clli, 'XX') as "dest_clli"
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(revenue) as "revenue"
--, sum(case when duration between 1 and 6 then 1 else 0 end)
--, sum(case sip_code when '487' then 1 else 0 end)
--, sum(case sip_code when '404' then 1 else 0 end)
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), dest_clli;
       
       --select * from agg_customer_clli_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/

--generate tg prefix 1-min agg
--create table agg_customer_tg_prefix_1min as

RAISE NOTICE 'Aggregating agg_customer_routingprefix_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_routingprefix_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_routingprefix_1min (batch_id, call_time, tg_id, routing_prefix, attempts, completions, lcr_depth)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(lcr_depth) as "lcr_depth"
        --, sum(duration) as "duration"
       --, sum(duration_billed) as "duration_billed"
       --, sum(revenue) as "revenue"
       --sum(case when duration between 1 and 6 then 1 else 0 end) as "sdr"
       --sum(case sip_code when '487' then 1 else 0 end) as "code_",
       --sum(case sip_code when '404' then 1 else 0 end)
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id, routing_prefix;
       
       --select * from agg_customer_tg_routingprefix_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

RAISE NOTICE 'Aggregating agg_customer_routingprefix_hourly: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_routingprefix_hourly where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_routingprefix_hourly (batch_id, call_time, tg_id, routing_prefix, attempts, completions, lcr_depth)
select agg.batch_id
, date_trunc('hour', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(lcr_depth) as "lcr_depth"
       from agg_customer_tg_routingprefix_1min as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('hour', "call_time"), tg_id, routing_prefix;
       
       --select * from agg_customer_tg_routingprefix_hourly order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Aggregating agg_customer_routingprefix_daily: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_routingprefix_daily where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_routingprefix_daily (batch_id, call_time, tg_id, routing_prefix, attempts, completions, lcr_depth)
select agg.batch_id
, date_trunc('day', min(call_time)) as "call_time"
, tg_id
, routing_prefix
, sum(attempts) as "attempts"
, sum(completions) as "completions"
, sum(lcr_depth) as "lcr_depth"
       from agg_customer_tg_routingprefix_hourly as agg
       inner join tmp_batches as tmp on tmp.batch_id = agg.batch_id
       group by agg.batch_id, date_trunc('day', "call_time"), tg_id, routing_prefix;
       
       --select * from agg_customer_tg_routingprefix_daily order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--generate tg prefix/juris 1-min agg
--create table agg_customer_tg_prefix_juris_1min as
/* BETA
RAISE NOTICE 'Aggregating agg_customer_prefix_juris_1min: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from agg_customer_tg_prefix_juris_1min where batch_id in (select batch_id from tmp_batches);
insert into agg_customer_tg_prefix_juris_1min (batch_id, call_time, tg_id, routing_prefix, juris, attempts, completions, lcr_depth)
select cdr.batch_id
, date_trunc('minute', min(call_time)) as "call_time"
, tg_id, routing_prefix
, juris, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
        --, sum(duration) as "duration"
       --, sum(duration_billed) as "duration_billed"
       --, sum(revenue) as "revenue"
       --sum(case when duration between 1 and 6 then 1 else 0 end) as "sdr"
       --sum(case sip_code when '487' then 1 else 0 end) as "code_",
       --sum(case sip_code when '404' then 1 else 0 end)
, sum(lcr_depth) as "lcr_depth"       
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id, date_trunc('minute', "call_time"), tg_id, routing_prefix, juris;
       
       --select * from agg_customer_tg_prefix_juris_1min order by call_time desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/



--record bad numbers (404)
--TODO: Add code to reset the expires_at instead of just appending a second enty of same number.
/* BETA
RAISE NOTICE 'Aggregating bad_numbers: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into bad_numbers (dnis, created_at, expires_at)
    select dnis, now(), now() + interval '10' day
    from cdr_customer as cdr
    inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
    where sip_code = '404'
    group by dnis;
    
    --select * from bad_numbers order by created_at desc limit 100000;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
*/

--close off the batch. KEEP AT BOTTOM
--create table agg_customer_batch as
RAISE NOTICE 'Aggregating agg_customer_batch: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into agg_customer_batch (batch_id, attempts, completions, duration, duration_billed, revenue, sd, code_487, code_404, start_time, end_time, most_recent_cdr)
select cdr.batch_id
, count(*) as "attempts"
, sum(case cdr.sip_code when '200' then 1 else 0 end) as "completions"
, sum(duration) as "duration"
, sum(duration_billed) as "duration_billed"
, sum(cdr.customer_revenue) as "revenue"
, sum(case when duration between 1 and 6 then 1 else 0 end)
, sum(case sip_code when '487' then 1 else 0 end)
, sum(case sip_code when '404' then 1 else 0 end)
, now()
, clock_timestamp()
, max(call_time) as "most_recent_cdr"
       from cdr_customer as cdr
       inner join tmp_batches as tmp on tmp.batch_id = cdr.batch_id
       group by cdr.batch_id;
--select * from agg_customer_batch order by processed_time desc;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


RAISE NOTICE 'Create customer TGs that don''t already exist: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into trunk_groups_customer (tg_id, status)
select tg_id, 'new' from cdr_customer where tg_id not in (select tg_id from trunk_groups_customer) group by tg_id;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
--select * from trunk_groups_customer order by created_at desc

RAISE NOTICE 'Create signal IPs that don''t already exist: %', clock_timestamp();
vstart_time = clock_timestamp();
insert into signal_ips_customer (signal_ip, tg_id)
select signal_ip, tg_id from cdr_customer where signal_ip || tg_id not in (select signal_ip || tg_id from signal_ips_customer) group by signal_ip, tg_id;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
--select * from signal_ips_customer order by created_at desc




--TODO: purge batches we have processed
RAISE NOTICE 'Deleting processed batch: %', clock_timestamp();
vstart_time = clock_timestamp();
delete from cdr_customer where batch_id in (select batch_id from tmp_batches) and batch_id != 'CDR_REVIEW';
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

--TODO: concurrent refresh of today agg. maybe do on timer. unsure. pull from settings table.

--refresh today if configured to do so.
/* BETA
--insert into settings (setting_name, setting_value) values ('refresh_daily_per_batch', 'true');
if (select setting_value from settings where setting_name = 'refresh_daily_per_batch') = 'true' then
    vstart_time = clock_timestamp();
    RAISE NOTICE 'Refreshing today''s stats: %', clock_timestamp();
    PERFORM public.fnmaintenance_refresh_today();
    RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
else
    RAISE NOTICE 'Skipping today''s stats: %', clock_timestamp();
end if;
*/

--refresh daily if configured to do so.
/* BETA
if (select setting_value from settings where setting_name = 'refresh_daily_per_batch') = 'true' then
    vstart_time = clock_timestamp();
    RAISE NOTICE 'Refreshing daily stats: %', clock_timestamp();
    PERFORM public.fnmaintenance_refresh_daily();
    RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));
else
    RAISE NOTICE 'Skipping daily stats: %', clock_timestamp();
end if;
*/

RAISE NOTICE 'DONE: %', clock_timestamp();

--vacuum (full, analyze);

END;
$BODY$;

ALTER FUNCTION public.fnprocess_cdr_customer(text)
    OWNER TO postgres;
--select fnprocess_data_retention()
--select * from data_retention_setup

CREATE OR REPLACE FUNCTION public.fnprocess_data_retention()
    RETURNS void
    LANGUAGE 'plpgsql'
    
    
AS $BODY$

DECLARE
vperiod_boundary timestamp;
vstart_time timestamp;

BEGIN

--insert default retention periods for data sets.
IF NOT EXISTS (SELECT 1 FROM data_retention_setup where dataset = 'agg_customer_network') THEN
  insert into data_retention_setup (dataset, retention_1min, retention_hourly, retention_daily) values ('agg_customer_network', 1440, 744, 365);
END IF;

IF NOT EXISTS (SELECT 1 FROM data_retention_setup where dataset = 'agg_customer_network_sipcode') THEN
  insert into data_retention_setup (dataset, retention_1min, retention_hourly, retention_daily) values ('agg_customer_network_sipcode', 1440, 744, 365);
END IF;


--prune agg_customer_network data set
vstart_time = clock_timestamp();
vperiod_boundary = current_timestamp - ((select retention_1min from data_retention_setup where dataset = 'agg_customer_network') ||' minutes')::interval;
RAISE NOTICE 'agg_customer_network_1min boundary: %', vperiod_boundary;
delete from agg_customer_network_1min where call_time < vperiod_boundary;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

vstart_time = clock_timestamp();
vperiod_boundary = current_timestamp - ((select retention_hourly from data_retention_setup where dataset = 'agg_customer_network') ||' hours')::interval;
RAISE NOTICE 'agg_customer_network_hourly boundary: %', vperiod_boundary;
delete from agg_customer_network_hourly where call_time < vperiod_boundary;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

vstart_time = clock_timestamp();
vperiod_boundary = current_timestamp - ((select retention_daily from data_retention_setup where dataset = 'agg_customer_network') ||' days')::interval;
RAISE NOTICE 'agg_customer_network_daily boundary: %', vperiod_boundary;
delete from agg_customer_network_daily where call_time < vperiod_boundary;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));


--prune agg_customer_network_sipcode data set
vstart_time = clock_timestamp();
vperiod_boundary = current_timestamp - ((select retention_1min from data_retention_setup where dataset = 'agg_customer_network_sipcode') ||' minutes')::interval;
RAISE NOTICE 'agg_customer_network_sipcode_1min boundary: %', vperiod_boundary;
delete from agg_customer_network_sipcode_1min where call_time < vperiod_boundary;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

vstart_time = clock_timestamp();
vperiod_boundary = current_timestamp - ((select retention_hourly from data_retention_setup where dataset = 'agg_customer_network_sipcode') ||' hours')::interval;
RAISE NOTICE 'agg_customer_network_sipcode_hourly boundary: %', vperiod_boundary;
delete from agg_customer_network_sipcode_hourly where call_time < vperiod_boundary;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));

vstart_time = clock_timestamp();
vperiod_boundary = current_timestamp - ((select retention_daily from data_retention_setup where dataset = 'agg_customer_network_sipcode') ||' days')::interval;
RAISE NOTICE 'agg_customer_network_sipcode_daily boundary: %', vperiod_boundary;
delete from agg_customer_network_sipcode_daily where call_time < vperiod_boundary;
RAISE NOTICE 'Runtime (sec): %', (SELECT EXTRACT(EPOCH FROM clock_timestamp() - vstart_time));





END;
$BODY$;


-- Function: public.fnweighted_targets()

-- DOCUMENTATION: https://github.com/rainmandata/networkanalytics-voice/wiki/Weighted-Target-Files
-- SAMPLE EXECUTION: select * from fnweighted_targets('2021-01-01', '2021-01-31 23:59:59');

-- DEPENDENCIES
-- Table: agg_carrier_tg_routingprefix_daily

create function public.fnweighted_targets (
      p_start_datetime timestamp without time zone
    , p_end_datetime timestamp without time zone
)
returns table ( prefix text
               , attempts bigint
               , completions bigint
               , mou bigint
               , total_spent numeric(20, 10)
               , connected_rate_min numeric(20, 10)
                , connected_rate_avg numeric(20, 10)
)
language plpgsql
as $$
declare

begin

RETURN QUERY 
    select agg_carrier_tg_routingprefix_daily.routing_prefix
    , sum(agg_carrier_tg_routingprefix_daily.attempts) as "attempts"
    , sum(agg_carrier_tg_routingprefix_daily.completions) as "completions"
    , sum(agg_carrier_tg_routingprefix_daily.duration_billed) / 60 as "mou"
    , sum(agg_carrier_tg_routingprefix_daily.carrier_cost) as "total_spent"
    , min(agg_carrier_tg_routingprefix_daily.carrier_rate_min) as "connected_rate_min"
    , sum(agg_carrier_tg_routingprefix_daily.carrier_cost) / (sum(agg_carrier_tg_routingprefix_daily.duration_billed) / 60.000000) as connected_rate_avg
from agg_carrier_tg_routingprefix_daily
    where agg_carrier_tg_routingprefix_daily.call_time >= p_start_datetime
    and agg_carrier_tg_routingprefix_daily.call_time <= p_end_datetime
    group by agg_carrier_tg_routingprefix_daily.routing_prefix
    order by sum(agg_carrier_tg_routingprefix_daily.duration_billed) desc
    ;

end;
$$;
