-- SL_UAT.user_email definition

CREATE TABLE if not exists `user_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `delivery_status` tinyint(1) DEFAULT NULL,
  `SentOn` datetime DEFAULT NULL,
  `subject` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_status` tinyint(1) DEFAULT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK728A562858DF8C81` (`email_content_id`),
  KEY `FK728A5628DDE85DFA` (`user_id`),
  KEY `module_email_user_idx` (`module`,`email_type`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263651 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.user_active_note definition

CREATE TABLE IF NOT EXISTS `user_active_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `present_status_id` bigint(20) DEFAULT NULL,
  `present_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `engagement_level_id` bigint(20) DEFAULT NULL,
  `engagement_level` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_text` longtext COLLATE utf8_unicode_ci,
  `note_date` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `last_contact_type_id` bigint(20) DEFAULT NULL,
  `last_contact_type` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_contact_date` datetime DEFAULT NULL,
  `ts_status_note_date` datetime DEFAULT NULL,
  `rw_note_date` datetime DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_idx` (`user_id`)

) ENGINE=InnoDB AUTO_INCREMENT=88851 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.company_package_additional_information definition

CREATE TABLE IF NOT EXISTS `company_package_additional_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `company_package_id` bigint(20) NOT NULL,
  `company_package_column_1` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_2` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_3` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_4` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_5` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_6` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_7` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_8` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_9` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_package_column_10` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_company_package_id` (`company_package_id`),
  KEY `fk_cp_additional_info_id` (`company_package_id`)

) ENGINE=InnoDB AUTO_INCREMENT=1807 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.company_additional_information definition

CREATE TABLE IF NOT EXISTS `company_additional_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `company_column_1` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_2` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_3` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_4` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_5` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_6` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_7` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_8` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_9` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_column_10` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_company_id` (`company_id`),
  KEY `fk_company_additional_info_id` (`company_id`)

) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_additional_info definition

CREATE TABLE IF NOT EXISTS `user_additional_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `participant_column_1` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_2` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_3` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_4` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_5` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_6` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_7` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_8` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_9` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participant_column_10` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_id` (`user_id`),
  KEY `fk_user_additional_info_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3655 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.timezone_master_i18n definition

CREATE TABLE IF NOT EXISTS `timezone_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `timezoneName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone_master_id` bigint(20) NOT NULL,
  `screen_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TIMEZONEMASTER_ID` (`timezone_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5670 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.status_master_i18n definition

