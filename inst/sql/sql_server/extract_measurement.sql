
--MEASUREMENT
--OUTPUT_FILE: MEASUREMENT.csv
SELECT
   MEASUREMENT_ID,
   n.PERSON_ID,
   MEASUREMENT_CONCEPT_ID,
   CONVERT(VARCHAR(20),MEASUREMENT_DATE, 120) as MEASUREMENT_DATE,
   CONVERT(VARCHAR(20),MEASUREMENT_DATETIME, 120) as MEASUREMENT_DATETIME,
   NULL as MEASUREMENT_TIME,
   MEASUREMENT_TYPE_CONCEPT_ID,
   OPERATOR_CONCEPT_ID,
   VALUE_AS_NUMBER,
   VALUE_AS_CONCEPT_ID,
   UNIT_CONCEPT_ID,
   RANGE_LOW,
   RANGE_HIGH,
   PROVIDER_ID,
   VISIT_OCCURRENCE_ID,
   NULL as VISIT_DETAIL_ID,
   MEASUREMENT_SOURCE_VALUE,
   MEASUREMENT_SOURCE_CONCEPT_ID,
   UNIT_SOURCE_VALUE,
   VALUE_SOURCE_VALUE
FROM @cdmDatabaseSchema.MEASUREMENT m
JOIN @cohortDatabaseSchema.N3C_COHORT n
  ON M.PERSON_ID = N.PERSON_ID
WHERE m.MEASUREMENT_DATE >= '1/1/2018';
