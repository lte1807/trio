package com.project.trio.config.oauth.provider;

public interface OAuth2UserInfo {
	String getProviderId();
	String getProvider();
	String getSemail();
	String getSname();
	String getSid();
}
