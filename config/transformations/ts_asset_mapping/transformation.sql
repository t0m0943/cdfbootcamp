/* MAPPING_MODE_ENABLED: false */
/* {"version":1,"sourceType":"raw","mappings":[{"from":"","to":"id","asType":"BIGINT"},{"from":"","to":"name","asType":"STRING"},{"from":"","to":"externalId","asType":"STRING"},{"from":"","to":"metadata","asType":"MAP<STRING, STRING>"},{"from":"","to":"unit","asType":"STRING"},{"from":"","to":"assetId","asType":"BIGINT"},{"from":"","to":"description","asType":"STRING"},{"from":"","to":"securityCategories","asType":"ARRAY<BIGINT>"},{"from":"","to":"isStep","asType":"BOOLEAN"},{"from":"","to":"isString","asType":"BOOLEAN"},{"from":"","to":"dataSetId","asType":"BIGINT"}]} */
SELECT ts.externalId AS externalId,
       ast.id AS assetId
FROM `_cdf`.`timeseries` AS ts
INNER JOIN `_cdf`.`assets` AS ast ON split(ts.externalId, ":") [0] = ast.externalId
