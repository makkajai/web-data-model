-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.5.0
-- Generated: 2019-07-25 05:41 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_ad_impression_1 (
    "schema_vendor"  VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_name"    VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_format"  VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_version" VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "root_id"        CHAR(36)         ENCODE RAW  NOT NULL,
    "root_tstamp"    TIMESTAMP        ENCODE ZSTD NOT NULL,
    "ref_root"       VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "ref_tree"       VARCHAR(1500)    ENCODE ZSTD NOT NULL,
    "ref_parent"     VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "advertiser_id"  VARCHAR(4096)    ENCODE ZSTD,
    "banner_id"      VARCHAR(4096)    ENCODE ZSTD,
    "campaign_id"    VARCHAR(4096)    ENCODE ZSTD,
    "cost"           DOUBLE PRECISION ENCODE RAW,
    "cost_model"     VARCHAR(3)       ENCODE ZSTD,
    "impression_id"  VARCHAR(4096)    ENCODE ZSTD,
    "target_url"     VARCHAR(4096)    ENCODE ZSTD,
    "zone_id"        VARCHAR(4096)    ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_ad_impression_1 IS 'iglu:com.snowplowanalytics.snowplow/ad_impression/jsonschema/1-0-0';
