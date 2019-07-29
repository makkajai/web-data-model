-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.5.0
-- Generated: 2019-07-25 05:41 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_link_click_1 (
    "schema_vendor"   VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"     VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"   VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"         CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"     TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"        VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"        VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"      VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "target_url"      VARCHAR(4096) ENCODE ZSTD NOT NULL,
    "element_classes" VARCHAR(5000) ENCODE ZSTD,
    "element_id"      VARCHAR(4096) ENCODE ZSTD,
    "element_target"  VARCHAR(4096) ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_link_click_1 IS 'iglu:com.snowplowanalytics.snowplow/link_click/jsonschema/1-0-0';