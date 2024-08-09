-- Create secret for GIT Integration
CREATE OR REPLACE SECRET os_sriga_git_secret
  TYPE = password
  USERNAME = '<user_name>'
  PASSWORD = '<password>';

-- Create GIT Integration
CREATE OR REPLACE API INTEGRATION OS_SRIGA_GIT_API_INTEGRATION
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/')
  ALLOWED_AUTHENTICATION_SECRETS = (os_sriga_git_secret)
  ENABLED = TRUE;

-- Create GIT Repo
CREATE OR REPLACE GIT REPOSITORY os_sriga_git_repo
  API_INTEGRATION = OS_SRIGA_GIT_API_INTEGRATION
  GIT_CREDENTIALS = os_sriga_git_secret
  ORIGIN = '<your_git_repo>';