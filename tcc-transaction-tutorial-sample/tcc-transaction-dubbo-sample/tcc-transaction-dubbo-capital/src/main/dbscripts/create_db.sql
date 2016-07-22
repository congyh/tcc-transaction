CREATE DATABASE `tcc_cap` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE TABLE `CAP_CAPITAL_ACCOUNT` (
  `CAPITAL_ACCOUNT_ID` int(11) NOT NULL,
  `BALANCE_AMOUNT` decimal(10,0) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CAPITAL_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TCC_TRANSACTION` (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GLOBAL_TX_ID` varchar(200) NOT NULL,
  `BRANCH_QUALIFIER` varchar(200) NOT NULL,
  `CONTENT` varbinary(8000) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `TRANSACTION_TYPE` int(11) DEFAULT NULL,
  `RETRIED_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  UNIQUE KEY `UX_TX_BQ` (`GLOBAL_TX_ID`,`BRANCH_QUALIFIER`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