CREATE TABLE IF NOT EXISTS `status_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `user_status` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_master_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_master_id` (`status_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- SL_UAT.country_master_i18n definition

CREATE TABLE IF NOT EXISTS `country_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `country_name` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_master_id` bigint(20) DEFAULT NULL,
  `locale` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_master_i18n_countryid` (`country_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14808 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.state_master_i18n definition

CREATE TABLE IF NOT EXISTS `state_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `state_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_master_id` (`state_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=273659 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.language_master_i18n definition

CREATE TABLE IF NOT EXISTS`language_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `language_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_language_master_i18n_lmid` (`language_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10210 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.package_level_master_i18n definition

CREATE TABLE IF NOT EXISTS `package_level_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` double DEFAULT NULL,
  `package_level` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_level_master_id` bigint(20) DEFAULT NULL,
  `quickbooks_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_package_level_master_id_i18n_plmid` (`package_level_master_id`),
  KEY `plm_idx` (`package_level_master_id`),
  KEY `locale_idx` (`package_level_master_id`,`locale`(255))
) ENGINE=InnoDB AUTO_INCREMENT=1951 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.product_level_master_i18n definition

CREATE TABLE IF NOT EXISTS `product_level_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` double DEFAULT NULL,
  `level_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_level_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_level_master_i18n_slmid` (`product_level_master_id`),
  KEY `slm_idx` (`product_level_master_id`),
  KEY `locale_idx` (`product_level_master_id`,`locale`),
  KEY `idx_product_level_master_i18n_locale_master_id` (`locale`,`product_level_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.resume_service_master_i18n definition

CREATE TABLE IF NOT EXISTS `resume_service_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` double DEFAULT NULL,
  `service_name` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume_service_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resume_service_master_i18n_rsmid` (`resume_service_master_id`),
  KEY `rsm_idx` (`resume_service_master_id`),
  KEY `locale_idx` (`resume_service_master_id`,`locale`(255))
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.document_status_master_i18n definition

CREATE TABLE IF NOT EXISTS `document_status_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `document_status` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_status_master_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_status_master_i18n_ibfk_1` (`document_status_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.handpicked_job_status_master_i18n definition

CREATE TABLE IF NOT EXISTS `handpicked_job_status_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `handpicked_job_status` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handpicked_job_status_master_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `handpicked_job_status_master_i18n_ibfk_1` (`handpicked_job_status_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.cancel_first_level_reasons_i18n definition

CREATE TABLE IF NOT EXISTS `cancel_first_level_reasons_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` double DEFAULT NULL,
  `cancel_reason` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancel_first_master_id` bigint(20) DEFAULT NULL,
  `locale` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cancel_first_level_reasons_i18n_cflrid` (`cancel_first_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.cancel_second_level_reasons_i18n definition

CREATE TABLE IF NOT EXISTS `cancel_second_level_reasons_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` double DEFAULT NULL,
  `cancel_second_master_id` bigint(20) DEFAULT NULL,
  `cancel_reason` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cancel_second_level_reasons_i18n_cslrid` (`cancel_second_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.present_status_master_i18n definition

CREATE TABLE IF NOT EXISTS `present_status_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `present_status_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_present_status_master_id` (`present_status_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.engagement_level_master_i18n definition

CREATE TABLE IF NOT EXISTS `engagement_level_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `engagement_level` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `engagement_level_master_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_engagement_level_master_lmid` (`engagement_level_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.tenant_master definition

CREATE TABLE IF NOT EXISTS `tenant_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `abbreviation` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenant_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pod_id` bigint(11) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenant_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `business_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_location_id` bigint(20) DEFAULT NULL,
  `is_test_tenant` tinyint(1) NOT NULL DEFAULT '0',
  `is_incomplete_self_registration_allowed` tinyint(1) DEFAULT '0',
  `is_spotlight_access` tinyint(1) NOT NULL DEFAULT '1',
  `networking_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'DISABLED',
  `location_provider_id` int(11) DEFAULT '0',
  `tenant_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_tm_abbreviation` (`abbreviation`),
  UNIQUE KEY `uniq_tm_short_code` (`short_code`),
  UNIQUE KEY `uniq_tm_tenant_name` (`tenant_name`),
  KEY `pod_fk_idx` (`pod_id`),
  KEY `FK_business_location` (`business_location_id`),
  KEY `index_tenant_uuid` (`tenant_key`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.billing_trigger_master_i18n definition

CREATE TABLE IF NOT EXISTS `billing_trigger_master_i18n` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `billing_trigger_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_trigger_master_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `billing_trigger_master_id` (`billing_trigger_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=959 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_critique_status definition

CREATE TABLE IF NOT EXISTS `user_critique_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `critique_request_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `critique_sent_date` datetime DEFAULT NULL,
  `critique_complete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquecritiquestatusrid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.`user` definition

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `address1` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `postal_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT NULL,
  `is_pilot` tinyint(1) DEFAULT NULL,
  `cell_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_flag_ISO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credentials_expired` bit(1) NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_enabled` bit(1) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goes_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_flag_ISO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `international_phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `international_flag_ISO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_language_id` bigint(20) DEFAULT NULL,
  `suuported_locale_id` bigint(20) DEFAULT NULL,
  `locale_master_id` bigint(20) DEFAULT NULL,
  `application_language_id` bigint(20) DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selfregister_company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selfregister_employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selfregister_last_day` datetime DEFAULT NULL,
  `timezone_master_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_phone_extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_flag_ISO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_contact_no` varchar(60) COLLATE utf8_unicode_ci DEFAULT 'homePhone',
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `company_group_id` bigint(20) DEFAULT NULL,
  `company_list_id` bigint(20) DEFAULT NULL,
  `company_package_id` bigint(20) DEFAULT NULL,
  `reachable_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ismigrated` tinyint(1) DEFAULT NULL,
  `source` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image_id` bigint(20) DEFAULT NULL,
  `feedback_img_number` tinyint(4) DEFAULT '0',
  `is_migrated` bit(1) DEFAULT NULL,
  `email_signature_title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `migration_eligible` bit(1) DEFAULT NULL,
  `migration_completion` tinyint(1) DEFAULT '0',
  `migration_date` datetime DEFAULT NULL,
  `old_user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_changed_date` datetime DEFAULT NULL,
  `is_masked` tinyint(1) DEFAULT '0',
  `eligibility_list_id` bigint(20) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `status_master_id` bigint(20) DEFAULT NULL,
  `document_status_master_id` bigint(20) DEFAULT NULL,
  `reference_system_user_id` bigint(20) DEFAULT NULL,
  `is_user_propogated` tinyint(1) DEFAULT '0',
  `display_tnc_contracts` tinyint(1) DEFAULT '1',
  `user_preference_migration_flag` tinyint(1) NOT NULL DEFAULT '0',
  `external_auth` tinyint(1) DEFAULT '0',
  `pac_criteria_satisfied` tinyint(1) DEFAULT '0',
  `user_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36EBCB6B569C7F` (`company_group_id`),
  KEY `FK36EBCB3FFA4C7A` (`company_id`),
  KEY `FK36EBCBAA3F1D35` (`company_list_id`),
  KEY `FK36EBCB63DCBDDF` (`company_package_id`),
  KEY `FK_DOCUMENT_PROFILE_IMAGE` (`profile_image_id`),
  KEY `migration_eligible_idx` (`migration_eligible`),
  KEY `upload_date_idx` (`created`),
  KEY `user_status_idx` (`user_status`),
  KEY `FK_COUNTRY_ID` (`country_id`),
  KEY `FK_STATE_ID` (`state_id`),
  KEY `FK_USRLANG_ID` (`user_language_id`),
  KEY `FK_APPLANG_ID` (`application_language_id`),
  KEY `TIMEZONE_MASTER_ID` (`timezone_master_id`),
  KEY `FK_status_master_id_usmi` (`status_master_id`),
  KEY `recordType_idx_tmp` (`record_type`),
  KEY `combined_tenant_record_type` (`tenant_id`,`record_type`,`id`),
  KEY `combined_tenant_record_type_comppkag` (`tenant_id`,`record_type`,`id`,`company_id`,`company_package_id`),
  KEY `FK_usr_localemstr_localemstrid` (`locale_master_id`),
  KEY `fk_usr_localemstr_supportedlocaleid` (`suuported_locale_id`),
  KEY `ix_user_last_updated` (`lastupdated`),
  KEY `FK_document_status_master_id_udsmi` (`document_status_master_id`),
  KEY `email_idx` (`email`),
  KEY `user_type_ix` (`user_type`),
  KEY `secondary_email_idx` (`secondary_email`),
  KEY `user_category_idx` (`category`),
  KEY `index_user_uuid` (`user_key`),
  KEY `user_idx_record_type` (`record_type`)
) ENGINE=InnoDB AUTO_INCREMENT=584913 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_service_details definition

CREATE TABLE IF NOT EXISTS `user_service_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `billing_code1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_date` date DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `cancel_primary_reason_id` bigint(20) DEFAULT NULL,
  `cancel_secondary_reason_id` bigint(20) DEFAULT NULL,
  `eligibility_date` date DEFAULT NULL,
  `eligibility_end_date` date DEFAULT NULL,
  `end_of_service_date` date DEFAULT NULL,
  `heard_about_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heard_about_rs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hear_about_rs_master_id` bigint(20) DEFAULT NULL,
  `hold_date` datetime DEFAULT NULL,
  `hold_resume_date` datetime DEFAULT NULL,
  `is_attend_onsite` tinyint(1) DEFAULT NULL,
  `is_contactinfo_provided` tinyint(1) DEFAULT NULL,
  `is_demouser` tinyint(1) DEFAULT '0',
  `is_onhold` tinyint(1) DEFAULT '0',
  `is_never_onhold` tinyint(1) NOT NULL DEFAULT '0',
  `is_onhold_warn_sent` tinyint(1) NOT NULL DEFAULT '0',
  `is_tc_notified` tinyint(1) NOT NULL DEFAULT '0',
  `is_receive_jobleads` tinyint(1) DEFAULT NULL,
  `is_surveyparticipate` tinyint(1) DEFAULT NULL,
  `notification_date` date DEFAULT NULL,
  `outreach_date` date DEFAULT NULL,
  `outreach_queue` tinyint(1) DEFAULT '0',
  `registration_date` datetime DEFAULT NULL,
  `resume_assignment_flag` tinyint(1) DEFAULT '1',
  `resume_date` datetime DEFAULT NULL,
  `resumewriter_assignDate` datetime DEFAULT NULL,
  `separation_date` date DEFAULT NULL,
  `suspend_date` datetime DEFAULT NULL,
  `suspend_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discounted_days` int(11) DEFAULT '0',
  `days_to_land` int(11) DEFAULT NULL,
  `time_last_job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `clientservice_id` bigint(20) DEFAULT NULL,
  `jobconcierge_id` bigint(20) DEFAULT NULL,
  `previous_resumewriter_id` bigint(20) DEFAULT NULL,
  `resumewriter_id` bigint(20) DEFAULT NULL,
  `resumewriter_assignedBy` bigint(20) DEFAULT NULL,
  `transitionspecialist_id` bigint(20) DEFAULT NULL,
  `ts_coordinator_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `ts_call_schedule_date` datetime DEFAULT NULL,
  `is_suspended` tinyint(1) DEFAULT '0',
  `call_schedule_flag` tinyint(1) DEFAULT '1',
  `eligible_for_processing` tinyint(1) DEFAULT '1',
  `relationship_manager_id` bigint(20) DEFAULT NULL,
  `end_of_service_date_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outreach_date_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eligibility_end_date_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing date reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tips_email` tinyint(1) DEFAULT NULL,
  `webinar_email` tinyint(1) DEFAULT NULL,
  `tc_assignment_date` datetime DEFAULT NULL,
  `virtual_last_login` datetime DEFAULT NULL,
  `final_resume_upload_date` datetime DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `survey_reminder_1` tinyint(1) DEFAULT NULL,
  `survey_reminder_2` tinyint(1) DEFAULT NULL,
  `survey_reminder_3` tinyint(1) DEFAULT NULL,
  `handpicked_job_status_master_id` bigint(20) DEFAULT NULL,
  `is_brightfit_access` tinyint(1) NOT NULL DEFAULT '0',
  `has_multiple_programs` tinyint(1) DEFAULT '0',
  `is_legacy_rdp` tinyint(1) DEFAULT NULL,
  `date_of_indication` datetime DEFAULT NULL,
  `additional_coaching` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_IDX` (`user_id`),
  KEY `FK9DBE2644C340BB9F` (`transitionspecialist_id`),
  KEY `FK9DBE2644D289C14F` (`resumewriter_assignedBy`),
  KEY `FK9DBE2644DDE85DFA` (`user_id`),
  KEY `FK9DBE264444EA617D` (`previous_resumewriter_id`),
  KEY `FK9DBE26443F0F4A35` (`ts_coordinator_id`),
  KEY `FK9DBE26447250654F` (`jobconcierge_id`),
  KEY `FK9DBE264422841EC5` (`resumewriter_id`),
  KEY `FK9DBE2644277894DB` (`clientservice_id`),
  KEY `FK_RELATIONSHIP_MANAGER_USER` (`relationship_manager_id`),
  KEY `FK_primary_cancel_reason` (`cancel_primary_reason_id`),
  KEY `FK_second_cancel_reason` (`cancel_secondary_reason_id`),
  KEY `Active_IDX` (`user_id`,`activeflag`),
  KEY `registered_IDX` (`user_id`,`registration_date`),
  KEY `is_demouser_idx` (`is_demouser`),
  KEY `combined_user_tenant_user_id_ts_coord` (`tenant_id`,`user_id`,`ts_coordinator_id`),
  KEY `fk_hearaboutrs_usd` (`hear_about_rs_master_id`),
  KEY `FK_handpicked_job_status_master_id_hpjsmi` (`handpicked_job_status_master_id`),
  KEY `usd_ts_call_schedule_date_idx` (`ts_call_schedule_date`),
  KEY `usd_call_schedule_flag_idx` (`call_schedule_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=98242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.rb_tenant_master_locale definition

CREATE TABLE IF NOT EXISTS `rb_tenant_master_locale` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `tenant_master_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tenant_master_id` (`tenant_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_statistic definition

CREATE TABLE IF NOT EXISTS `user_statistic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `coverletter_completed` tinyint(1) NOT NULL DEFAULT '0',
  `extraction_source` int(1) DEFAULT NULL,
  `last_contact_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `profile_created` tinyint(1) DEFAULT '0',
  `resume_type` int(1) NOT NULL DEFAULT '0',
  `step` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `pvpProgress` int(1) NOT NULL,
  `job_profile_completion_date` datetime DEFAULT NULL,
  `resume_profile_completion_date` datetime DEFAULT NULL,
  `onboarding_completion_date` datetime DEFAULT NULL,
  `new_onboarding_process_flag` tinyint(1) DEFAULT '0',
  `resume_submit_count` int(1) NOT NULL DEFAULT '0',
  `first_job_sent_date` datetime DEFAULT NULL,
  `first_mail_sent_date` datetime DEFAULT NULL,
  `first_call_complete_date` datetime DEFAULT NULL,
  `first_login` datetime DEFAULT NULL,
  `phasetwo_optin_value` int(1) DEFAULT NULL,
  `phasetwo_optin_date` datetime DEFAULT NULL,
  `accomplishment_builder_step` int(1) DEFAULT '0',
  `resume_shared` tinyint(1) DEFAULT '0',
  `successful_resume_shared_date` datetime DEFAULT NULL,
  `spotlight_notification_center_last_refreshed_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `job_preference_step` tinyint(1) NOT NULL DEFAULT '0',
  `video_policy_accepted_date` datetime DEFAULT NULL,
  `experience_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquestatuserid` (`user_id`),
  KEY `FKE15A5DDCDDE85DFA` (`user_id`),
  KEY `fk_ust_tenant_id` (`tenant_id`),
  KEY `us_first_call_complete_date_idx` (`first_call_complete_date`)
) ENGINE=InnoDB AUTO_INCREMENT=80591 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.company_group definition

CREATE TABLE IF NOT EXISTS `company_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `old_group_id` bigint(20) DEFAULT NULL,
  `product_level_id` bigint(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `has_hr_user` tinyint(1) DEFAULT '0',
  `product_delivery_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK51B2843D3FFA4C7A` (`company_id`),
  KEY `product_delivery_type_fk_09_idx` (`product_delivery_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2618 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.document_status_master definition

CREATE TABLE IF NOT EXISTS `document_status_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `document_status` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.company_list definition

CREATE TABLE IF NOT EXISTS `company_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `group_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `old_group_id` bigint(20) DEFAULT NULL,
  `old_group_reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_level_id` bigint(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK553973203FFA4C7A` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2851 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.timezone_master definition

CREATE TABLE IF NOT EXISTS `timezone_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `offsetHours` int(11) DEFAULT NULL,
  `offsetMins` int(11) DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_sl` tinyint(1) DEFAULT '0',
  `timezone_order` int(3) DEFAULT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.cancel_first_level_reasons definition

CREATE TABLE IF NOT EXISTS `cancel_first_level_reasons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `cancel_first_level_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.cancel_second_level_reasons definition

CREATE TABLE IF NOT EXISTS `cancel_second_level_reasons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `cancel_first_level_reason_id` bigint(20) DEFAULT NULL,
  `cancel_second_level_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove_for_tc_service` tinyint(1) DEFAULT '0',
  `list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.handpicked_job_status_master definition

CREATE TABLE IF NOT EXISTS `handpicked_job_status_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `handpicked_job_status` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_job_details definition

CREATE TABLE IF NOT EXISTS `user_job_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employmentType` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `employment_type` bigint(20) DEFAULT NULL,
  `source` bigint(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internship_outcome` bigint(20) DEFAULT NULL,
  `weekly_hours` bigint(20) DEFAULT NULL,
  `salary_change` bigint(20) DEFAULT NULL,
  `internal_placement` tinyint(1) DEFAULT NULL,
  `days_to_land` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `retention_tracking` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE126194CDDE85DFA` (`user_id`),
  KEY `fk_emp_typemaster_id` (`employment_type`),
  KEY `fk_source_typemaster_id` (`source`),
  KEY `fk_outcome_typemaster_id` (`internship_outcome`),
  KEY `fk_hours_typemaster_id` (`weekly_hours`),
  KEY `fk_salary_typemaster_id` (`salary_change`)
) ENGINE=InnoDB AUTO_INCREMENT=74216 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.type_master definition

CREATE TABLE IF NOT EXISTS `type_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_rules` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.company definition

CREATE TABLE IF NOT EXISTS `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_services_rep1` bigint(20) DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone_ISO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordinator_contact` bigint(20) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `contact_phone_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_master_company` tinyint(1) DEFAULT '1',
  `is_demo_company` tinyint(1) DEFAULT '0',
  `long_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `master_company_id` int(11) DEFAULT NULL,
  `portal_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefix` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `reseller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_rep1` bigint(20) DEFAULT NULL,
  `sales_rep1_percent` double DEFAULT NULL,
  `sales_rep2` bigint(20) DEFAULT NULL,
  `sales_rep2_percent` double DEFAULT NULL,
  `short_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ismigrated` tinyint(1) DEFAULT NULL,
  `is_billable` tinyint(1) DEFAULT '1',
  `migration_eligible` tinyint(1) DEFAULT '0',
  `migration_completion` tinyint(1) DEFAULT '0',
  `migration_date` datetime DEFAULT NULL,
  `password_policy` tinyint(1) DEFAULT '0',
  `is_masked` tinyint(1) DEFAULT '0',
  `outreach_attempt_id` bigint(20) NOT NULL DEFAULT '8',
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `sales_office_location_id` bigint(20) DEFAULT NULL,
  `external_auth` tinyint(1) DEFAULT NULL,
  `internal_insight_access` tinyint(1) DEFAULT '1',
  `sso_enabled` tinyint(1) DEFAULT '0',
  `sso_secondary_verification_enabled` tinyint(1) DEFAULT '0',
  `include_source` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hiring` tinyint(1) DEFAULT '0',
  `share_redeployment_pool` tinyint(1) DEFAULT '0',
  `share_job_feed` tinyint(1) DEFAULT '0',
  `mobile_authentication` tinyint(1) DEFAULT '0',
  `is_talent_directory_enabled` tinyint(1) DEFAULT '0',
  `active_company_billing` bigint(20) DEFAULT NULL,
  `new_column` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_self_registration_enabled` tinyint(1) DEFAULT '0',
  `insight_sso_override` tinyint(1) DEFAULT '0',
  `direct_package_registration` tinyint(1) DEFAULT '0',
  `enable_wlc_call_duration` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenant_unique_long_name` (`tenant_id`,`long_name`,`reference_tenant_id`),
  UNIQUE KEY `tenant_unique_prefix` (`tenant_id`,`prefix`,`reference_tenant_id`),
  KEY `FK_SLAES_REP1` (`sales_rep1`),
  KEY `FK_SLAES_REP2` (`sales_rep2`),
  KEY `FK_CS_REP1` (`client_services_rep1`),
  KEY `FK_COORD_CON` (`coordinator_contact`),
  KEY `com_master_idx` (`master_company_id`),
  KEY `COUNTRY_ID_FK` (`country_id`),
  KEY `STATE_ID_FK` (`state_id`),
  KEY `fk_company_outreach_attempt_id` (`outreach_attempt_id`),
  KEY `fk_sales_office_location` (`sales_office_location_id`),
  KEY `combined_company_tenant` (`tenant_id`,`id`),
  KEY `ix_company_last_updated` (`lastupdated`),
  KEY `comp_external_auth_idx` (`external_auth`),
  KEY `index_company_uuid` (`company_key`)
) ENGINE=InnoDB AUTO_INCREMENT=31241 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_job definition

CREATE TABLE IF NOT EXISTS `user_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `archived_date` datetime DEFAULT NULL,
  `is_archieved` tinyint(1) DEFAULT '0',
  `is_clicked` tinyint(1) DEFAULT '0',
  `is_saved` tinyint(1) DEFAULT '0',
  `job_match_type` int(1) DEFAULT NULL,
  `job_ref_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processed_on` datetime DEFAULT NULL,
  `rejection_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saved_date` datetime DEFAULT NULL,
  `sent_by` int(11) DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `show_job` tinyint(1) DEFAULT '1',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucpDetailsId` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `processed_by` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_job_progress_state` bigint(20) DEFAULT NULL,
  `note_updated_on` datetime DEFAULT NULL,
  `user_target_id` bigint(20) DEFAULT NULL,
  `possible_duplicate` tinyint(1) DEFAULT '0',
  `tc_user_job_assignment_id` int(20) DEFAULT NULL,
  `tc_is_deleted_job` tinyint(1) DEFAULT '0',
  `search_instance_id` bigint(20) DEFAULT NULL,
  `removed_by_user_id` bigint(20) DEFAULT NULL,
  `search_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canvassed` tinyint(1) DEFAULT '0',
  `job_origin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_term_opp_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF022D94919A7C167` (`user_job_progress_state`),
  KEY `FKF022D9495DCB2AD3` (`processed_by`),
  KEY `FKF022D949DDE85DFA` (`user_id`),
  KEY `FKF022D94967C5F47A` (`job_id`),
  KEY `sent_date_idx` (`sent_date`),
  KEY `user_target_indx` (`user_target_id`),
  KEY `FK_SEARCH_INSTANCE_ID` (`search_instance_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4246211 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_package definition

CREATE TABLE IF NOT EXISTS `user_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Auto increment value',
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'user Id refereneces to user table. There can be more than one entry for same user because one user can have more than one company package. And according to it, will have different billing date. ',
  `company_package_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `company_group_id` bigint(20) DEFAULT NULL,
  `company_list_id` bigint(20) DEFAULT NULL,
  `billing_date` date DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `company_invoice_id` bigint(20) DEFAULT NULL,
  `invoice_status` int(1) NOT NULL DEFAULT '0' COMMENT 'Invoice status will get change according to our actions. like 1. if we generate invoice then state will be "pending".\\n2.If invoice approved then its state is "Approved"\\n3.If invoice in sent to clients from pending invoice tab. then state will be "sentToClient"\\n4.If invoice is rejected or on hold then state will be "onHold"\\n',
  `rejection_reason` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'If invoice state is "onHold" then rejection reason filed will available.',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_reason` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment` tinyint(1) DEFAULT '0',
  `client_price` double(16,2) DEFAULT NULL,
  `duration` int(2) DEFAULT NULL,
  `modified_by` bigint(20) DEFAULT NULL,
  `phase` int(2) DEFAULT NULL,
  `approved_by` bigint(20) DEFAULT NULL,
  `rejected_by` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `revenue_schedule` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_invoice_id` bigint(20) DEFAULT NULL,
  `rollback_status` int(1) DEFAULT NULL,
  `previous_approved_invoice_id` bigint(20) DEFAULT NULL,
  `trigger_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_package_id` bigint(20) DEFAULT NULL,
  `requested_billing_date` datetime DEFAULT NULL,
  `tc_user_package_id` int(11) DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `billing_trigger_master_id` bigint(20) DEFAULT NULL,
  `change_reason_master_id` bigint(20) DEFAULT NULL,
  `user_package_billing_trigger_id` bigint(20) DEFAULT NULL,
  `billing_installment_timing_master_id` bigint(20) DEFAULT NULL,
  `days_from_initial_trigger` bigint(20) DEFAULT '0',
  `previous_user_package_id` bigint(20) DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `revision_number` bigint(20) DEFAULT NULL,
  `pricing_sheet_id` bigint(20) DEFAULT NULL,
  `pricing_trigger_installment_price` int(11) DEFAULT NULL,
  `adjustment_price` double(16,2) DEFAULT NULL,
  `user_coach_level_id` bigint(20) DEFAULT NULL,
  `company_contract_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36EEFG6B579C7F` (`user_id`),
  KEY `FK36EEFG6B579A4V` (`modified_by`),
  KEY `FK48EBCB6B579C7F` (`company_package_id`),
  KEY `FK48EBCB6B599C7F` (`company_id`),
  KEY `FK48EBCB6B549C7F` (`company_group_id`),
  KEY `FK48EBCB6B519C7F` (`company_list_id`),
  KEY `FK48EBCB6B519C7Z` (`company_invoice_id`),
  KEY `FK2AD4CBD271DCBEDF` (`approved_by`),
  KEY `FK2AD4CBD271ABCEDF` (`rejected_by`),
  KEY `FK2AD4CBD271PQRSDF` (`document_id`),
  KEY `fk_usrpck_cmpinv_prvinvid` (`previous_invoice_id`),
  KEY `fk_usrpck_cmpinv_prvappinvid` (`previous_approved_invoice_id`),
  KEY `tc_user_package_id_idx` (`tc_user_package_id`),
  KEY `FK_change_reason_master_id_upcrm` (`change_reason_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86961 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='We will set one cron job which will run daily. This cron job will calculate current month user which will be billable in that month.\nAnd this cron job will make entries in this table.\nFrom user_id we will get comapny and comapny package details.';


-- SL_UAT.company_billing definition

CREATE TABLE IF NOT EXISTS `company_billing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `billing_cc_email1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_cc_email2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_cc_email3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact_ext1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact_ext2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_contact_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_cutoff_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_payment_terms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_purchase_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_taxable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_trigger1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_trigger2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `mailing_address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_zip1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_zip2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_generation_by_type` int(1) DEFAULT NULL,
  `contracted_currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `invoice_headers` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_billing_rules_by_company` tinyint(1) DEFAULT '1',
  `is_masked` tinyint(1) DEFAULT '0',
  `other_to_bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_to_bill_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companyIDx` (`companyId`),
  KEY `compnya_idx` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=107216 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.company_package definition

CREATE TABLE IF NOT EXISTS `company_package` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_custom_eligibilty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `packageName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `resumeService` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_jobleads` tinyint(1) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `package_level_id` bigint(20) DEFAULT NULL,
  `product_level_id` bigint(20) DEFAULT NULL,
  `partner_service` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_calls` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twoweek_survey` tinyint(1) DEFAULT '1',
  `first_survey` tinyint(1) DEFAULT '1',
  `final_survey` tinyint(1) DEFAULT '1',
  `resume_service_id` bigint(20) DEFAULT NULL,
  `is_migrated` tinyint(1) DEFAULT '0',
  `is_noneditable` tinyint(1) NOT NULL DEFAULT '0',
  `qb_packagename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_company_package_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `service_region_id` bigint(20) DEFAULT NULL,
  `clientele_country_id` bigint(20) DEFAULT NULL,
  `number_of_workshops` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `sku_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'OPEN',
  `is_multi_installment` tinyint(1) DEFAULT '0',
  `is_default` tinyint(1) DEFAULT '0',
  `billing_trigger_type_master_id` bigint(20) DEFAULT NULL,
  `max_group_call` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_pp_coaching_call` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_region_id` bigint(20) DEFAULT NULL,
  `product_level_display_master_id` bigint(20) DEFAULT NULL,
  `product_delivery_type_master_id` bigint(20) DEFAULT NULL,
  `self_scheduling` tinyint(1) DEFAULT '0',
  `allow_in_person_meeting` tinyint(1) DEFAULT '0',
  `pricing_sheet_id` bigint(20) DEFAULT NULL,
  `coach_level_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku_code` (`sku_code`),
  KEY `FK6D8A4A843FFA4C7A` (`company_id`),
  KEY `fk_rw_service_id` (`resume_service_id`),
  KEY `service_level_id_idx` (`product_level_id`),
  KEY `fk_cp_clientele_country_id` (`clientele_country_id`),
  KEY `combined_company_tenant` (`tenant_id`,`id`),
  KEY `combined_company_pkg_tenant` (`tenant_id`,`company_id`,`id`),
  KEY `fk_cp_service_region_id` (`service_region_id`),
  KEY `fk_billing_trigger_type_master_id` (`billing_trigger_type_master_id`),
  KEY `fk_delivery_region_id` (`delivery_region_id`),
  KEY `fk_product_level_display_master_id` (`product_level_display_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121593 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.package_level_master definition

CREATE TABLE IF NOT EXISTS  `package_level_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `package_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quickbooks_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `professional_level` bigint(20) DEFAULT NULL,
  `rw_professional_level` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.product_level_master definition

CREATE TABLE IF NOT EXISTS `product_level_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `level_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `profile_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_service_details definition

CREATE TABLE IF NOT EXISTS  `user_service_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `billing_code1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_code9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_date` date DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `cancel_primary_reason_id` bigint(20) DEFAULT NULL,
  `cancel_secondary_reason_id` bigint(20) DEFAULT NULL,
  `eligibility_date` date DEFAULT NULL,
  `eligibility_end_date` date DEFAULT NULL,
  `end_of_service_date` date DEFAULT NULL,
  `heard_about_other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heard_about_rs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hear_about_rs_master_id` bigint(20) DEFAULT NULL,
  `hold_date` datetime DEFAULT NULL,
  `hold_resume_date` datetime DEFAULT NULL,
  `is_attend_onsite` tinyint(1) DEFAULT NULL,
  `is_contactinfo_provided` tinyint(1) DEFAULT NULL,
  `is_demouser` tinyint(1) DEFAULT '0',
  `is_onhold` tinyint(1) DEFAULT '0',
  `is_never_onhold` tinyint(1) NOT NULL DEFAULT '0',
  `is_onhold_warn_sent` tinyint(1) NOT NULL DEFAULT '0',
  `is_tc_notified` tinyint(1) NOT NULL DEFAULT '0',
  `is_receive_jobleads` tinyint(1) DEFAULT NULL,
  `is_surveyparticipate` tinyint(1) DEFAULT NULL,
  `notification_date` date DEFAULT NULL,
  `outreach_date` date DEFAULT NULL,
  `outreach_queue` tinyint(1) DEFAULT '0',
  `registration_date` datetime DEFAULT NULL,
  `resume_assignment_flag` tinyint(1) DEFAULT '1',
  `resume_date` datetime DEFAULT NULL,
  `resumewriter_assignDate` datetime DEFAULT NULL,
  `separation_date` date DEFAULT NULL,
  `suspend_date` datetime DEFAULT NULL,
  `suspend_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discounted_days` int(11) DEFAULT '0',
  `days_to_land` int(11) DEFAULT NULL,
  `time_last_job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `clientservice_id` bigint(20) DEFAULT NULL,
  `jobconcierge_id` bigint(20) DEFAULT NULL,
  `previous_resumewriter_id` bigint(20) DEFAULT NULL,
  `resumewriter_id` bigint(20) DEFAULT NULL,
  `resumewriter_assignedBy` bigint(20) DEFAULT NULL,
  `transitionspecialist_id` bigint(20) DEFAULT NULL,
  `ts_coordinator_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `ts_call_schedule_date` datetime DEFAULT NULL,
  `is_suspended` tinyint(1) DEFAULT '0',
  `call_schedule_flag` tinyint(1) DEFAULT '1',
  `eligible_for_processing` tinyint(1) DEFAULT '1',
  `relationship_manager_id` bigint(20) DEFAULT NULL,
  `end_of_service_date_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outreach_date_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eligibility_end_date_ref` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing date reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tips_email` tinyint(1) DEFAULT NULL,
  `webinar_email` tinyint(1) DEFAULT NULL,
  `tc_assignment_date` datetime DEFAULT NULL,
  `virtual_last_login` datetime DEFAULT NULL,
  `final_resume_upload_date` datetime DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `survey_reminder_1` tinyint(1) DEFAULT NULL,
  `survey_reminder_2` tinyint(1) DEFAULT NULL,
  `survey_reminder_3` tinyint(1) DEFAULT NULL,
  `handpicked_job_status_master_id` bigint(20) DEFAULT NULL,
  `is_brightfit_access` tinyint(1) NOT NULL DEFAULT '0',
  `has_multiple_programs` tinyint(1) DEFAULT '0',
  `is_legacy_rdp` tinyint(1) DEFAULT NULL,
  `date_of_indication` datetime DEFAULT NULL,
  `additional_coaching` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_IDX` (`user_id`),
  KEY `FK9DBE2644C340BB9F` (`transitionspecialist_id`),
  KEY `FK9DBE2644D289C14F` (`resumewriter_assignedBy`),
  KEY `FK9DBE2644DDE85DFA` (`user_id`),
  KEY `FK9DBE264444EA617D` (`previous_resumewriter_id`),
  KEY `FK9DBE26443F0F4A35` (`ts_coordinator_id`),
  KEY `FK9DBE26447250654F` (`jobconcierge_id`),
  KEY `FK9DBE264422841EC5` (`resumewriter_id`),
  KEY `FK9DBE2644277894DB` (`clientservice_id`),
  KEY `FK_RELATIONSHIP_MANAGER_USER` (`relationship_manager_id`),
  KEY `FK_primary_cancel_reason` (`cancel_primary_reason_id`),
  KEY `FK_second_cancel_reason` (`cancel_secondary_reason_id`),
  KEY `Active_IDX` (`user_id`,`activeflag`),
  KEY `registered_IDX` (`user_id`,`registration_date`),
  KEY `is_demouser_idx` (`is_demouser`),
  KEY `combined_user_tenant_user_id_ts_coord` (`tenant_id`,`user_id`,`ts_coordinator_id`),
  KEY `fk_hearaboutrs_usd` (`hear_about_rs_master_id`),
  KEY `FK_handpicked_job_status_master_id_hpjsmi` (`handpicked_job_status_master_id`),
  KEY `usd_ts_call_schedule_date_idx` (`ts_call_schedule_date`),
  KEY `usd_call_schedule_flag_idx` (`call_schedule_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=98242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.resume_service_master definition

CREATE TABLE IF NOT EXISTS  `resume_service_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `serviceName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_role_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_id` int(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_resume_service_master_feature` (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.torch_user definition

CREATE TABLE IF NOT EXISTS  `torch_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_password` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenant_id` bigint(11) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170506 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_concierge_process_summary definition

CREATE TABLE IF NOT EXISTS `user_concierge_process_summary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `assignment_date` datetime DEFAULT NULL,
  `first_mail_sent` datetime DEFAULT NULL,
  `jcr_id` bigint(20) DEFAULT NULL,
  `jcr_qa_id` bigint(20) DEFAULT NULL,
  `JCR_assign_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_sent` int(11) DEFAULT NULL,
  `last_job_sent` datetime DEFAULT NULL,
  `is_temporary_assignment` tinyint(1) NOT NULL DEFAULT '0',
  `next_assignment_date` datetime DEFAULT NULL,
  `old_jcr_id` bigint(20) DEFAULT NULL,
  `old_qa_id` bigint(20) DEFAULT NULL,
  `process_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QA_assign_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucp_details_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `level` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_to_user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subsequent_zero_job_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK9FC64DD6DDE85DFA` (`user_id`),
  KEY `ucps_jcr_id_idx` (`jcr_id`),
  KEY `ucps_job_sent_idx` (`job_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=50777 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_interim_access definition

CREATE TABLE IF NOT EXISTS `user_interim_access` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `client_id` bigint(20) NOT NULL,
  `system_user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `access_expiry_date` date NOT NULL,
  `access_removed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_uta_client_id` (`client_id`),
  KEY `fk_uta_system_user_id` (`system_user_id`),
  KEY `fk_uta_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_coach_meeting definition

CREATE TABLE IF NOT EXISTS `user_coach_meeting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `schedule_date` datetime DEFAULT NULL,
  `transition_coach_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `scheduled_duration` bigint(20) DEFAULT NULL,
  `actual_duration` bigint(20) DEFAULT NULL,
  `call_location` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cronofy_meeting_id` bigint(20) DEFAULT NULL,
  `event_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_note_id` bigint(20) DEFAULT NULL,
  `previous_meeting_id` bigint(20) DEFAULT NULL,
  `smart_invite_coach_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smart_invite_participant_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_preference` tinyint(1) DEFAULT '0',
  `participant_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coach_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scheduling_type` varchar(15) COLLATE utf8_unicode_ci DEFAULT 'SELF',
  `call_initiated_count` int(3) DEFAULT '0',
  `migrated_meeting` tinyint(1) DEFAULT '0',
  `video_platform_master_id` bigint(20) DEFAULT NULL,
  `reference_id` bigint(20) DEFAULT NULL,
  `reference_tenant_master_id` bigint(20) DEFAULT NULL,
  `rescheduled_date` datetime DEFAULT NULL,
  `company_contract_id` bigint(20) DEFAULT NULL,
  `reference_company_contract_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA08DC1C1DDE85DFA5` (`user_id`),
  KEY `FKA07DC1C1259F08B85` (`created_by`),
  KEY `FKA07DC1C1259F08B95` (`transition_coach_id`),
  KEY `FKA037DC1C1259F08B5` (`cronofy_meeting_id`),
  KEY `FKA07DC1C1259F08B25` (`user_note_id`),
  KEY `FKA08DC1C1259F00B25` (`previous_meeting_id`),
  KEY `ucm_schedule_date_idx` (`schedule_date`),
  KEY `fk_video_platform_master_ucm` (`video_platform_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9394 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.coach_group_messaging definition

CREATE TABLE IF NOT EXISTS  `coach_group_messaging` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `assigned_coach_id` bigint(20) DEFAULT NULL,
  `coach_group_id` bigint(20) DEFAULT NULL,
  `user_message_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cgm_assigned_coach_id` (`assigned_coach_id`),
  KEY `fk_cgm_coach_group_id` (`coach_group_id`),
  KEY `fk_cgm_user_message_id` (`user_message_id`),
  KEY `fk_cgm_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7625 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.tenant_entity_custom_attribute definition

CREATE TABLE IF NOT EXISTS `tenant_entity_custom_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `attribute_master_id` bigint(20) NOT NULL,
  `entity_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_column_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` tinyint(1) DEFAULT '0',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_order` int(11) DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teca_attribute_master_id` (`attribute_master_id`),
  KEY `fk_teca_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_resume_project definition

CREATE TABLE IF NOT EXISTS `user_resume_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `project_complete_date` datetime DEFAULT NULL,
  `project_due_date` datetime DEFAULT NULL,
  `project_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resume_writer_assign_date` datetime DEFAULT NULL,
  `rw_user_role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `assigned_by_id` bigint(20) DEFAULT NULL,
  `old_user_resume_portfolio_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `communication_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_draft_sent_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK16FA4FFBDDE85DFA` (`user_id`),
  KEY `FK16FA4FFB65BCA5F1` (`rw_user_role_id`),
  KEY `FK_ASSIGNED_BY_ID` (`assigned_by_id`),
  KEY `project_complete_date_idx` (`project_complete_date`)
) ENGINE=InnoDB AUTO_INCREMENT=38436 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_resume_milestone definition

CREATE TABLE IF NOT EXISTS `user_resume_milestone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `completed_flag` tinyint(1) DEFAULT '0',
  `milestone_complete_date` datetime DEFAULT NULL,
  `milestone_due_date` datetime DEFAULT NULL,
  `milestone_id` bigint(20) DEFAULT NULL,
  `milestone_start_date` datetime DEFAULT NULL,
  `minutes_spent` int(11) DEFAULT NULL,
  `resumewriter_id` bigint(20) DEFAULT NULL,
  `resumewriter_rate` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_servicedetails_id` bigint(20) DEFAULT NULL,
  `resume_project_id` bigint(20) DEFAULT NULL,
  `old_user_resume_milestones_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) NOT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK37806DD23278C3D1` (`user_servicedetails_id`),
  KEY `FK_RP_ID` (`resume_project_id`),
  KEY `milestone_complete_date_idx` (`milestone_complete_date`),
  KEY `completed_flag_idx` (`completed_flag`),
  KEY `activeflag_idx` (`activeflag`),
  KEY `FK_milestone_due_date` (`milestone_due_date`),
  KEY `FK_milestone_id` (`milestone_id`),
  KEY `FK_resumewriter_id` (`resumewriter_id`),
  KEY `FK_minutes_spent` (`minutes_spent`),
  KEY `fk_urm_tenant_id` (`tenant_id`),
  KEY `user_resume_milestone_idx1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78513 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.resume_milestone_master definition

CREATE TABLE IF NOT EXISTS  `resume_milestone_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `has_document` tinyint(1) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_type_id` bigint(20) DEFAULT NULL,
  `document_version_id` bigint(20) DEFAULT NULL,
  `old_resumewriter_milestones_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Doc_Type_Id` (`document_type_id`),
  KEY `FK_Doc_Version_Id` (`document_version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.user_coach_details definition

CREATE TABLE IF NOT EXISTS `user_coach_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `coaching_level` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_participant_user_id` (`user_id`),
  KEY `fk_coaching_level_key` (`coaching_level`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.billing_trigger_type_master definition

CREATE TABLE IF NOT EXISTS  `billing_trigger_type_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `trigger_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.billing_trigger_master definition

CREATE TABLE IF NOT EXISTS `billing_trigger_master` (
  `id` bigint(20) NOT NULL,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `unique_trigger_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trigger_type_id` bigint(10) DEFAULT NULL,
  `trigger_frequency` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'One Time',
  PRIMARY KEY (`id`),
  KEY `trigger_type_id` (`trigger_type_id`),
  CONSTRAINT `billing_trigger_master_ibfk_1` FOREIGN KEY (`trigger_type_id`) REFERENCES `billing_trigger_type_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.pricing_sheet_revision definition

CREATE TABLE IF NOT EXISTS  `pricing_sheet_revision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `pricing_sheet_id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pricingsheet_key` (`pricing_sheet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.pricing_sheet_coaching_lvl definition

CREATE TABLE IF NOT EXISTS `pricing_sheet_coaching_lvl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `pricing_sheet_coaching_lvl` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- SL_UAT.pricing_sheet_trigger_prices definition

CREATE TABLE IF NOT EXISTS  `pricing_sheet_trigger_prices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `billing_trigger_id` bigint(20) NOT NULL,
  `pricing_sheet_lvl` bigint(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT '0',
  `pricing_sheet_revision_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pricingsheet_lvl_key` (`pricing_sheet_lvl`),
  KEY `fk_pricingsheet_trigger_key` (`billing_trigger_id`),
  KEY `fk_pricingsheet_revision_key` (`pricing_sheet_revision_id`),
  CONSTRAINT `fk_pricingsheet_lvl_key` FOREIGN KEY (`pricing_sheet_lvl`) REFERENCES `pricing_sheet_coaching_lvl` (`id`),
  CONSTRAINT `fk_pricingsheet_revision_key` FOREIGN KEY (`pricing_sheet_revision_id`) REFERENCES `pricing_sheet_revision` (`id`),
  CONSTRAINT `fk_pricingsheet_trigger_key` FOREIGN KEY (`billing_trigger_id`) REFERENCES `billing_trigger_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.user_package_billing_trigger definition

CREATE TABLE IF NOT EXISTS `user_package_billing_trigger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `company_package_billing_trigger_setup_id` bigint(20) DEFAULT NULL,
  `billing_trigger_type_master_id` bigint(20) DEFAULT NULL,
  `billing_trigger_master_id` bigint(20) DEFAULT NULL,
  `trigger_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_price` double(16,2) DEFAULT NULL,
  `billing_installment_timing_master_id` bigint(20) DEFAULT NULL,
  `days_from_initial_trigger` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `company_package_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_processed` tinyint(1) DEFAULT '0',
  `is_migrated_record` tinyint(1) DEFAULT '0',
  `adjustment_price` double(16,2) DEFAULT NULL,
  `phase` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_package_billing_trigger_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215797 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.pricing_sheet definition

CREATE TABLE IF NOT EXISTS `pricing_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pricing_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `latest_revision_id` bigint(20) DEFAULT NULL,
  `reference_tenant_id` bigint(20) DEFAULT NULL,
  `reference_entity_id` bigint(20) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  `record_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PRIMARY',
  PRIMARY KEY (`id`),
  KEY `fk_pricingsheet_companykey` (`company_id`),
  CONSTRAINT `fk_pricingsheet_companykey` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.total_client_price_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `total_client_price_view` AS
select
    `u`.`id` AS `user_id`,
    (case
        when (isnull(`cp`.`pricing_sheet_id`)
        and ((
        select
            count(0)
        from
            `user_package` `upkg`
        where
            ((`upkg`.`user_id` = `u`.`id`)
                and (`upkg`.`activeflag` = 1))) <> 0)) then (
        select
            (ifnull((select sum(`upbt`.`adjustment_price`) from `user_package_billing_trigger` `upbt` where ((`upbt`.`user_id` = `u`.`id`) and (`upbt`.`activeflag` = 1) and (not(`upbt`.`billing_trigger_master_id` in (select `upkg`.`billing_trigger_master_id` from `user_package` `upkg` where ((`upkg`.`user_id` = `u`.`id`) and (`upkg`.`activeflag` = 1)) group by `upkg`.`billing_trigger_master_id`))))), 0) + (
            select
                sum(`upkg`.`client_price`)
            from
                `user_package` `upkg`
            where
                ((`upkg`.`user_id` = `u`.`id`)
                    and (`upkg`.`activeflag` = 1)
                        and (`upkg`.`invoice_status` in (NULL,
                        0,
                        1,
                        2,
                        3,
                        5))))))
        when isnull(`cp`.`pricing_sheet_id`) then (
        select
            sum(`upbt`.`adjustment_price`)
        from
            `user_package_billing_trigger` `upbt`
        where
            ((`upbt`.`user_id` = `u`.`id`)
                and (`upbt`.`activeflag` = 1)))
        when ((`cp`.`pricing_sheet_id` is not null)
            and ((
            select
                `ps`.`pricing_type`
            from
                `pricing_sheet` `ps`
            where
                (`ps`.`id` = `cp`.`pricing_sheet_id`)) = 'TIERED')) then (
        select
            (ifnull((select sum(`upkg`.`client_price`) from `user_package` `upkg` where ((`upkg`.`user_id` = `u`.`id`) and (`upkg`.`activeflag` = 1) and (`upkg`.`invoice_status` in (NULL, 0, 1, 2, 3, 5)))), 0) + ifnull((select sum(`pstp`.`price`) from ((((`user` `ups` join `company_package` `cp` on(((`cp`.`id` = `ups`.`company_package_id`) and (`cp`.`pricing_sheet_id` is not null)))) join `pricing_sheet` `ps` on((`ps`.`id` = `cp`.`pricing_sheet_id`))) join `pricing_sheet_trigger_prices` `pstp` on((`pstp`.`pricing_sheet_revision_id` = `ps`.`latest_revision_id`))) join `user_coach_details` `ucd` on((`ucd`.`user_id` = `ups`.`id`))) where ((`ups`.`id` = `u`.`id`) and (`ucd`.`coaching_level` = `pstp`.`pricing_sheet_lvl`) and (not(`pstp`.`billing_trigger_id` in (select `upkg`.`billing_trigger_master_id` from `user_package` `upkg` where ((`upkg`.`user_id` = `u`.`id`) and (`upkg`.`activeflag` = 1) and (`upkg`.`invoice_status` in (NULL, 0, 1, 2, 3, 5)))))))), 0)))
        when ((`cp`.`pricing_sheet_id` is not null)
            and ((
            select
                `ps`.`pricing_type`
            from
                `pricing_sheet` `ps`
            where
                (`ps`.`id` = `cp`.`pricing_sheet_id`)) = 'SINGLE')) then (
        select
            (ifnull((select sum(`upkg`.`client_price`) from `user_package` `upkg` where ((`upkg`.`user_id` = `u`.`id`) and (`upkg`.`activeflag` = 1) and (`upkg`.`invoice_status` in (NULL, 0, 1, 2, 3, 5)))), 0) + ifnull((select sum(`pstp`.`price`) from (((`user` `ups` join `company_package` `cps` on(((`cps`.`id` = `ups`.`company_package_id`) and (`cps`.`pricing_sheet_id` is not null)))) join `pricing_sheet` `ps` on((`ps`.`id` = `cps`.`pricing_sheet_id`))) join `pricing_sheet_trigger_prices` `pstp` on((`pstp`.`pricing_sheet_revision_id` = `ps`.`latest_revision_id`))) where ((`ups`.`id` = `u`.`id`) and (not(`pstp`.`billing_trigger_id` in (select `upkg`.`billing_trigger_master_id` from `user_package` `upkg` where ((`upkg`.`user_id` = `u`.`id`) and (`upkg`.`activeflag` = 1) and (`upkg`.`invoice_status` in (NULL, 0, 1, 2, 3, 5)))))))), 0)))
        else NULL
    end) AS `total_client_price`
from
    (`user` `u`
join `company_package` `cp` on
    ((`cp`.`id` = `u`.`company_package_id`)));
    
    
-- SL_UAT.user_active_package_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_active_package_data_view` AS
select
    ifnull(`up`.`duration`, `cp`.`duration`) AS `package_duration`,
    `up`.`booking_date` AS `booking_date`,
    `up`.`billing_date` AS `billing_date`,
    `cp`.`packageName` AS `package_name`,
    `plm`.`id` AS `package_level_id`,
    `cp`.`id` AS `company_package_id`,
    `cp`.`duration` AS `duration`,
    `cp`.`service_region_id` AS `service_region_id`,
    `plm`.`package_level` AS `package_level`,
    `sl`.`level_name` AS `service_level`,
    `sl`.`id` AS `product_level_id`,
    `cp`.`price` AS `active_package_price`,
    `cp`.`number_of_calls` AS `active_package_number_of_calls`,
    `cp`.`number_of_workshops` AS `active_package_number_of_workshops`,
    ifnull(`tcpv`.`total_client_price`, sum(`up`.`client_price`)) AS `total_client_price`,
    `u`.`id` AS `user_id`,
    `rsm`.`serviceName` AS `service_name`,
    `rsm`.`id` AS `resume_service_master_id`,
    `rsm`.`service_role_code` AS `service_role_code`,
    `plm`.`quickbooks_code` AS `quickbooks_code`,
    ifnull(`cb`.`billing_code1`, '') AS `billing_code1`,
    ifnull(`cb`.`billing_code2`, '') AS `billing_code2`,
    ifnull(`cb`.`billing_code3`, '') AS `billing_code3`,
    ifnull(`cb`.`billing_code4`, '') AS `billing_code4`,
    ifnull(`cb`.`billing_code5`, '') AS `billing_code5`,
    ifnull(`cb`.`billing_code6`, '') AS `billing_code6`,
    ifnull(`cb`.`billing_code7`, '') AS `billing_code7`,
    ifnull(`cb`.`billing_code8`, '') AS `billing_code8`,
    ifnull(`cb`.`billing_code9`, '') AS `billing_code9`,
    ifnull(`cb`.`billing_code10`, '') AS `billing_code10`,
    ifnull(`cb`.`contracted_currency`, '') AS `contracted_currency`,
    `cp`.`delivery_region_id` AS `delivery_region_id`
from
    ((((((((`user` `u`
left join `user_package` `up` on
    ((`u`.`id` = `up`.`user_id`)))
join `company_billing` `cb` on
    ((`cb`.`companyId` = `u`.`company_id`)))
join `company_package` `cp` on
    ((`cp`.`id` = `u`.`company_package_id`)))
join `package_level_master` `plm` on
    ((`plm`.`id` = `cp`.`package_level_id`)))
join `product_level_master` `sl` on
    ((`sl`.`id` = `cp`.`product_level_id`)))
join `user_service_details` `usd` on
    ((`usd`.`user_id` = `u`.`id`)))
join `resume_service_master` `rsm` on
    ((`rsm`.`id` = `cp`.`resume_service_id`)))
join `total_client_price_view` `tcpv` on
    ((`tcpv`.`user_id` = `u`.`id`)))
where
    ((`up`.`activeflag` = 1)
        or isnull(`up`.`activeflag`))
group by
    `user_id`;
    
    
-- SL_UAT.hear_about_rs_master definition

CREATE TABLE IF NOT EXISTS  `hear_about_rs_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `version` double DEFAULT NULL,
  `hear_about_rs` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- SL_UAT.tenant_accounting_preference definition

CREATE TABLE IF NOT EXISTS  `tenant_accounting_preference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `cut_off_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_email` tinyint(1) DEFAULT '0',
  `tenant_id` bigint(20) NOT NULL,
  `invoice_starting_number` bigint(20) DEFAULT NULL,
  `invoice_counter` bigint(20) DEFAULT NULL,
  `allow_multiinstallment_billing` tinyint(1) DEFAULT '0',
  `default_payment_terms` bigint(20) DEFAULT '10',
  `default_billing_trigger` bigint(20) DEFAULT '1',
  `invoice_creation` tinyint(1) DEFAULT '1',
  `enable_activity_billing` tinyint(1) DEFAULT '0',
  `default_cut_off_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Month End',
  `enable_single_tenant_delivery` tinyint(1) DEFAULT '0',
  `enable_pricing_sheets` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tse_tenant_id` (`tenant_id`),
  CONSTRAINT `tap_tenant_id` FOREIGN KEY (`tenant_id`) REFERENCES `tenant_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.user_email definition

CREATE TABLE if not exists `user_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeflag` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `delivery_status` tinyint(1) DEFAULT NULL,
  `SentOn` datetime DEFAULT NULL,
  `subject` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_status` tinyint(1) DEFAULT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK728A562858DF8C81` (`email_content_id`),
  KEY `FK728A5628DDE85DFA` (`user_id`),
  KEY `module_email_user_idx` (`module`,`email_type`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263651 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- SL_UAT.coach_pool_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `coach_pool_data_view` AS
select
    `ucm`.`user_id` AS `client_id`,
    substring_index(group_concat(`ucm`.`transition_coach_id` order by `ucm`.`created` DESC separator ','), ',', 1) AS `ts_id`
from
    `user_coach_meeting` `ucm`
where
    (`ucm`.`event_status` in (1, 3))
group by
    `ucm`.`user_id`
union all
select
    `cgm`.`user_id` AS `user_id`,
    substring_index(group_concat(`cgm`.`assigned_coach_id` order by `cgm`.`created` DESC separator ','), ',', 1) AS `Name_exp_4`
from
    `coach_group_messaging` `cgm`
group by
    `cgm`.`user_id`;
    
    
-- SL_UAT.tenant_entity_attribute_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `tenant_entity_attribute_view` AS
select
    `teca`.`tenant_id` AS `tenant_id`,
    (max(if((`teca`.`entity_column_name` = 'company_column_1'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_1_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_2'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_2_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_3'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_3_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_4'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_4_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_5'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_5_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_6'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_6_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_7'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_7_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_8'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_8_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_9'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_9_label`,
    (max(if((`teca`.`entity_column_name` = 'company_column_10'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_code_10_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_1'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_1_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_2'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_2_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_3'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_3_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_4'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_4_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_5'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_5_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_6'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_6_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_7'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_7_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_8'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_8_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_9'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_9_label`,
    (max(if((`teca`.`entity_column_name` = 'company_package_column_10'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `company_package_code_10_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_1'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_1_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_2'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_2_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_3'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_3_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_4'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_4_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_5'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_5_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_6'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_6_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_7'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_7_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_8'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_8_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_9'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_9_label`,
    (max(if((`teca`.`entity_column_name` = 'participant_column_10'), `teca`.`field_name`, NULL)) collate utf8_unicode_ci) AS `participant_code_10_label`
from
    `tenant_entity_custom_attribute` `teca`
group by
    `teca`.`tenant_id`;
    
    
-- SL_UAT.total_jobs_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `total_jobs_view` AS
select
    `ucps`.`last_job_sent` AS `last_job_sent`,
    `ucps`.`job_sent` AS `total_sent_jobs`,
    `ucps`.`user_id` AS `user_id`
from
    `user_concierge_process_summary` `ucps`;
    
    
-- SL_UAT.rb_coach_pool_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `rb_coach_pool_data_view` AS
select
    `coach_pool_data`.`client_id` AS `client_id`,
    group_concat(`u`.`id` separator ',') AS `coach_id`,
    group_concat(distinct `u`.`first_name`, ' ', `u`.`last_name` separator ',') AS `system_user_name`
from
    (`coach_pool_data_view` `coach_pool_data`
join `user` `u` on
    ((`u`.`id` = `coach_pool_data`.`ts_id`)))
group by
    `coach_pool_data`.`client_id`;
    
    
-- SL_UAT.rb_user_interim_access_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `rb_user_interim_access_view` AS
select
    `uia`.`client_id` AS `client_id`,
    group_concat(distinct concat(`u`.`first_name`, ' ', `u`.`last_name`) separator ',') AS `system_user_name`
from
    (`user_interim_access` `uia`
join `user` `u` on
    ((`u`.`id` = `uia`.`system_user_id`)))
where
    (`uia`.`access_expiry_date` >= cast(now() as date))
group by
    `uia`.`client_id`;
    
    
-- SL_UAT.user_latest_job_details source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_latest_job_details` AS
select
    min(`uja`.`id`) AS `latest_job_id`,
    `uja`.`user_id` AS `user_id`
from
    `user_job_details` `uja`
where
    ((`uja`.`employment_type` <> 4)
        or isnull(`uja`.`employment_type`))
group by
    `uja`.`user_id`;
    
    
-- SL_UAT.user_latest_job_details_by_id source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_latest_job_details_by_id` AS
select
    `ujd`.`company` AS `company`,
    `ujd`.`title` AS `title`,
    `ujd`.`joining_date` AS `joining_date`,
    `ujd`.`user_id` AS `user_id`,
    `sou`.`type` AS `source`,
    `sal`.`type` AS `salary`,
    `ujd`.`start_date` AS `start_date`,
    (if((isnull(`ujd`.`internal_placement`)
    or (`ujd`.`internal_placement` = '0')),
    'No',
    'Yes')) AS `internal_placement`,
    `emp_type`.`type` AS `employment_type`
from
    ((((`user_job_details` `ujd`
join `user_latest_job_details` `d` on
    ((`d`.`latest_job_id` = `ujd`.`id`)))
join `type_master` `sou` on
    ((`sou`.`id` = `ujd`.`source`)))
left join `type_master` `sal` on
    ((`sal`.`id` = `ujd`.`salary_change`)))
left join `type_master` `emp_type` on
    ((`emp_type`.`id` = `ujd`.`employment_type`)));
    
    
-- SL_UAT.user_personal_info_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_personal_info_data_view` AS
select
    `u`.`id` AS `user_id`,
    `u`.`first_name` AS `first_name`,
    `u`.`last_name` AS `last_name`,
    ifnull(`u`.`goes_by`, '') AS `goes_by`,
    `u`.`email` AS `primary_email`,
    `dsm`.`id` AS `document_status_id`,
    `hjsm`.`id` AS `handpicked_job_status_master_id`,
    ifnull(`u`.`secondary_email`, '') AS `secondary_email`,
    ifnull(`u`.`title`, '') AS `title`,
    ifnull(`u`.`department`, '') AS `department`,
    ifnull(`u`.`business_unit`, '') AS `business_unit`,
    ifnull(`u`.`user_status`, '') AS `user_status`,
    ifnull(`dsm`.`document_status`, '') AS `document_status`,
    ifnull(`u`.`cell_phone`, '') AS `cell_phone`,
    ifnull(`u`.`home_phone`, '') AS `home_phone`,
    ifnull(`u`.`work_phone`, '') AS `work_phone`,
    ifnull(`u`.`address1`, '') AS `address1`,
    ifnull(`u`.`address2`, '') AS `address2`,
    ifnull(`u`.`city`, '') AS `city`,
    ifnull(`u`.`province`, '') AS `state`,
    ifnull(`u`.`postal_code`, '') AS `zip_code`,
    ifnull(`u`.`country`, '') AS `country`,
    ifnull(`tm`.`timezone`, '') AS `timezone`,
    ifnull(`u`.`language`, '') AS `language`,
    ifnull(`hjsm`.`handpicked_job_status`, '') AS `handpicked_job_status`,
    (if((isnull(`usd`.`tips_email`)
    or (`usd`.`tips_email` = '1')),
    'Yes',
    'No')  ) AS `tips_email`,
    (if((isnull(`usd`.`webinar_email`)
    or (`usd`.`webinar_email` = '1')),
    'Yes',
    'No')  ) AS `webinar_email`,
    (ifnull(if((`u`.`is_pilot` = 1), 'Yes', 'No'), 'No')  ) AS `pilot`,
    (ifnull(if((`u`.`is_vip` = 1), 'Yes', 'No'), 'No')  ) AS `vip`,
    cast(`u`.`created` as date) AS `upload_date`,
    cast(`usd`.`eligibility_date` as date) AS `eligibility_date`,
    cast(`usd`.`outreach_date` as date) AS `outreach_date`,
    cast(`usd`.`eligibility_end_date` as date) AS `eligibility_end_date`,
    cast(`usd`.`notification_date` as date) AS `notification_date`,
    cast(`usd`.`separation_date` as date) AS `separation_date`,
    cast(`usd`.`registration_date` as date) AS `registration_date`,
    cast(`usd`.`end_of_service_date` as date) AS `end_of_service_date`,
    (case
        when ((`us`.`first_call_complete_date` is not null)
        or (`us`.`first_login` is not null)) then if(((`usd`.`activeflag` = 0)
        and (`usd`.`cancel_date` is not null)),
        ((to_days(cast(`usd`.`cancel_date` as date)) - to_days(least(coalesce(`us`.`first_call_complete_date`, '9999-12-31'), coalesce(`us`.`first_login`, '9999-12-31')))) - `usd`.`discounted_days`),
        if((`usd`.`is_suspended` = 1),
        (((to_days(cast(now() as date)) - to_days(least(coalesce(`us`.`first_call_complete_date`, '9999-12-31'), coalesce(`us`.`first_login`, '9999-12-31')))) - `usd`.`discounted_days`) + (to_days(`usd`.`resume_date`) - to_days(cast(now() as date)))),
        ((to_days(cast(now() as date)) - to_days(least(coalesce(`us`.`first_call_complete_date`, '9999-12-31'), coalesce(`us`.`first_login`, '9999-12-31')))) - `usd`.`discounted_days`)))
        else 0
    end) AS `total_time_passed_days`,
    cast(`usd`.`cancel_date` as date) AS `cancel_date`,
    cast(`usd`.`hold_date` as date) AS `hold_date`,
    cast(`usd`.`hold_resume_date` as date) AS `hold_resume_date`,
    cast(`usd`.`suspend_date` as date) AS `suspend_date`,
    cast(`usd`.`resume_date` as date) AS `resume_date`,
    cast(`us`.`first_login` as date) AS `first_login`,
    cast(`us`.`last_login` as date) AS `recent_login`,
    cast(`us`.`first_job_sent_date` as date) AS `first_job_sent_date`,
    (
    select
        cast(min(`user_email`.`SentOn`) as date)
    from
        `user_email`
    where
        ((`user_email`.`delivery_status` = 1)
            and (`user_email`.`email_type` <> 'CLIENT')
                and (`user_email`.`user_id` = `u`.`id`))) AS `first_mail_sent_date`,
    cast(`us`.`first_call_complete_date` as date) AS `first_call_complete_date`,
    cast(`us`.`job_profile_completion_date` as date) AS `job_profile_completion_date`,
    cast(`us`.`resume_profile_completion_date` as date) AS `resume_profile_completion_date`,
    cast(`usd`.`tc_assignment_date` as date) AS `tc_assignment_date`,
    (if(isnull(`us`.`resume_profile_completion_date`),
    'No',
    'Yes')  ) AS `resume_profile`,
    ifnull(`cg`.`id`, '') AS `group_id`,
    ifnull(`cg`.`group_name`, '') AS `group_name`,
    ifnull(`cl`.`id`, '') AS `list_id`,
    ifnull(`cl`.`list_name`, '') AS `list_name`,
    ((case
        `us`.`phasetwo_optin_value` when 0 then 'Yes'
        when 1 then 'No'
        when 2 then 'Maybe'
        else ''
    end)  ) AS `phasetwo_optin_value`,
    cast(`us`.`phasetwo_optin_date` as date) AS `phasetwo_optin_date`,
    `usd`.`days_to_land` AS `days_to_land`,
    cast(now() as date) AS `report_date`,
    `u`.`tenant_id` AS `tenant_id`,
    `u`.`status_master_id` AS `status_master_id`,
    `u`.`country_id` AS `country_master_id`,
    `u`.`state_id` AS `state_master_id`,
    `u`.`user_language_id` AS `language_master_id`,
    `u`.`timezone_master_id` AS `timezone_master_id`,
    `cflr`.`cancel_first_level_reason` AS `cancel_first_level_reason`,
    `cflr`.`id` AS `cancel_first_master_id`,
    `cslr`.`cancel_second_level_reason` AS `cancel_second_level_reason`,
    `cslr`.`id` AS `cancel_second_master_id`,
    `ujd`.`company` AS `company`,
    `ujd`.`title` AS `latest_job_title`,
    `ujd`.`joining_date` AS `joining_date`,
    `rbtml`.`locale` AS `locale`,
    `u`.`reference_tenant_id` AS `reference_tenant_id`,
    `u`.`record_type` AS `record_type`,
    `ujd`.`start_date` AS `start_date`,
    `ujd`.`source` AS `source`,
    `ujd`.`salary` AS `salary`,
    `ujd`.`internal_placement` AS `internal_placement`,
    `u`.`reference_entity_id` AS `reference_entity_id`,
    `ujd`.`employment_type` AS `employment_type`
from
    (((((((((((`user` `u`
join `user_service_details` `usd` on
    ((`usd`.`user_id` = `u`.`id`)))
join `rb_tenant_master_locale` `rbtml` on
    ((`rbtml`.`tenant_master_id` = `u`.`tenant_id`)))
left join `user_statistic` `us` on
    ((`us`.`user_id` = `u`.`id`)))
left join `company_group` `cg` on
    ((`u`.`company_group_id` = `cg`.`id`)))
left join `document_status_master` `dsm` on
    ((`u`.`document_status_master_id` = `dsm`.`id`)))
left join `company_list` `cl` on
    ((`u`.`company_list_id` = `cl`.`id`)))
left join `timezone_master` `tm` on
    ((`tm`.`id` = `u`.`timezone_master_id`)))
left join `user_latest_job_details_by_id` `ujd` on
    ((`ujd`.`user_id` = `usd`.`user_id`)))
left join `cancel_first_level_reasons` `cflr` on
    ((`cflr`.`id` = `usd`.`cancel_primary_reason_id`)))
left join `cancel_second_level_reasons` `cslr` on
    ((`cslr`.`id` = `usd`.`cancel_secondary_reason_id`)))
left join `handpicked_job_status_master` `hjsm` on
    ((`hjsm`.`id` = `usd`.`handpicked_job_status_master_id`)))
where
    (isnull(`usd`.`is_demouser`)
        or (`usd`.`is_demouser` = 0));
        
        
-- SL_UAT.total_jobs_send_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `total_jobs_send_view` AS
select
    count(1) AS `job_sent`,
    `user_job`.`user_id` AS `user_id`
from
    `user_job`
where
    ((`user_job`.`process_status` = 'Approved')
        and (`user_job`.`sent_by` is not null)
            and (`user_job`.`activeflag` = 1))
group by
    `user_job`.`user_id`;
    
-- SL_UAT.user_active_package_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_active_package_data_view` AS
select
    ifnull(`up`.`duration`, `cp`.`duration`) AS `package_duration`,
    `up`.`booking_date` AS `booking_date`,
    `up`.`billing_date` AS `billing_date`,
    `cp`.`packageName` AS `package_name`,
    `plm`.`id` AS `package_level_id`,
    `cp`.`id` AS `company_package_id`,
    `cp`.`duration` AS `duration`,
    `cp`.`service_region_id` AS `service_region_id`,
    `plm`.`package_level` AS `package_level`,
    `sl`.`level_name` AS `service_level`,
    `sl`.`id` AS `product_level_id`,
    `cp`.`price` AS `active_package_price`,
    `cp`.`number_of_calls` AS `active_package_number_of_calls`,
    `cp`.`number_of_workshops` AS `active_package_number_of_workshops`,
    ifnull(`tcpv`.`total_client_price`, sum(`up`.`client_price`)) AS `total_client_price`,
    `u`.`id` AS `user_id`,
    `rsm`.`serviceName` AS `service_name`,
    `rsm`.`id` AS `resume_service_master_id`,
    `rsm`.`service_role_code` AS `service_role_code`,
    `plm`.`quickbooks_code` AS `quickbooks_code`,
    ifnull(`cb`.`billing_code1`, '') AS `billing_code1`,
    ifnull(`cb`.`billing_code2`, '') AS `billing_code2`,
    ifnull(`cb`.`billing_code3`, '') AS `billing_code3`,
    ifnull(`cb`.`billing_code4`, '') AS `billing_code4`,
    ifnull(`cb`.`billing_code5`, '') AS `billing_code5`,
    ifnull(`cb`.`billing_code6`, '') AS `billing_code6`,
    ifnull(`cb`.`billing_code7`, '') AS `billing_code7`,
    ifnull(`cb`.`billing_code8`, '') AS `billing_code8`,
    ifnull(`cb`.`billing_code9`, '') AS `billing_code9`,
    ifnull(`cb`.`billing_code10`, '') AS `billing_code10`,
    ifnull(`cb`.`contracted_currency`, '') AS `contracted_currency`,
    `cp`.`delivery_region_id` AS `delivery_region_id`
from
    ((((((((`user` `u`
left join `user_package` `up` on
    ((`u`.`id` = `up`.`user_id`)))
join `company_billing` `cb` on
    ((`cb`.`companyId` = `u`.`company_id`)))
join `company_package` `cp` on
    ((`cp`.`id` = `u`.`company_package_id`)))
join `package_level_master` `plm` on
    ((`plm`.`id` = `cp`.`package_level_id`)))
join `product_level_master` `sl` on
    ((`sl`.`id` = `cp`.`product_level_id`)))
join `user_service_details` `usd` on
    ((`usd`.`user_id` = `u`.`id`)))
join `resume_service_master` `rsm` on
    ((`rsm`.`id` = `cp`.`resume_service_id`)))
join `total_client_price_view` `tcpv` on
    ((`tcpv`.`user_id` = `u`.`id`)))
where
    ((`up`.`activeflag` = 1)
        or isnull(`up`.`activeflag`))
group by
    `user_id`;
    
    
-- SL_UAT.user_resume_project_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_resume_project_data_view` AS
select
    `urp`.`user_id` AS `user_id`,
    if(((`urm`.`completed_flag` = 0)
    and (`urm`.`activeflag` = 1)),
    1,
    0) AS `open_milestones`,
    if((`urp`.`activeflag` = 1),
    `urp`.`project_complete_date`,
    NULL) AS `resume_project_completion_date`,
    if((`rmm`.`name` in ('Resume/Cover Letter - Final Draft', 'Resume - Final Draft')), `urm`.`milestone_complete_date`, NULL) AS `resume_completion_date`,
    if((`rmm`.`name` = 'Resume Critique & Worksheet'),
    `urm`.`milestone_complete_date`,
    NULL) AS `critique_completion_date`
from
    ((`user_resume_project` `urp`
left join `user_resume_milestone` `urm` on
    ((`urm`.`resume_project_id` = `urp`.`id`)))
join `resume_milestone_master` `rmm` on
    ((`rmm`.`id` = `urm`.`milestone_id`)));
    
    
-- SL_UAT.user_package_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_package_data_view` AS
select
    `u`.`id` AS `user_id`,
    `c`.`id` AS `company_id`,
    `c`.`long_name` AS `company_name`,
    ifnull(`m`.`id`, `c`.`id`) AS `master_company_id`,
    ifnull(`m`.`long_name`, `c`.`long_name`) AS `master_company_name`,
    `up`.`company_package_id` AS `company_package_id`,
    `up`.`package_name` AS `package_name`,
    `up`.`active_package_number_of_calls` AS `active_package_number_of_calls`,
    `up`.`active_package_number_of_workshops` AS `active_package_number_of_workshops`,
    `up`.`package_level_id` AS `package_level_id`,
    `up`.`package_level` AS `package_level`,
    `up`.`product_level_id` AS `product_level_id`,
    `up`.`service_level` AS `service_level`,
    `up`.`resume_service_master_id` AS `resume_service_master_id`,
    `up`.`service_name` AS `service_name`,
    `up`.`quickbooks_code` AS `quickbooks_code`,
    `up`.`active_package_price` AS `active_package_price`,
    ifnull(`up`.`total_client_price`, `up`.`active_package_price`) AS `total_client_price`,
    `up`.`package_duration` AS `package_duration`,
    `up`.`duration` AS `duration`,
    `up`.`service_region_id` AS `service_region_id`,
    `up`.`delivery_region_id` AS `delivery_region_id`,
    (
    select
        cast(`user_package`.`booking_date` as date) AS `booking_date`
    from
        `user_package`
    where
        ((`user_package`.`user_id` = `u`.`id`)
            and (`user_package`.`booking_date` is not null))
    order by
        `user_package`.`id`
    limit 1) AS `booking_date`,
    (
    select
        cast(`user_package`.`billing_date` as date) AS `billing_date`
    from
        `user_package`
    where
        ((`user_package`.`user_id` = `u`.`id`)
            and (`user_package`.`billing_date` is not null))
    order by
        `user_package`.`id`
    limit 1) AS `billing_date`,
    (
    select
        `user_package`.`billing_trigger_master_id`
    from
        `user_package`
    where
        (`user_package`.`user_id` = `u`.`id`)
    order by
        `user_package`.`id`
    limit 1) AS `billing_trigger_master_id`,
    (
    select
        `user_package`.`trigger_name`
    from
        `user_package`
    where
        (`user_package`.`user_id` = `u`.`id`)
    order by
        `user_package`.`id`
    limit 1) AS `trigger_name`,
    ifnull(`usd`.`billing_code1`, '') AS `user_billing_code1`,
    ifnull(`usd`.`billing_code2`, '') AS `user_billing_code2`,
    ifnull(`usd`.`billing_code3`, '') AS `user_billing_code3`,
    ifnull(`usd`.`billing_code4`, '') AS `user_billing_code4`,
    ifnull(`usd`.`billing_code5`, '') AS `user_billing_code5`,
    ifnull(`usd`.`billing_code6`, '') AS `user_billing_code6`,
    ifnull(`usd`.`billing_code7`, '') AS `user_billing_code7`,
    ifnull(`usd`.`billing_code8`, '') AS `user_billing_code8`,
    ifnull(`usd`.`billing_code9`, '') AS `user_billing_code9`,
    ifnull(`usd`.`billing_code10`, '') AS `user_billing_code10`,
    ifnull(`up`.`billing_code1`, '') AS `company_billing_code1`,
    ifnull(`up`.`billing_code2`, '') AS `company_billing_code2`,
    ifnull(`up`.`billing_code3`, '') AS `company_billing_code3`,
    ifnull(`up`.`billing_code4`, '') AS `company_billing_code4`,
    ifnull(`up`.`billing_code5`, '') AS `company_billing_code5`,
    ifnull(`up`.`billing_code6`, '') AS `company_billing_code6`,
    ifnull(`up`.`billing_code7`, '') AS `company_billing_code7`,
    ifnull(`up`.`billing_code8`, '') AS `company_billing_code8`,
    ifnull(`up`.`billing_code9`, '') AS `company_billing_code9`,
    ifnull(`up`.`billing_code10`, '') AS `company_billing_code10`,
    ifnull(`up`.`contracted_currency`, '') AS `contracted_currency`
from
    ((((`user` `u`
left join `user_service_details` `usd` on
    ((`usd`.`user_id` = `u`.`id`)))
left join `company` `c` on
    ((`c`.`id` = `u`.`company_id`)))
left join `user_active_package_data_view` `up` on
    (((`up`.`company_package_id` = `u`.`company_package_id`)
        and (`up`.`user_id` = `u`.`id`))))
left join `company` `m` on
    ((`m`.`id` = `c`.`master_company_id`)))
where
    (isnull(`usd`.`is_demouser`)
        or (`usd`.`is_demouser` = 0))
order by
    `u`.`id`;
    
    
-- SL_UAT.user_resume_project_data_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_resume_project_data_view` AS
select
    `urp`.`user_id` AS `user_id`,
    if(((`urm`.`completed_flag` = 0)
    and (`urm`.`activeflag` = 1)),
    1,
    0) AS `open_milestones`,
    if((`urp`.`activeflag` = 1),
    `urp`.`project_complete_date`,
    NULL) AS `resume_project_completion_date`,
    if((`rmm`.`name` in ('Resume/Cover Letter - Final Draft', 'Resume - Final Draft')), `urm`.`milestone_complete_date`, NULL) AS `resume_completion_date`,
    if((`rmm`.`name` = 'Resume Critique & Worksheet'),
    `urm`.`milestone_complete_date`,
    NULL) AS `critique_completion_date`
from
    ((`user_resume_project` `urp`
left join `user_resume_milestone` `urm` on
    ((`urm`.`resume_project_id` = `urp`.`id`)))
join `resume_milestone_master` `rmm` on
    ((`rmm`.`id` = `urm`.`milestone_id`)));
    
    
    
-- SL_UAT.user_service_team_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_service_team_view` AS
select
    `usd`.`user_id` AS `user_id`,
    `t`.`user_id` AS `TC_ID`,
    concat(`t`.`first_name`, ' ', `t`.`last_name`) AS `TC_Name`,
    `o`.`user_id` AS `Outreach_ID`,
    concat(`o`.`first_name`, ' ', `o`.`last_name`) AS `Outreach_Name`,
    `r`.`user_id` AS `RW_ID`,
    concat(`r`.`first_name`, ' ', `r`.`last_name`) AS `RW_Name`,
    `j`.`user_id` AS `JCR_ID`,
    concat(`j`.`first_name`, ' ', `j`.`last_name`) AS `JCR_Name`,
    `qa`.`user_id` AS `JCRQA_ID`,
    concat(`qa`.`first_name`, ' ', `qa`.`last_name`) AS `JCRQA_Name`,
    `csm`.`user_id` AS `CSM_ID`,
    concat(`csm`.`first_name`, ' ', `csm`.`last_name`) AS `CSM_Name`,
    `cc`.`user_id` AS `Company_Coordinator_ID`,
    concat(`cc`.`first_name`, ' ', `cc`.`last_name`) AS `Company_Coordinator_Name`,
    (case
        when (`usd`.`is_receive_jobleads` = 1) then 'True'
        when (`usd`.`is_receive_jobleads` = 0) then 'False'
        else 'Automatic'
    end) AS `is_receive_jobleads`,
    concat(ifnull(`h`.`hear_about_rs`, ''), ' ', ifnull(`usd`.`heard_about_other`, '')) AS `how_did_you_hear`
from
    ((((((((((((`user_service_details` `usd`
join `user` `u` on
    ((`u`.`id` = `usd`.`user_id`)))
left join `torch_user` `t` on
    ((`t`.`user_id` = `usd`.`transitionspecialist_id`)))
left join `user` `user_o` on
    ((`user_o`.`id` = `usd`.`ts_coordinator_id`)))
left join `torch_user` `o` on
    (((`o`.`user_id` = `usd`.`ts_coordinator_id`)
        and (`user_o`.`id` = `o`.`user_id`)
            and (`user_o`.`activeflag` = 1))))
left join `torch_user` `r` on
    ((`r`.`user_id` = `usd`.`resumewriter_id`)))
left join `torch_user` `j` on
    ((`j`.`user_id` = `usd`.`jobconcierge_id`)))
left join `user_concierge_process_summary` `ucps` on
    ((`ucps`.`user_id` = `usd`.`user_id`)))
left join `torch_user` `qa` on
    ((`qa`.`user_id` = `ucps`.`jcr_qa_id`)))
left join `company` `c` on
    ((`c`.`id` = `u`.`company_id`)))
left join `torch_user` `csm` on
    ((`csm`.`user_id` = `c`.`client_services_rep1`)))
left join `torch_user` `cc` on
    ((`cc`.`user_id` = `c`.`coordinator_contact`)))
left join `hear_about_rs_master` `h` on
    ((`h`.`id` = `usd`.`hear_about_rs_master_id`)))
where
    (isnull(`usd`.`is_demouser`)
        or (`usd`.`is_demouser` = 0))
order by
    `usd`.`user_id` desc;



-- SL_UAT.user_resume_project_data_summary_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `user_resume_project_data_summary_view` AS
select
    `urp`.`user_id` AS `user_id`,
    sum(`urp`.`open_milestones`) AS `open_milestones`,
    max(`urp`.`resume_project_completion_date`) AS `resume_project_completion_date`,
    min(`urp`.`resume_completion_date`) AS `resume_completion_date`,
    min(`urp`.`critique_completion_date`) AS `critique_completion_date`
from
    `user_resume_project_data_view` `urp`
group by
    `urp`.`user_id`;    
    
-- SL_UAT.rb_transition_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `rb_transition_view` AS
select
    `u`.`user_id` AS `user_id`,
    `u`.`last_name` AS `last_name`,
    `u`.`first_name` AS `first_name`,
    `u`.`title` AS `title`,
    `u`.`goes_by` AS `goes_by`,
    `u`.`department` AS `department`,
    `u`.`business_unit` AS `business_unit`,
    ifnull(`smstri`.`user_status`, `u`.`user_status`) AS `user_status`,
    `u`.`document_status` AS `document_status`,
    `u`.`primary_email` AS `primary_email`,
    `u`.`secondary_email` AS `secondary_email`,
    `u`.`cell_phone` AS `cell_phone`,
    `u`.`home_phone` AS `home_phone`,
    `u`.`work_phone` AS `work_phone`,
    `u`.`address1` AS `address1`,
    `u`.`address2` AS `address2`,
    `u`.`handpicked_job_status` AS `handpicked_job_status`,
    `p`.`master_company_id` AS `master_company_id`,
    `p`.`master_company_name` AS `master_company_name`,
    `p`.`company_name` AS `company_name`,
    `p`.`company_id` AS `company_id`,
    `p`.`company_package_id` AS `company_package_id`,
    `p`.`package_name` AS `package_name`,
    `sli`.`level_name` AS `product_level_name`,
    `p`.`active_package_number_of_calls` AS `active_package_number_of_calls`,
    `p`.`active_package_number_of_workshops` AS `active_package_number_of_workshops`,
    `u`.`registration_date` AS `registration_date`,
    `p`.`booking_date` AS `booking_date`,
    `p`.`billing_date` AS `billing_date`,
    if((`p`.`billing_trigger_master_id` = 16),
    `p`.`trigger_name`,
    ifnull(`btmi`.`billing_trigger_name`, `p`.`trigger_name`)) AS `trigger_name`,
    `u`.`first_call_complete_date` AS `first_call_complete_date`,
    `p`.`duration` AS `package_duration`,
    `u`.`total_time_passed_days` AS `total_time_passed_days`,
    `u`.`cancel_date` AS `cancel_date`,
    ifnull(`cflri`.`cancel_reason`, `u`.`cancel_first_level_reason`) AS `cancel_first_level_reason`,
    ifnull(`cslri`.`cancel_reason`, `u`.`cancel_second_level_reason`) AS `cancel_second_level_reason`,
    `p`.`active_package_price` AS `active_package_price`,
    `p`.`total_client_price` AS `total_client_price`,
    ifnull(`lmstri`.`language`, `u`.`language`) AS `language`,
    `u`.`city` AS `city`,
    ifnull(`stmstri`.`state_name`, `u`.`state`) AS `state`,
    `u`.`zip_code` AS `zip_code`,
    ifnull(`cmstri`.`country_name`, `u`.`country`) AS `country`,
    ifnull(`tmi`.`timezoneName`, `u`.`timezone`) AS `timezone`,
    ifnull(`plmi`.`package_level`, `p`.`package_level`) AS `package_level`,
    ifnull(`sli`.`level_name`, `p`.`service_level`) AS `service_level`,
    `u`.`group_id` AS `group_id`,
    `u`.`group_name` AS `group_name`,
    `u`.`list_id` AS `list_id`,
    `u`.`list_name` AS `list_name`,
    `u`.`pilot` AS `pilot`,
    `u`.`vip` AS `vip`,
    `u`.`separation_date` AS `separation_date`,
    `u`.`upload_date` AS `upload_date`,
    `u`.`eligibility_date` AS `eligibility_date`,
    `u`.`eligibility_end_date` AS `eligibility_end_date`,
    `u`.`first_login` AS `first_login`,
    `u`.`job_profile_completion_date` AS `job_profile_completion_date`,
    `u`.`first_job_sent_date` AS `first_job_sent_date`,
    `ucps`.`last_job_sent` AS `last_job_sent`,
    `tjsv`.`job_sent` AS `total_sent_jobs`,
    `u`.`first_mail_sent_date` AS `first_mail_sent_date`,
    ifnull(`rsmi`.`service_name`, `p`.`service_name`) AS `service_name`,
    `u`.`resume_profile_completion_date` AS `resume_profile_completion_date`,
    `op`.`resume_completion_date` AS `resume_completion_date`,
    `op`.`critique_completion_date` AS `critique_completion_date`,
    `ucs`.`critique_complete_date` AS `auto_critique_completion_date`,
    `u`.`suspend_date` AS `suspend_date`,
    `u`.`resume_date` AS `resume_date`,
    ifnull(`psmstri`.`status`, `uan`.`present_status`) AS `present_status`,
    `uan`.`note_date` AS `note_date`,
    `u`.`recent_login` AS `recent_login`,
    `u`.`outreach_date` AS `outreach_date`,
    `u`.`notification_date` AS `notification_date`,
    `u`.`tc_assignment_date` AS `tc_assignment_date`,
    `u`.`end_of_service_date` AS `end_of_service_date`,
    `u`.`joining_date` AS `joining_date`,
    `s`.`CSM_Name` AS `CSM_NAME`,
    `s`.`TC_Name` AS `TC_NAME`,
    `u`.`phasetwo_optin_value` AS `phasetwo_optin_value`,
    `u`.`phasetwo_optin_date` AS `phasetwo_optin_date`,
    `p`.`company_billing_code1` AS `company_billing_code1`,
    `p`.`user_billing_code1` AS `user_billing_code1`,
    `p`.`company_billing_code2` AS `company_billing_code2`,
    `p`.`user_billing_code2` AS `user_billing_code2`,
    `p`.`company_billing_code3` AS `company_billing_code3`,
    `p`.`user_billing_code3` AS `user_billing_code3`,
    `p`.`company_billing_code4` AS `company_billing_code4`,
    `p`.`user_billing_code4` AS `user_billing_code4`,
    `p`.`company_billing_code5` AS `company_billing_code5`,
    `p`.`user_billing_code5` AS `user_billing_code5`,
    `p`.`company_billing_code6` AS `company_billing_code6`,
    `p`.`user_billing_code6` AS `user_billing_code6`,
    `p`.`company_billing_code7` AS `company_billing_code7`,
    `p`.`user_billing_code7` AS `user_billing_code7`,
    `p`.`company_billing_code8` AS `company_billing_code8`,
    `p`.`user_billing_code8` AS `user_billing_code8`,
    `p`.`company_billing_code9` AS `company_billing_code9`,
    `p`.`user_billing_code9` AS `user_billing_code9`,
    `p`.`company_billing_code10` AS `company_billing_code10`,
    `p`.`user_billing_code10` AS `user_billing_code10`,
    `teav`.`company_code_1_label` AS `company_code_1_label`,
    `cai`.`company_column_1` AS `company_code_1`,
    `teav`.`company_code_2_label` AS `company_code_2_label`,
    `cai`.`company_column_2` AS `company_code_2`,
    `teav`.`company_code_3_label` AS `company_code_3_label`,
    `cai`.`company_column_3` AS `company_code_3`,
    `teav`.`company_code_4_label` AS `company_code_4_label`,
    `cai`.`company_column_4` AS `company_code_4`,
    `teav`.`company_code_5_label` AS `company_code_5_label`,
    `cai`.`company_column_5` AS `company_code_5`,
    `teav`.`company_code_6_label` AS `company_code_6_label`,
    `cai`.`company_column_6` AS `company_code_6`,
    `teav`.`company_code_7_label` AS `company_code_7_label`,
    `cai`.`company_column_7` AS `company_code_7`,
    `teav`.`company_code_8_label` AS `company_code_8_label`,
    `cai`.`company_column_8` AS `company_code_8`,
    `teav`.`company_code_9_label` AS `company_code_9_label`,
    `cai`.`company_column_9` AS `company_code_9`,
    `teav`.`company_code_10_label` AS `company_code_10_label`,
    `cai`.`company_column_10` AS `company_code_10`,
    `teav`.`company_package_code_1_label` AS `company_package_code_1_label`,
    `cpai`.`company_package_column_1` AS `company_package_code_1`,
    `teav`.`company_package_code_2_label` AS `company_package_code_2_label`,
    `cpai`.`company_package_column_2` AS `company_package_code_2`,
    `teav`.`company_package_code_3_label` AS `company_package_code_3_label`,
    `cpai`.`company_package_column_3` AS `company_package_code_3`,
    `teav`.`company_package_code_4_label` AS `company_package_code_4_label`,
    `cpai`.`company_package_column_4` AS `company_package_code_4`,
    `teav`.`company_package_code_5_label` AS `company_package_code_5_label`,
    `cpai`.`company_package_column_5` AS `company_package_code_5`,
    `teav`.`company_package_code_6_label` AS `company_package_code_6_label`,
    `cpai`.`company_package_column_6` AS `company_package_code_6`,
    `teav`.`company_package_code_7_label` AS `company_package_code_7_label`,
    `cpai`.`company_package_column_7` AS `company_package_code_7`,
    `teav`.`company_package_code_8_label` AS `company_package_code_8_label`,
    `cpai`.`company_package_column_8` AS `company_package_code_8`,
    `teav`.`company_package_code_9_label` AS `company_package_code_9_label`,
    `cpai`.`company_package_column_9` AS `company_package_code_9`,
    `teav`.`company_package_code_10_label` AS `company_package_code_10_label`,
    `cpai`.`company_package_column_10` AS `company_package_code_10`,
    `teav`.`participant_code_1_label` AS `participant_code_1_label`,
    `pai`.`participant_column_1` AS `participant_code_1`,
    `teav`.`participant_code_2_label` AS `participant_code_2_label`,
    `pai`.`participant_column_2` AS `participant_code_2`,
    `teav`.`participant_code_3_label` AS `participant_code_3_label`,
    `pai`.`participant_column_3` AS `participant_code_3`,
    `teav`.`participant_code_4_label` AS `participant_code_4_label`,
    `pai`.`participant_column_4` AS `participant_code_4`,
    `teav`.`participant_code_5_label` AS `participant_code_5_label`,
    `pai`.`participant_column_5` AS `participant_code_5`,
    `teav`.`participant_code_6_label` AS `participant_code_6_label`,
    `pai`.`participant_column_6` AS `participant_code_6`,
    `teav`.`participant_code_7_label` AS `participant_code_7_label`,
    `pai`.`participant_column_7` AS `participant_code_7`,
    `teav`.`participant_code_8_label` AS `participant_code_8_label`,
    `pai`.`participant_column_8` AS `participant_code_8`,
    `teav`.`participant_code_9_label` AS `participant_code_9_label`,
    `pai`.`participant_column_9` AS `participant_code_9`,
    `teav`.`participant_code_10_label` AS `participant_code_10_label`,
    `pai`.`participant_column_10` AS `participant_code_10`,
    `uan`.`note_text` AS `active_note`,
    `uan`.`note_date` AS `active_note_date`,
    ifnull(`psmstri`.`status`, `uan`.`present_status`) AS `active_status`,
    ifnull(`elmstri`.`engagement_level`, `uan`.`engagement_level`) AS `active_engagement_level`,
    `p`.`billing_date` AS `first_billing_date`,
    if((`p`.`billing_trigger_master_id` = 16),
    `p`.`trigger_name`,
    ifnull(`btmi`.`billing_trigger_name`, `p`.`trigger_name`)) AS `first_billing_trigger`,
    `u`.`tips_email` AS `tips_email`,
    `u`.`webinar_email` AS `webinar_email`,
    `u`.`company` AS `job_accepted_company`,
    `u`.`joining_date` AS `job_accepted_date`,
    `u`.`latest_job_title` AS `job_accepted_title`,
    `u`.`start_date` AS `job_accepted_start_date`,
    `u`.`source` AS `job_accepted_source`,
    `u`.`salary` AS `job_accepted_salary`,
    `u`.`internal_placement` AS `job_accepted_internal_placement`,
    `op`.`open_milestones` AS `no_open_milestones`,
    `s`.`TC_ID` AS `transition_coach_id`,
    `s`.`Company_Coordinator_Name` AS `account_coordinator`,
    `s`.`Outreach_Name` AS `enrollment_specialist`,
    `s`.`Outreach_ID` AS `enrollment_specialist_id`,
    `s`.`RW_Name` AS `resume_writer_name`,
    `s`.`RW_ID` AS `resume_writer_id`,
    `s`.`JCR_Name` AS `jcr_first_name`,
    `s`.`JCRQA_Name` AS `qa_first_name`,
    `op`.`resume_project_completion_date` AS `resume_project_completion_date`,
    ifnull(`rsmi`.`service_name`, `p`.`service_name`) AS `resume_service`,
    `p`.`contracted_currency` AS `contracted_currency`,
    `u`.`days_to_land` AS `days_to_land`,
    `u`.`report_date` AS `report_date`,
    `u`.`tenant_id` AS `tenant_id`,
    `tntmstr_contract`.`tenant_name` AS `contract_region`,
    `tntmstr_contract`.`business_type` AS `business_type_contract`,
    `tenantmstr`.`tenant_name` AS `delivery_region`,
    `tenantmstr`.`business_type` AS `business_type_delivery`,
    `p`.`service_region_id` AS `service_region_id`,
    `tenantmstr`.`tenant_name` AS `service_region`,
    `u`.`locale` AS `loggedin_user_locale`,
    `s`.`is_receive_jobleads` AS `is_receive_jobleads`,
    `rbuiav`.`system_user_name` AS `temporary_coach_access`,
    `rbcpdv`.`system_user_name` AS `pool_coach`,
    `u`.`reference_entity_id` AS `primary_tenant_user_id`,
    (case
        `tap`.`enable_single_tenant_delivery` when 0 then 'N/A'
        when 1 then `tntmstr_service`.`tenant_name`
    end) AS `single_tenant_delivery_region`,
    `u`.`employment_type` AS `employment_type`,
    `s`.`how_did_you_hear` AS `how_did_you_hear`
from
    ((((((((((((((((((((((((((((((((`user_personal_info_data_view` `u`
join `user_package_data_view` `p` on
    ((`p`.`user_id` = `u`.`user_id`)))
left join `total_jobs_send_view` `tjsv` on
    ((`tjsv`.`user_id` = `u`.`user_id`)))
left join `user_resume_project_data_summary_view` `op` on
    ((`op`.`user_id` = `u`.`user_id`)))
left join `user_service_team_view` `s` on
    ((`s`.`user_id` = `u`.`user_id`)))
left join `rb_user_interim_access_view` `rbuiav` on
    ((`rbuiav`.`client_id` = `u`.`user_id`)))
left join `rb_coach_pool_data_view` `rbcpdv` on
    ((`rbcpdv`.`client_id` = `u`.`user_id`)))
left join `total_jobs_view` `ucps` on
    ((`ucps`.`user_id` = `u`.`user_id`)))
left join `user_active_note` `uan` on
    ((`uan`.`user_id` = `u`.`user_id`)))
left join `company_package_additional_information` `cpai` on
    ((`cpai`.`company_package_id` = `p`.`company_package_id`)))
left join `company_additional_information` `cai` on
    ((`cai`.`company_id` = `p`.`company_id`)))
left join `user_additional_info` `pai` on
    ((`pai`.`user_id` = `u`.`user_id`)))
left join `timezone_master_i18n` `tmi` on
    (((`tmi`.`timezone_master_id` = `u`.`timezone_master_id`)
        and (`tmi`.`locale` = `u`.`locale`))))
join `status_master_i18n` `smstri` on
    (((`smstri`.`status_master_id` = `u`.`status_master_id`)
        and (`smstri`.`locale` = `u`.`locale`))))
left join `country_master_i18n` `cmstri` on
    (((`cmstri`.`country_master_id` = `u`.`country_master_id`)
        and (`cmstri`.`locale` = `u`.`locale`))))
left join `state_master_i18n` `stmstri` on
    (((`stmstri`.`state_master_id` = `u`.`state_master_id`)
        and (`stmstri`.`locale` = `u`.`locale`))))
left join `language_master_i18n` `lmstri` on
    (((`lmstri`.`language_master_id` = `u`.`language_master_id`)
        and (`lmstri`.`locale` = `u`.`locale`))))
left join `package_level_master_i18n` `plmi` on
    (((`plmi`.`package_level_master_id` = `p`.`package_level_id`)
        and (`plmi`.`locale` = `u`.`locale`))))
left join `product_level_master_i18n` `sli` on
    (((`sli`.`product_level_master_id` = `p`.`product_level_id`)
        and (`sli`.`locale` = `u`.`locale`))))
left join `resume_service_master_i18n` `rsmi` on
    (((`rsmi`.`resume_service_master_id` = `p`.`resume_service_master_id`)
        and (`rsmi`.`locale` = `u`.`locale`))))
left join `document_status_master_i18n` `dsm` on
    (((`dsm`.`id` = `u`.`document_status_id`)
        and (`dsm`.`locale` = `u`.`locale`))))
left join `handpicked_job_status_master_i18n` `hpjsmi` on
    (((`hpjsmi`.`handpicked_job_status_master_id` = `u`.`handpicked_job_status_master_id`)
        and (`hpjsmi`.`locale` = `u`.`locale`))))
left join `cancel_first_level_reasons_i18n` `cflri` on
    (((`cflri`.`cancel_first_master_id` = `u`.`cancel_first_master_id`)
        and (`cflri`.`locale` = `u`.`locale`))))
left join `cancel_second_level_reasons_i18n` `cslri` on
    (((`cslri`.`cancel_second_master_id` = `u`.`cancel_second_master_id`)
        and (`cslri`.`locale` = `u`.`locale`))))
left join `present_status_master_i18n` `psmstri` on
    (((`psmstri`.`present_status_master_id` = `uan`.`present_status_id`)
        and (`psmstri`.`locale` = `u`.`locale`))))
left join `engagement_level_master_i18n` `elmstri` on
    (((`elmstri`.`engagement_level_master_id` = `uan`.`engagement_level_id`)
        and (`elmstri`.`locale` = `u`.`locale`))))
left join `tenant_entity_attribute_view` `teav` on
    ((`teav`.`tenant_id` = `u`.`tenant_id`)))
left join `tenant_master` `tenantmstr` on
    ((`tenantmstr`.`id` = `p`.`service_region_id`)))
left join `tenant_master` `tntmstr_contract` on
    ((`tntmstr_contract`.`id` = (case
        when (`u`.`record_type` = 'DELIVERY') then `u`.`reference_tenant_id`
        when (`u`.`record_type` <> 'DELIVERY') then `u`.`tenant_id`
    end))))
left join `billing_trigger_master_i18n` `btmi` on
    (((`btmi`.`billing_trigger_master_id` = `p`.`billing_trigger_master_id`)
        and (`btmi`.`locale` = `u`.`locale`))))
left join `user_critique_status` `ucs` on
    ((`ucs`.`user_id` = `u`.`user_id`)))
left join `tenant_master` `tntmstr_service` on
    ((`tntmstr_service`.`id` = `p`.`delivery_region_id`)))
left join `tenant_accounting_preference` `tap` on
    ((`tap`.`tenant_id` = `u`.`tenant_id`)));
