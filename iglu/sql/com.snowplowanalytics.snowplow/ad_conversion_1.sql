-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.5.0
-- Generated: 2019-07-25 05:41 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_ad_conversion_1 (
    "schema_vendor"  VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_name"    VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_format"  VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_version" VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "root_id"        CHAR(36)         ENCODE RAW  NOT NULL,
    "root_tstamp"    TIMESTAMP        ENCODE ZSTD NOT NULL,
    "ref_root"       VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "ref_tree"       VARCHAR(1500)    ENCODE ZSTD NOT NULL,
    "ref_parent"     VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "action"         VARCHAR(4096)    ENCODE ZSTD,
    "advertiser_id"  VARCHAR(4096)    ENCODE ZSTD,
    "campaign_id"    VARCHAR(4096)    ENCODE ZSTD,
    "category"       VARCHAR(4096)    ENCODE ZSTD,
    "conversion_id"  VARCHAR(4096)    ENCODE ZSTD,
    "cost"           DOUBLE PRECISION ENCODE RAW,
    "cost_model"     VARCHAR(3)       ENCODE ZSTD,
    "initial_value"  DOUBLE PRECISION ENCODE RAW,
    "property"       VARCHAR(4096)    ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_ad_conversion_1 IS 'iglu:com.snowplowanalytics.snowplow/ad_conversion/jsonschema/1-0-0';
