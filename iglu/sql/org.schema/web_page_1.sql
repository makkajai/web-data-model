-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.5.0
-- Generated: 2019-07-25 05:41 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.org_schema_web_page_1 (
    "schema_vendor"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "author"         VARCHAR(4096) ENCODE ZSTD,
    "breadcrumb"     VARCHAR(5000) ENCODE ZSTD,
    "date_created"   TIMESTAMP     ENCODE ZSTD,
    "date_modified"  TIMESTAMP     ENCODE ZSTD,
    "date_published" TIMESTAMP     ENCODE ZSTD,
    "genre"          VARCHAR(4096) ENCODE ZSTD,
    "in_language"    VARCHAR(4096) ENCODE ZSTD,
    "keywords"       VARCHAR(5000) ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.org_schema_web_page_1 IS 'iglu:org.schema/WebPage/jsonschema/1-0-0';
