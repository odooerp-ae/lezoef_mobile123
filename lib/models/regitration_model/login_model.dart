class LoginModel {
	String? jsonrpc;
	Null id;
	LoginResult? result;

	LoginModel({ this.jsonrpc, this.id, this.result});

	LoginModel.fromJson(Map<String, dynamic> json) {
		jsonrpc = json['jsonrpc'];
		id = json['id'];
		result = (json['result'] != null ? LoginResult.fromJson(json['result']) : null)!;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['jsonrpc'] = jsonrpc;
		data['id'] = id;
		if (result != null) {
      data['result'] = result?.toJson();
    }
		return data;
	}
}

class LoginResult {
	int? uid;
	bool? isSystem;
	bool? isAdmin;
	bool? isInternalUser;
	UserContext? userContext;
	String? db;
	UserSettings? userSettings;
	String? serverVersion;
	List<int>? serverVersionInfo;
	String? supportUrl;
	String? name;
	String? username;
	String? partnerDisplayName;
	int? partnerId;
	String? webBaseUrl;
	int? activeIdsLimit;
	Null? profileSession;
	Null? profileCollectors;
	Null? profileParams;
	int? maxFileUploadSize;
	bool? homeActionId;
	CacheHashes? cacheHashes;
	BundleParams? bundleParams;
	bool? showEffect;
	bool? displaySwitchCompanyMenu;
	List<int>? userId;
	List<Null>? webTours;
	bool? tourDisable;
	String? notificationType;
	String? warning;
	String? expirationDate;
	String? expirationReason;
	bool? mapBoxToken;
	bool? odoobotInitialized;
	bool? iapCompanyEnrich;
	bool? ocnTokenKey;
	bool? fcmProjectId;
	int? inboxAction;
	String? sessionId;
	List<Partner>? partner;
	List<UserObj>? userObj;

	LoginResult({this.uid, this.isSystem, this.isAdmin, this.isInternalUser, this.userContext, this.db, this.userSettings, this.serverVersion, this.serverVersionInfo, this.supportUrl, this.name, this.username, this.partnerDisplayName, this.partnerId, this.webBaseUrl, this.activeIdsLimit, this.profileSession, this.profileCollectors, this.profileParams, this.maxFileUploadSize, this.homeActionId, this.cacheHashes,  this.bundleParams, this.showEffect, this.displaySwitchCompanyMenu, this.userId, this.webTours, this.tourDisable, this.notificationType, this.warning, this.expirationDate, this.expirationReason, this.mapBoxToken, this.odoobotInitialized, this.iapCompanyEnrich, this.ocnTokenKey, this.fcmProjectId, this.inboxAction, this.sessionId, this.partner, this.userObj});

