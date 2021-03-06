CREATE TABLE INVEST_ORDER (
  ID          BIGINT         NOT NULL AUTO_INCREMENT,
  USER_ID      BIGINT         NOT NULL,
  USER_NAME    VARCHAR(200)   NOT NULL,
  PROJECT_ID   BIGINT         NOT NULL,
  PROJECT_NAME VARCHAR(200)   NOT NULL,
  AMOUNT      DECIMAL(10, 2) NOT NULL,
  STATUS      TINYINT        NOT NULL
  COMMENT '状态:0=创建 1=成功 2=失败',
  CREATED_AT   DATETIME       NOT NULL,
  UPDATED_AT   DATETIME       NOT NULL
);

CREATE TABLE PROJECT (
  ID           BIGINT         NOT NULL AUTO_INCREMENT,
  NAME         VARCHAR(200)   NOT NULL,
  TOTAL_AMOUNT  DECIMAL(10, 2) NOT NULL,
  REMAIN_AMOUNT DECIMAL(10, 2) NOT NULL,
  STATUS       TINYINT        NOT NULL
  COMMENT '状态:0=待发布 1=购买中 2=募集完成',
  CREATED_AT    DATETIME       NOT NULL,
  UPDATED_AT    DATETIME       NOT NULL
);