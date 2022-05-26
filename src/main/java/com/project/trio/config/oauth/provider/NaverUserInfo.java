package com.project.trio.config.oauth.provider;

import java.util.Map;

public class NaverUserInfo implements OAuth2UserInfo{

	private Map<String, Object> attributes;
	
    public NaverUserInfo(Map<String, Object> attributes) {
        this.attributes = attributes;
    }
	
    @Override
    public String getSid() {
    	return (String) attributes.get("sid");
    }
    
    @Override
    public String getProviderId() {
        return (String) attributes.get("id");
    }

    @Override
    public String getSname() {
        return (String) attributes.get("name");
    }

    @Override
    public String getSemail() {
        return (String) attributes.get("email");
    }

	@Override
	public String getProvider() {
		return "naver";
	}

}