	LoginResult.fromJson(Map<String, dynamic> json) {
		uid = json['uid'];
		isSystem = json['is_system'];
		isAdmin = json['is_admin'];
		isInternalUser = json['is_internal_user'];
		userContext = json['user_context'] != null ? UserContext.fromJson(json['user_context']) : null;
		db = json['db'];
		userSettings = json['user_settings'] != null ? UserSettings.fromJson(json['user_settings']) : null;
		serverVersion = json['server_version'];
		serverVersionInfo = json['server_version_info'].cast<int>();
		supportUrl = json['support_url'];
		name = json['name'];
		username = json['username'];
		partnerDisplayName = json['partner_display_name'];
		partnerId = json['partner_id'];
		webBaseUrl = json['web.base.url'];
		activeIdsLimit = json['active_ids_limit'];
		profileSession = json['profile_session'];
		profileCollectors = json['profile_collectors'];
		profileParams = json['profile_params'];
		maxFileUploadSize = json['max_file_upload_size'];
		homeActionId = json['home_action_id'];
		cacheHashes = json['cache_hashes'] != null ? CacheHashes.fromJson(json['cache_hashes']) : null;
		bundleParams = json['bundle_params'] != null ? BundleParams.fromJson(json['bundle_params']) : null;
		showEffect = json['show_effect'];
		displaySwitchCompanyMenu = json['display_switch_company_menu'];
		userId = json['user_id'].cast<int>();

		tourDisable = json['tour_disable'];
		notificationType = json['notification_type'];
		warning = json['warning'];
		expirationDate = json['expiration_date'];
		expirationReason = json['expiration_reason'];
		mapBoxToken = json['map_box_token'];
		odoobotInitialized = json['odoobot_initialized'];
		iapCompanyEnrich = json['iap_company_enrich'];
		ocnTokenKey = json['ocn_token_key'];
		fcmProjectId = json['fcm_project_id'];
		inboxAction = json['inbox_action'];
		sessionId = json['session_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['uid'] = uid;
		data['is_system'] = isSystem;
		data['is_admin'] = isAdmin;
		data['is_internal_user'] = isInternalUser;
		if (userContext != null) {
      data['user_context'] = userContext?.toJson();
    }
		data['db'] = db;
		if (userSettings != null) {
      data['user_settings'] = userSettings?.toJson();
    }
		data['server_version'] = serverVersion;
		data['server_version_info'] = serverVersionInfo;
		data['support_url'] = supportUrl;
		data['name'] = name;
		data['username'] = username;
		data['partner_display_name'] = partnerDisplayName;
		data['partner_id'] = partnerId;
		data['web.base.url'] = webBaseUrl;
		data['active_ids_limit'] = activeIdsLimit;
		data['profile_session'] = profileSession;
		data['profile_collectors'] = profileCollectors;
		data['profile_params'] = profileParams;
		data['max_file_upload_size'] = maxFileUploadSize;
		data['home_action_id'] = homeActionId;
		if (cacheHashes != null) {
      data['cache_hashes'] = cacheHashes?.toJson();
    }
		if (bundleParams != null) {
      data['bundle_params'] = bundleParams?.toJson();
    }
		data['show_effect'] = showEffect;
		data['display_switch_company_menu'] = displaySwitchCompanyMenu;
		data['user_id'] = userId;
		data['tour_disable'] = tourDisable;
		data['notification_type'] = notificationType;
		data['warning'] = warning;
		data['expiration_date'] = expirationDate;
		data['expiration_reason'] = expirationReason;
		data['map_box_token'] = mapBoxToken;
		data['odoobot_initialized'] = odoobotInitialized;
		data['iap_company_enrich'] = iapCompanyEnrich;
		data['ocn_token_key'] = ocnTokenKey;
		data['fcm_project_id'] = fcmProjectId;
		data['inbox_action'] = inboxAction;
		data['session_id'] = sessionId;
		if (partner != null) {
      data['partner'] = partner?.map((v) => v.toJson()).toList();
    }
		if (userObj != null) {
      data['user_obj'] = userObj?.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class UserContext {
	String? lang;
	bool? tz;
	int? uid;

	UserContext({this.lang, this.tz, this.uid});

	UserContext.fromJson(Map<String, dynamic> json) {
		lang = json['lang'];
		tz = json['tz'];
		uid = json['uid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['lang'] = lang;
		data['tz'] = tz;
		data['uid'] = uid;
		return data;
	}
}

class UserSettings {
	int? id;
	UserId? userId;
	bool? isDiscussSidebarCategoryChannelOpen;
	bool? isDiscussSidebarCategoryChatOpen;
	bool? pushToTalkKey;
	bool? usePushToTalk;
	int? voiceActiveDuration;
	List<List>? volumeSettingsIds;
	bool? homemenuConfig;

	UserSettings({this.id, this.userId, this.isDiscussSidebarCategoryChannelOpen, this.isDiscussSidebarCategoryChatOpen, this.pushToTalkKey, this.usePushToTalk, this.voiceActiveDuration, this.volumeSettingsIds, this.homemenuConfig});

	UserSettings.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		userId = json['user_id'] != null ? UserId.fromJson(json['user_id']) : null;
		isDiscussSidebarCategoryChannelOpen = json['is_discuss_sidebar_category_channel_open'];
		isDiscussSidebarCategoryChatOpen = json['is_discuss_sidebar_category_chat_open'];
		pushToTalkKey = json['push_to_talk_key'];
		usePushToTalk = json['use_push_to_talk'];
		voiceActiveDuration = json['voice_active_duration'];
		homemenuConfig = json['homemenu_config'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['id'] = id;
		if (userId != null) {
      data['user_id'] = userId?.toJson();
    }
		data['is_discuss_sidebar_category_channel_open'] = isDiscussSidebarCategoryChannelOpen;
		data['is_discuss_sidebar_category_chat_open'] = isDiscussSidebarCategoryChatOpen;
		data['push_to_talk_key'] = pushToTalkKey;
		data['use_push_to_talk'] = usePushToTalk;
		data['voice_active_duration'] = voiceActiveDuration;
		data['homemenu_config'] = homemenuConfig;
		return data;
	}
}

class UserId {
	int? id;

	UserId({this.id});

	UserId.fromJson(Map<String, dynamic> json) {
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['id'] = id;
		return data;
	}
}

class VolumeSettingsIds {


	VolumeSettingsIds.fromJson(Map<String, dynamic> json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		return data;
	}
}

class CacheHashes {
	String? translations;
	String? loadMenus;

	CacheHashes({this.translations, this.loadMenus});

	CacheHashes.fromJson(Map<String, dynamic> json) {
		translations = json['translations'];
		loadMenus = json['load_menus'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['translations'] = translations;
		data['load_menus'] = loadMenus;
		return data;
	}
}

class BundleParams {
	String? lang;

	BundleParams({this.lang});

	BundleParams.fromJson(Map<String, dynamic> json) {
		lang = json['lang'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['lang'] = lang;
		return data;
	}
}


class Partner {
	int? id;
	bool? messageIsFollower;
	List<int>? messageFollowerIds;
	List<int>? messagePartnerIds;
	List<int>? messageIds;
	bool? hasMessage;
	bool? messageNeedaction;
	int? messageNeedactionCounter;
	bool? messageHasError;
	int? messageHasErrorCounter;
	int? messageAttachmentCount;
	bool? messageHasSmsError;
	bool? emailNormalized;
	bool? isBlacklisted;
	int? messageBounce;
	List<Null>? activityIds;
	bool? activityState;
	bool? activityUserId;
	bool? activityTypeId;
	bool? activityTypeIcon;
	bool? activityDateDeadline;
	bool? myActivityDateDeadline;
	bool? activitySummary;
	bool? activityExceptionDecoration;
	bool? activityExceptionIcon;
	String? image1920;
	String? image1024;
	String? image512;
	String? image256;
	String? image128;
	String? avatar1920;
	String? avatar1024;
	String? avatar512;
	String? avatar256;
	String? avatar128;
	String? name;
	String? completeName;
	bool? date;
	bool? title;
	bool? parentId;
	bool? parentName;
	List<Null>? childIds;
	bool? ref;
	String? lang;
	int? activeLangCount;
	bool? tz;
	String? tzOffset;
	bool? userId;
	bool? vat;
	bool? sameVatPartnerId;
	bool? sameCompanyRegistryPartnerId;
	bool? companyRegistry;
	List<Null>? bankIds;
	bool? website;
	bool? comment;
	List<Null>? categoryId;
	bool? active;
	bool? employee;
	bool? function;
	String? type;
	bool? street;
	bool? street2;
	bool? zip;
	bool? city;
	bool? stateId;
	bool? countryId;
	bool? countryCode;
	int? partnerLatitude;
	int? partnerLongitude;
	String? email;
	String? emailFormatted;
	bool? phone;
	bool? mobile;
	bool? isCompany;
	bool? isPublic;
	bool? industryId;
	String? companyType;
	bool? companyId;
	int? color;
	List<int>? userIds;
	bool? partnerShare;
	String? contactAddress;
	List<int>? commercialPartnerId;
	bool? commercialCompanyName;
	bool? companyName;
	bool? barcode;
	List<int>? self;
	String? displayName;
	List<int>? createUid;
	String? createDate;
	List<int>? writeUid;
	String? writeDate;
	String? imStatus;
	List<int>? channelIds;
	String? contactAddressInline;
	List<Null>? starredMessageIds;
	String? contactAddressComplete;
	String? signupToken;
	String? signupType;
	String? signupExpiration;
	bool? signupValid;
	String? signupUrl;
	bool? planToChangeCar;
	bool? planToChangeBike;
	String? imageMedium;
	int? partnerGid;
	bool? additionalInfo;
	bool? phoneSanitized;
	bool? phoneSanitizedBlacklisted;
	bool? phoneBlacklisted;
	bool? mobileBlacklisted;
	bool? phoneMobileSearch;
	bool? ocnToken;

	Partner({this.id, this.messageIsFollower, this.messageFollowerIds, this.messagePartnerIds, this.messageIds, this.hasMessage, this.messageNeedaction, this.messageNeedactionCounter, this.messageHasError, this.messageHasErrorCounter, this.messageAttachmentCount, this.messageHasSmsError, this.emailNormalized, this.isBlacklisted, this.messageBounce, this.activityIds, this.activityState, this.activityUserId, this.activityTypeId, this.activityTypeIcon, this.activityDateDeadline, this.myActivityDateDeadline, this.activitySummary, this.activityExceptionDecoration, this.activityExceptionIcon, this.image1920, this.image1024, this.image512, this.image256, this.image128, this.avatar1920, this.avatar1024, this.avatar512, this.avatar256, this.avatar128, this.name, this.completeName, this.date, this.title, this.parentId, this.parentName, this.childIds, this.ref, this.lang, this.activeLangCount, this.tz, this.tzOffset, this.userId, this.vat, this.sameVatPartnerId, this.sameCompanyRegistryPartnerId, this.companyRegistry, this.bankIds, this.website, this.comment, this.categoryId, this.active, this.employee, this.function, this.type, this.street, this.street2, this.zip, this.city, this.stateId, this.countryId, this.countryCode, this.partnerLatitude, this.partnerLongitude, this.email, this.emailFormatted, this.phone, this.mobile, this.isCompany, this.isPublic, this.industryId, this.companyType, this.companyId, this.color, this.userIds, this.partnerShare, this.contactAddress, this.commercialPartnerId, this.commercialCompanyName, this.companyName, this.barcode, this.self, this.displayName, this.createUid, this.createDate, this.writeUid, this.writeDate, this.imStatus, this.channelIds, this.contactAddressInline, this.starredMessageIds, this.contactAddressComplete, this.signupToken, this.signupType, this.signupExpiration, this.signupValid, this.signupUrl, this.planToChangeCar, this.planToChangeBike, this.imageMedium, this.partnerGid, this.additionalInfo, this.phoneSanitized, this.phoneSanitizedBlacklisted, this.phoneBlacklisted, this.mobileBlacklisted, this.phoneMobileSearch, this.ocnToken});

	Partner.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		messageIsFollower = json['message_is_follower'];
		messageFollowerIds = json['message_follower_ids'].cast<int>();
		messagePartnerIds = json['message_partner_ids'].cast<int>();
		messageIds = json['message_ids'].cast<int>();
		hasMessage = json['has_message'];
		messageNeedaction = json['message_needaction'];
		messageNeedactionCounter = json['message_needaction_counter'];
		messageHasError = json['message_has_error'];
		messageHasErrorCounter = json['message_has_error_counter'];
		messageAttachmentCount = json['message_attachment_count'];
		messageHasSmsError = json['message_has_sms_error'];
		emailNormalized = json['email_normalized'];
		isBlacklisted = json['is_blacklisted'];
		messageBounce = json['message_bounce'];
		activityState = json['activity_state'];
		activityUserId = json['activity_user_id'];
		activityTypeId = json['activity_type_id'];
		activityTypeIcon = json['activity_type_icon'];
		activityDateDeadline = json['activity_date_deadline'];
		myActivityDateDeadline = json['my_activity_date_deadline'];
		activitySummary = json['activity_summary'];
		activityExceptionDecoration = json['activity_exception_decoration'];
		activityExceptionIcon = json['activity_exception_icon'];
		image1920 = json['image_1920'];
		image1024 = json['image_1024'];
		image512 = json['image_512'];
		image256 = json['image_256'];
		image128 = json['image_128'];
		avatar1920 = json['avatar_1920'];
		avatar1024 = json['avatar_1024'];
		avatar512 = json['avatar_512'];
		avatar256 = json['avatar_256'];
		avatar128 = json['avatar_128'];
		name = json['name'];
		completeName = json['complete_name'];
		date = json['date'];
		title = json['title'];
		parentId = json['parent_id'];
		parentName = json['parent_name'];
		ref = json['ref'];
		lang = json['lang'];
		activeLangCount = json['active_lang_count'];
		tz = json['tz'];
		tzOffset = json['tz_offset'];
		userId = json['user_id'];
		vat = json['vat'];
		sameVatPartnerId = json['same_vat_partner_id'];
		sameCompanyRegistryPartnerId = json['same_company_registry_partner_id'];
		companyRegistry = json['company_registry'];
		website = json['website'];
		comment = json['comment'];
		active = json['active'];
		employee = json['employee'];
		function = json['function'];
		type = json['type'];
		street = json['street'];
		street2 = json['street2'];
		zip = json['zip'];
		city = json['city'];
		stateId = json['state_id'];
		countryId = json['country_id'];
		countryCode = json['country_code'];
		partnerLatitude = json['partner_latitude'];
		partnerLongitude = json['partner_longitude'];
		email = json['email'];
		emailFormatted = json['email_formatted'];
		phone = json['phone'];
		mobile = json['mobile'];
		isCompany = json['is_company'];
		isPublic = json['is_public'];
		industryId = json['industry_id'];
		companyType = json['company_type'];
		companyId = json['company_id'];
		color = json['color'];
		userIds = json['user_ids'].cast<int>();
		partnerShare = json['partner_share'];
		contactAddress = json['contact_address'];
		commercialPartnerId = json['commercial_partner_id'].cast<int>();
		commercialCompanyName = json['commercial_company_name'];
		companyName = json['company_name'];
		barcode = json['barcode'];
		self = json['self'].cast<int>();
		displayName = json['display_name'];
		createUid = json['create_uid'].cast<int>();
		createDate = json['create_date'];
		writeUid = json['write_uid'].cast<int>();
		writeDate = json['write_date'];
		imStatus = json['im_status'];
		channelIds = json['channel_ids'].cast<int>();
		contactAddressInline = json['contact_address_inline'];
		contactAddressComplete = json['contact_address_complete'];
		signupToken = json['signup_token'];
		signupType = json['signup_type'];
		signupExpiration = json['signup_expiration'];
		signupValid = json['signup_valid'];
		signupUrl = json['signup_url'];
		planToChangeCar = json['plan_to_change_car'];
		planToChangeBike = json['plan_to_change_bike'];
		imageMedium = json['image_medium'];
		partnerGid = json['partner_gid'];
		additionalInfo = json['additional_info'];
		phoneSanitized = json['phone_sanitized'];
		phoneSanitizedBlacklisted = json['phone_sanitized_blacklisted'];
		phoneBlacklisted = json['phone_blacklisted'];
		mobileBlacklisted = json['mobile_blacklisted'];
		phoneMobileSearch = json['phone_mobile_search'];
		ocnToken = json['ocn_token'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['id'] = id;
		data['message_is_follower'] = messageIsFollower;
		data['message_follower_ids'] = messageFollowerIds;
		data['message_partner_ids'] = messagePartnerIds;
		data['message_ids'] = messageIds;
		data['has_message'] = hasMessage;
		data['message_needaction'] = messageNeedaction;
		data['message_needaction_counter'] = messageNeedactionCounter;
		data['message_has_error'] = messageHasError;
		data['message_has_error_counter'] = messageHasErrorCounter;
		data['message_attachment_count'] = messageAttachmentCount;
		data['message_has_sms_error'] = messageHasSmsError;
		data['email_normalized'] = emailNormalized;
		data['is_blacklisted'] = isBlacklisted;
		data['message_bounce'] = messageBounce;
		data['activity_state'] = activityState;
		data['activity_user_id'] = activityUserId;
		data['activity_type_id'] = activityTypeId;
		data['activity_type_icon'] = activityTypeIcon;
		data['activity_date_deadline'] = activityDateDeadline;
		data['my_activity_date_deadline'] = myActivityDateDeadline;
		data['activity_summary'] = activitySummary;
		data['activity_exception_decoration'] = activityExceptionDecoration;
		data['activity_exception_icon'] = activityExceptionIcon;
		data['image_1920'] = image1920;
		data['image_1024'] = image1024;
		data['image_512'] = image512;
		data['image_256'] = image256;
		data['image_128'] = image128;
		data['avatar_1920'] = avatar1920;
		data['avatar_1024'] = avatar1024;
		data['avatar_512'] = avatar512;
		data['avatar_256'] = avatar256;
		data['avatar_128'] = avatar128;
		data['name'] = name;
		data['complete_name'] = completeName;
		data['date'] = date;
		data['title'] = title;
		data['parent_id'] = parentId;
		data['parent_name'] = parentName;
		data['ref'] = ref;
		data['lang'] = lang;
		data['active_lang_count'] = activeLangCount;
		data['tz'] = tz;
		data['tz_offset'] = tzOffset;
		data['user_id'] = userId;
		data['vat'] = vat;
		data['same_vat_partner_id'] = sameVatPartnerId;
		data['same_company_registry_partner_id'] = sameCompanyRegistryPartnerId;
		data['company_registry'] = companyRegistry;
		data['website'] = website;
		data['comment'] = comment;

		data['active'] = active;
		data['employee'] = employee;
		data['function'] = function;
		data['type'] = type;
		data['street'] = street;
		data['street2'] = street2;
		data['zip'] = zip;
		data['city'] = city;
		data['state_id'] = stateId;
		data['country_id'] = countryId;
		data['country_code'] = countryCode;
		data['partner_latitude'] = partnerLatitude;
		data['partner_longitude'] = partnerLongitude;
		data['email'] = email;
		data['email_formatted'] = emailFormatted;
		data['phone'] = phone;
		data['mobile'] = mobile;
		data['is_company'] = isCompany;
		data['is_public'] = isPublic;
		data['industry_id'] = industryId;
		data['company_type'] = companyType;
		data['company_id'] = companyId;
		data['color'] = color;
		data['user_ids'] = userIds;
		data['partner_share'] = partnerShare;
		data['contact_address'] = contactAddress;
		data['commercial_partner_id'] = commercialPartnerId;
		data['commercial_company_name'] = commercialCompanyName;
		data['company_name'] = companyName;
		data['barcode'] = barcode;
		data['self'] = self;
		data['display_name'] = displayName;
		data['create_uid'] = createUid;
		data['create_date'] = createDate;
		data['write_uid'] = writeUid;
		data['write_date'] = writeDate;
		data['im_status'] = imStatus;
		data['channel_ids'] = channelIds;
		data['contact_address_inline'] = contactAddressInline;
		data['contact_address_complete'] = contactAddressComplete;
		data['signup_token'] = signupToken;
		data['signup_type'] = signupType;
		data['signup_expiration'] = signupExpiration;
		data['signup_valid'] = signupValid;
		data['signup_url'] = signupUrl;
		data['plan_to_change_car'] = planToChangeCar;
		data['plan_to_change_bike'] = planToChangeBike;
		data['image_medium'] = imageMedium;
		data['partner_gid'] = partnerGid;
		data['additional_info'] = additionalInfo;
		data['phone_sanitized'] = phoneSanitized;
		data['phone_sanitized_blacklisted'] = phoneSanitizedBlacklisted;
		data['phone_blacklisted'] = phoneBlacklisted;
		data['mobile_blacklisted'] = mobileBlacklisted;
		data['phone_mobile_search'] = phoneMobileSearch;
		data['ocn_token'] = ocnToken;
		return data;
	}
}

class UserObj {
	int? id;
	List<int>? partnerId;
	String? login;
	String? password;
	String? newPassword;
	String? signature;
	bool? active;
	bool? activePartner;
	bool? actionId;
	List<int>? groupsId;
	List<int>? logIds;
	String? loginDate;
	bool? share;
	int? companiesCount;
	String? tzOffset;
	List<int>? resUsersSettingsIds;
	List<int>? resUsersSettingsId;
	List<int>? companyId;
	List<int>? companyIds;
	String? name;
	String? email;
	int? accessesCount;
	int? rulesCount;
	int? groupsCount;
	String? displayName;
	List<int>? createUid;
	String? createDate;
	List<int>? writeUid;
	String? writeDate;
	bool? userGroupWarning;
	List<Null>? apiKeyIds;
	bool? lastName;
	bool? otp;
	bool? totpSecret;
	bool? totpEnabled;
	List<Null>? totpTrustedDeviceIds;
	String? imStatus;
	String? notificationType;
	String? state;
	bool? odoobotState;
	bool? odoobotFailed;
	bool? oauthProviderId;
	bool? oauthUid;
	bool? oauthAccessToken;
	bool? messageIsFollower;
	List<int>? messageFollowerIds;
	List<int>? messagePartnerIds;
	List<int>? messageIds;
	bool? hasMessage;
	bool? messageNeedaction;
	int? messageNeedactionCounter;
	bool? messageHasError;
	int? messageHasErrorCounter;
	int? messageAttachmentCount;
	bool? messageHasSmsError;
	bool? emailNormalized;
	bool? isBlacklisted;
	int? messageBounce;
	List<Null>? activityIds;
	bool? activityState;
	bool? activityUserId;
	bool? activityTypeId;
	bool? activityTypeIcon;
	bool? activityDateDeadline;
	bool? myActivityDateDeadline;
	bool? activitySummary;
	bool? activityExceptionDecoration;
	bool? activityExceptionIcon;
	String? image1920;
	String? image1024;
	String? image512;
	String? image256;
	String? image128;
	String? avatar1920;
	String? avatar1024;
	String? avatar512;
	String? avatar256;
	String? avatar128;
	String? completeName;
	bool? date;
	bool? title;
	bool? parentId;
	bool? parentName;
	List<Null>? childIds;
	bool? ref;
	String? lang;
	int? activeLangCount;
	bool? tz;
	bool? userId;
	bool? vat;
	bool? sameVatPartnerId;
	bool? sameCompanyRegistryPartnerId;
	bool? companyRegistry;
	List<Null>? bankIds;
	bool? website;
	bool? comment;
	List<Null>? categoryId;
	bool? employee;
	bool? function;
	String? type;
	bool? street;
	bool? street2;
	bool? zip;
	bool? city;
	bool? stateId;
	bool? countryId;
	bool? countryCode;
	int? partnerLatitude;
	int? partnerLongitude;
	String? emailFormatted;
	bool? phone;
	bool? mobile;
	bool? isCompany;
	bool? isPublic;
	bool? industryId;
	String? companyType;
	int? color;
	List<int>? userIds;
	bool? partnerShare;
	String? contactAddress;
	List<int>? commercialPartnerId;
	bool? commercialCompanyName;
	bool? companyName;
	bool? barcode;
	List<int>? self;
	List<int>? channelIds;
	String? contactAddressInline;
	List<Null>? starredMessageIds;
	String? contactAddressComplete;
	String? signupToken;
	String? signupType;
	String? signupExpiration;
	bool? signupValid;
	String? signupUrl;
	bool? planToChangeCar;
	bool? planToChangeBike;
	String? imageMedium;
	int? partnerGid;
	bool? additionalInfo;
	bool? phoneSanitized;
	bool? phoneSanitizedBlacklisted;
	bool? phoneBlacklisted;
	bool? mobileBlacklisted;
	bool? phoneMobileSearch;
	bool? ocnToken;
	int? selGroups24;
	int? selGroups1415;
	int? selGroups11011;
	bool? inGroup8;
	bool? inGroup12;
	bool? inGroup13;
	bool? inGroup9;
	bool? inGroup5;
	bool? inGroup6;
	bool? inGroup7;
	bool? inGroup3;

	UserObj({this.id, this.partnerId, 
  required this.login, this.password, this.newPassword, this.signature, this.active, this.activePartner, this.actionId, this.groupsId, this.logIds, this.loginDate, this.share, this.companiesCount, this.tzOffset, this.resUsersSettingsIds, this.resUsersSettingsId, this.companyId, this.companyIds, this.name, this.email, this.accessesCount, this.rulesCount, this.groupsCount, this.displayName, this.createUid, this.createDate, this.writeUid, this.writeDate, this.userGroupWarning, this.apiKeyIds, this.lastName, this.otp, this.totpSecret, this.totpEnabled, this.totpTrustedDeviceIds, this.imStatus, this.notificationType, this.state, this.odoobotState, this.odoobotFailed, this.oauthProviderId, this.oauthUid, this.oauthAccessToken, this.messageIsFollower, this.messageFollowerIds, this.messagePartnerIds, this.messageIds, this.hasMessage, this.messageNeedaction, this.messageNeedactionCounter, this.messageHasError, this.messageHasErrorCounter, this.messageAttachmentCount, this.messageHasSmsError, this.emailNormalized, this.isBlacklisted, this.messageBounce, this.activityIds, this.activityState, this.activityUserId, this.activityTypeId, this.activityTypeIcon, this.activityDateDeadline, this.myActivityDateDeadline, this.activitySummary, this.activityExceptionDecoration, this.activityExceptionIcon, this.image1920, this.image1024, this.image512, this.image256, this.image128, this.avatar1920, this.avatar1024, this.avatar512, this.avatar256, this.avatar128, this.completeName, this.date, this.title, this.parentId, this.parentName, this.childIds, this.ref, this.lang, this.activeLangCount, this.tz, this.userId, this.vat, this.sameVatPartnerId, this.sameCompanyRegistryPartnerId, this.companyRegistry, this.bankIds, this.website, this.comment, this.categoryId, this.employee, this.function, this.type, this.street, this.street2, this.zip, this.city, this.stateId, this.countryId, this.countryCode, this.partnerLatitude, this.partnerLongitude, this.emailFormatted, this.phone, this.mobile, this.isCompany, this.isPublic, this.industryId, this.companyType, this.color, this.userIds, this.partnerShare, this.contactAddress, this.commercialPartnerId, this.commercialCompanyName, this.companyName, this.barcode, this.self, this.channelIds, this.contactAddressInline, this.starredMessageIds, this.contactAddressComplete, this.signupToken, this.signupType, this.signupExpiration, this.signupValid, this.signupUrl, this.planToChangeCar, this.planToChangeBike, this.imageMedium, this.partnerGid, this.additionalInfo, this.phoneSanitized, this.phoneSanitizedBlacklisted, this.phoneBlacklisted, this.mobileBlacklisted, this.phoneMobileSearch, this.ocnToken, this.selGroups24, this.selGroups1415, this.selGroups11011, this.inGroup8, this.inGroup12, this.inGroup13, this.inGroup9, this.inGroup5, this.inGroup6, this.inGroup7, this.inGroup3});

	UserObj.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		partnerId = json['partner_id'].cast<int>();
		login = json['login'];
		password = json['password'];
		newPassword = json['new_password'];
		signature = json['signature'];
		active = json['active'];
		activePartner = json['active_partner'];
		actionId = json['action_id'];
		groupsId = json['groups_id'].cast<int>();
		logIds = json['log_ids'].cast<int>();
		loginDate = json['login_date'];
		share = json['share'];
		companiesCount = json['companies_count'];
		tzOffset = json['tz_offset'];
		resUsersSettingsIds = json['res_users_settings_ids'].cast<int>();
		resUsersSettingsId = json['res_users_settings_id'].cast<int>();
		companyId = json['company_id'].cast<int>();
		companyIds = json['company_ids'].cast<int>();
		name = json['name'];
		email = json['email'];
		accessesCount = json['accesses_count'];
		rulesCount = json['rules_count'];
		groupsCount = json['groups_count'];
		displayName = json['display_name'];
		createUid = json['create_uid'].cast<int>();
		createDate = json['create_date'];
		writeUid = json['write_uid'].cast<int>();
		writeDate = json['write_date'];
		userGroupWarning = json['user_group_warning'];
		lastName = json['last_name'];
		otp = json['otp'];
		totpSecret = json['totp_secret'];
		totpEnabled = json['totp_enabled'];
		imStatus = json['im_status'];
		notificationType = json['notification_type'];
		state = json['state'];
		odoobotState = json['odoobot_state'];
		odoobotFailed = json['odoobot_failed'];
		oauthProviderId = json['oauth_provider_id'];
		oauthUid = json['oauth_uid'];
		oauthAccessToken = json['oauth_access_token'];
		messageIsFollower = json['message_is_follower'];
		messageFollowerIds = json['message_follower_ids'].cast<int>();
		messagePartnerIds = json['message_partner_ids'].cast<int>();
		messageIds = json['message_ids'].cast<int>();
		hasMessage = json['has_message'];
		messageNeedaction = json['message_needaction'];
		messageNeedactionCounter = json['message_needaction_counter'];
		messageHasError = json['message_has_error'];
		messageHasErrorCounter = json['message_has_error_counter'];
		messageAttachmentCount = json['message_attachment_count'];
		messageHasSmsError = json['message_has_sms_error'];
		emailNormalized = json['email_normalized'];
		isBlacklisted = json['is_blacklisted'];
		messageBounce = json['message_bounce'];
		activityState = json['activity_state'];
		activityUserId = json['activity_user_id'];
		activityTypeId = json['activity_type_id'];
		activityTypeIcon = json['activity_type_icon'];
		activityDateDeadline = json['activity_date_deadline'];
		myActivityDateDeadline = json['my_activity_date_deadline'];
		activitySummary = json['activity_summary'];
		activityExceptionDecoration = json['activity_exception_decoration'];
		activityExceptionIcon = json['activity_exception_icon'];
		image1920 = json['image_1920'];
		image1024 = json['image_1024'];
		image512 = json['image_512'];
		image256 = json['image_256'];
		image128 = json['image_128'];
		avatar1920 = json['avatar_1920'];
		avatar1024 = json['avatar_1024'];
		avatar512 = json['avatar_512'];
		avatar256 = json['avatar_256'];
		avatar128 = json['avatar_128'];
		completeName = json['complete_name'];
		date = json['date'];
		title = json['title'];
		parentId = json['parent_id'];
		parentName = json['parent_name'];
		ref = json['ref'];
		lang = json['lang'];
		activeLangCount = json['active_lang_count'];
		tz = json['tz'];
		userId = json['user_id'];
		vat = json['vat'];
		sameVatPartnerId = json['same_vat_partner_id'];
		sameCompanyRegistryPartnerId = json['same_company_registry_partner_id'];
		companyRegistry = json['company_registry'];
		website = json['website'];
		comment = json['comment'];
		employee = json['employee'];
		function = json['function'];
		type = json['type'];
		street = json['street'];
		street2 = json['street2'];
		zip = json['zip'];
		city = json['city'];
		stateId = json['state_id'];
		countryId = json['country_id'];
		countryCode = json['country_code'];
		partnerLatitude = json['partner_latitude'];
		partnerLongitude = json['partner_longitude'];
		emailFormatted = json['email_formatted'];
		phone = json['phone'];
		mobile = json['mobile'];
		isCompany = json['is_company'];
		isPublic = json['is_public'];
		industryId = json['industry_id'];
		companyType = json['company_type'];
		color = json['color'];
		userIds = json['user_ids'].cast<int>();
		partnerShare = json['partner_share'];
		contactAddress = json['contact_address'];
		commercialPartnerId = json['commercial_partner_id'].cast<int>();
		commercialCompanyName = json['commercial_company_name'];
		companyName = json['company_name'];
		barcode = json['barcode'];
		self = json['self'].cast<int>();
		channelIds = json['channel_ids'].cast<int>();
		contactAddressInline = json['contact_address_inline'];
		contactAddressComplete = json['contact_address_complete'];
		signupToken = json['signup_token'];
		signupType = json['signup_type'];
		signupExpiration = json['signup_expiration'];
		signupValid = json['signup_valid'];
		signupUrl = json['signup_url'];
		planToChangeCar = json['plan_to_change_car'];
		planToChangeBike = json['plan_to_change_bike'];
		imageMedium = json['image_medium'];
		partnerGid = json['partner_gid'];
		additionalInfo = json['additional_info'];
		phoneSanitized = json['phone_sanitized'];
		phoneSanitizedBlacklisted = json['phone_sanitized_blacklisted'];
		phoneBlacklisted = json['phone_blacklisted'];
		mobileBlacklisted = json['mobile_blacklisted'];
		phoneMobileSearch = json['phone_mobile_search'];
		ocnToken = json['ocn_token'];
		selGroups24 = json['sel_groups_2_4'];
		selGroups1415 = json['sel_groups_14_15'];
		selGroups11011 = json['sel_groups_1_10_11'];
		inGroup8 = json['in_group_8'];
		inGroup12 = json['in_group_12'];
		inGroup13 = json['in_group_13'];
		inGroup9 = json['in_group_9'];
		inGroup5 = json['in_group_5'];
		inGroup6 = json['in_group_6'];
		inGroup7 = json['in_group_7'];
		inGroup3 = json['in_group_3'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['id'] = id;
		data['partner_id'] = partnerId;
		data['login'] = login;
		data['password'] = password;
		data['new_password'] = newPassword;
		data['signature'] = signature;
		data['active'] = active;
		data['active_partner'] = activePartner;
		data['action_id'] = actionId;
		data['groups_id'] = groupsId;
		data['log_ids'] = logIds;
		data['login_date'] = loginDate;
		data['share'] = share;
		data['companies_count'] = companiesCount;
		data['tz_offset'] = tzOffset;
		data['res_users_settings_ids'] = resUsersSettingsIds;
		data['res_users_settings_id'] = resUsersSettingsId;
		data['company_id'] = companyId;
		data['company_ids'] = companyIds;
		data['name'] = name;
		data['email'] = email;
		data['accesses_count'] = accessesCount;
		data['rules_count'] = rulesCount;
		data['groups_count'] = groupsCount;
		data['display_name'] = displayName;
		data['create_uid'] = createUid;
		data['create_date'] = createDate;
		data['write_uid'] = writeUid;
		data['write_date'] = writeDate;
		data['user_group_warning'] = userGroupWarning;
		data['last_name'] = lastName;
		data['otp'] = otp;
		data['totp_secret'] = totpSecret;
		data['totp_enabled'] = totpEnabled;
		data['im_status'] = imStatus;
		data['notification_type'] = notificationType;
		data['state'] = state;
		data['odoobot_state'] = odoobotState;
		data['odoobot_failed'] = odoobotFailed;
		data['oauth_provider_id'] = oauthProviderId;
		data['oauth_uid'] = oauthUid;
		data['oauth_access_token'] = oauthAccessToken;
		data['message_is_follower'] = messageIsFollower;
		data['message_follower_ids'] = messageFollowerIds;
		data['message_partner_ids'] = messagePartnerIds;
		data['message_ids'] = messageIds;
		data['has_message'] = hasMessage;
		data['message_needaction'] = messageNeedaction;
		data['message_needaction_counter'] = messageNeedactionCounter;
		data['message_has_error'] = messageHasError;
		data['message_has_error_counter'] = messageHasErrorCounter;
		data['message_attachment_count'] = messageAttachmentCount;
		data['message_has_sms_error'] = messageHasSmsError;
		data['email_normalized'] = emailNormalized;
		data['is_blacklisted'] = isBlacklisted;
		data['message_bounce'] = messageBounce;
		data['activity_state'] = activityState;
		data['activity_user_id'] = activityUserId;
		data['activity_type_id'] = activityTypeId;
		data['activity_type_icon'] = activityTypeIcon;
		data['activity_date_deadline'] = activityDateDeadline;
		data['my_activity_date_deadline'] = myActivityDateDeadline;
		data['activity_summary'] = activitySummary;
		data['activity_exception_decoration'] = activityExceptionDecoration;
		data['activity_exception_icon'] = activityExceptionIcon;
		data['image_1920'] = image1920;
		data['image_1024'] = image1024;
		data['image_512'] = image512;
		data['image_256'] = image256;
		data['image_128'] = image128;
		data['avatar_1920'] = avatar1920;
		data['avatar_1024'] = avatar1024;
		data['avatar_512'] = avatar512;
		data['avatar_256'] = avatar256;
		data['avatar_128'] = avatar128;
		data['complete_name'] = completeName;
		data['date'] = date;
		data['title'] = title;
		data['parent_id'] = parentId;
		data['parent_name'] = parentName;
		data['ref'] = ref;
		data['lang'] = lang;
		data['active_lang_count'] = activeLangCount;
		data['tz'] = tz;
		data['user_id'] = userId;
		data['vat'] = vat;
		data['same_vat_partner_id'] = sameVatPartnerId;
		data['same_company_registry_partner_id'] = sameCompanyRegistryPartnerId;
		data['company_registry'] = companyRegistry;
		data['website'] = website;
		data['comment'] = comment;
		data['employee'] = employee;
		data['function'] = function;
		data['type'] = type;
		data['street'] = street;
		data['street2'] = street2;
		data['zip'] = zip;
		data['city'] = city;
		data['state_id'] = stateId;
		data['country_id'] = countryId;
		data['country_code'] = countryCode;
		data['partner_latitude'] = partnerLatitude;
		data['partner_longitude'] = partnerLongitude;
		data['email_formatted'] = emailFormatted;
		data['phone'] = phone;
		data['mobile'] = mobile;
		data['is_company'] = isCompany;
		data['is_public'] = isPublic;
		data['industry_id'] = industryId;
		data['company_type'] = companyType;
		data['color'] = color;
		data['user_ids'] = userIds;
		data['partner_share'] = partnerShare;
		data['contact_address'] = contactAddress;
		data['commercial_partner_id'] = commercialPartnerId;
		data['commercial_company_name'] = commercialCompanyName;
		data['company_name'] = companyName;
		data['barcode'] = barcode;
		data['self'] = self;
		data['channel_ids'] = channelIds;
		data['contact_address_inline'] = contactAddressInline;
		data['contact_address_complete'] = contactAddressComplete;
		data['signup_token'] = signupToken;
		data['signup_type'] = signupType;
		data['signup_expiration'] = signupExpiration;
		data['signup_valid'] = signupValid;
		data['signup_url'] = signupUrl;
		data['plan_to_change_car'] = planToChangeCar;
		data['plan_to_change_bike'] = planToChangeBike;
		data['image_medium'] = imageMedium;
		data['partner_gid'] = partnerGid;
		data['additional_info'] = additionalInfo;
		data['phone_sanitized'] = phoneSanitized;
		data['phone_sanitized_blacklisted'] = phoneSanitizedBlacklisted;
		data['phone_blacklisted'] = phoneBlacklisted;
		data['mobile_blacklisted'] = mobileBlacklisted;
		data['phone_mobile_search'] = phoneMobileSearch;
		data['ocn_token'] = ocnToken;
		data['sel_groups_2_4'] = selGroups24;
		data['sel_groups_14_15'] = selGroups1415;
		data['sel_groups_1_10_11'] = selGroups11011;
		data['in_group_8'] = inGroup8;
		data['in_group_12'] = inGroup12;
		data['in_group_13'] = inGroup13;
		data['in_group_9'] = inGroup9;
		data['in_group_5'] = inGroup5;
		data['in_group_6'] = inGroup6;
		data['in_group_7'] = inGroup7;
		data['in_group_3'] = inGroup3;
		return data;
	}
}

