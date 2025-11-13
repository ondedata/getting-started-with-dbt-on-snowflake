show EXTERNAL VOLUMES in account;

DESC external volume DATAFACTORY_DB_DEV;

{"NAME":"ONELAKE","STORAGE_PROVIDER":"AZURE","STORAGE_BASE_URL":"azure://onelake.dfs.fabric.microsoft.com/cb719b1b-1f71-4952-95ce-7f0fc5fc98bc/af0d5775-085a-4682-a22d-5e94aed7a524/Files/DATAFACTORY_DB_DEV","STORAGE_ALLOWED_LOCATIONS":["azure://onelake.dfs.fabric.microsoft.com/cb719b1b-1f71-4952-95ce-7f0fc5fc98bc/af0d5775-085a-4682-a22d-5e94aed7a524/Files/DATAFACTORY_DB_DEV*"],"AZURE_TENANT_ID":"d55902b5-7fd6-46a0-b3dc-e7c7a33b8300","AZURE_MULTI_TENANT_APP_NAME":"zpjntysnowflakepacint_1762243707233","AZURE_CONSENT_URL":"https://login.microsoftonline.com/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/oauth2/authorize?client_id=331e56b2-acc6-41ad-a58e-6295894902e3&response_type=code","ENCRYPTION_TYPE":"NONE","ENCRYPTION_KMS_KEY_ID":""};


drop table DATAFACTORY_DB.DEV.iceberg_Inventory ;
CREATE OR REPLACE ICEBERG TABLE DATAFACTORY_DB.DEV.iceberg_Inventory (
    InventoryId int,
    ItemName STRING
);

DROP EXTERNAL VOLUME DATAFACTORY_DB_DEV;

INSERT INTO DATAFACTORY_DB.DEV.iceberg_Inventory
VALUES
(12346,'Amatrana');


select * from DATAFACTORY_DB.DEV.iceberg_Inventory;


CREATE DBT PROJECT "DBT_DB"."DEMO_INT"."TESTBGA" FROM $$snow://workspace/USER$BGARDES.PUBLIC.TEST_DBT/versions/live/tasty_bytes_dbt_demo$$ DEFAULT_TARGET = 'dev';

CREATE WORKSPACE DBT_DB.DEMO_INT.MYWSPACE FROM 'snow://workspace/USER$BGARDES.PUBLIC."TEST_DBT"/versions/live/tasty_bytes_dbt_demo';