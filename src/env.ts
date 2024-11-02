export const ENV_DEVELOPMENT = "development";
export const ENV_PRODUCTION = "production";
export const ENV_STAGING = "staging";
export const ENV_QA = "qa";

export const ENV = {
  isDevelopment: process.env.NODE_ENV === ENV_DEVELOPMENT,
  logFolder: process.env.LOG_FOLDER,
};
