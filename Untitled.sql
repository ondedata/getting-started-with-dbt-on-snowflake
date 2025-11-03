execute dbt project from workspace "USER$"."PUBLIC"."DBT_DEMO" project_root='tasty_bytes_dbt_demo' args='deps --target dev' external_access_integrations = (dbt_ext_access)

;
/*create security integration external_oauth_azure
    type = external_oauth
    enabled = true
    external_oauth_type = azure
    external_oauth_issuer = 'https://sts.windows.net/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/'
    external_oauth_jws_keys_url = 'https://login.microsoftonline.com/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/discovery/v2.0/keys'
    external_oauth_token_user_mapping_claim = 'upn'
    external_oauth_snowflake_user_mapping_attribute = 'login_name';
*/
;
create or replace security integration external_oauth_azure
    type = external_oauth
    enabled = true
    external_oauth_type = azure
    external_oauth_issuer = 'https://sts.windows.net/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/'
    external_oauth_jws_keys_url = 'https://login.microsoftonline.com/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/discovery/v2.0/keys'
    external_oauth_audience_list = ('https://onedata-snowflake.datatorii.com')
    external_oauth_token_user_mapping_claim = 'appid'
    external_oauth_snowflake_user_mapping_attribute = 'login_name';

show security integrations;


create or replace security integration external_oauth_azure
    type = external_oauth
    enabled = true
    external_oauth_type = azure
    external_oauth_issuer = 'https://sts.windows.net/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/'
    external_oauth_jws_keys_url = 'https://login.microsoftonline.com/d55902b5-7fd6-46a0-b3dc-e7c7a33b8300/discovery/v2.0/keys'
    external_oauth_audience_list = ('https://ud72464.west-europe.azure.snowflakecomputing.com')
    external_oauth_token_user_mapping_claim = 'appid'
    external_oauth_snowflake_user_mapping_attribute = 'login_name';


select * from snowflake.account_usage.login_history order by event_timestamp desc;