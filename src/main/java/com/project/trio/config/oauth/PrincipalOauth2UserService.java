package com.project.trio.config.oauth;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.project.trio.config.auth.PrincipalSocial;
import com.project.trio.config.oauth.provider.GoogleUserInfo;
import com.project.trio.config.oauth.provider.KakaoUserInfo;
import com.project.trio.config.oauth.provider.NaverUserInfo;
import com.project.trio.config.oauth.provider.OAuth2UserInfo;
import com.project.trio.model.RoleType;
import com.project.trio.model.SocialMemberInfo;
import com.project.trio.repository.SocialRepository;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

	@Autowired
	private SocialRepository socialRepository;

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oAuth2User = super.loadUser(userRequest);

		System.out.println("userRequest clientRegistration : " + userRequest.getClientRegistration());
		System.out.println("oAuth2User : " + oAuth2User);

		return processOAuth2User(userRequest, oAuth2User);
	}

	private OAuth2User processOAuth2User(OAuth2UserRequest userRequest, OAuth2User oAuth2User) {

		OAuth2UserInfo oAuth2UserInfo = null;
		if (userRequest.getClientRegistration().getRegistrationId().equals("google")) {
			System.out.println("구글 로그인 요청");
			oAuth2UserInfo = new GoogleUserInfo(oAuth2User.getAttributes());
			
		} else if (userRequest.getClientRegistration().getRegistrationId().equals("kakao")) {
			System.out.println("카카오 로그인 요청");
			oAuth2UserInfo = new KakaoUserInfo(oAuth2User.getAttributes());
			
		} else if (userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
			System.out.println("네이버 로그인 요청");
			oAuth2UserInfo = new NaverUserInfo((Map) oAuth2User.getAttributes().get("response"));
		} else {
			System.out.println("지원하지 않는 사이트 입니다!");
		}

		Optional<SocialMemberInfo> userOptional = socialRepository
				.findByProviderAndProviderId(oAuth2UserInfo.getProvider(), oAuth2UserInfo.getProviderId());

		SocialMemberInfo socialMemberInfo;
		if (userOptional.isPresent()) {
			socialMemberInfo = userOptional.get();
			socialMemberInfo.setSemail(oAuth2UserInfo.getSemail());
			socialRepository.save(socialMemberInfo);
		} else {
			// user의 패스워드가 null이기 때문에 OAuth 유저는 일반적인 로그인을 할 수 없음.
			socialMemberInfo = SocialMemberInfo.builder()
					.sid(oAuth2UserInfo.getProvider() + "_" + oAuth2UserInfo.getProviderId())
					.sname(oAuth2UserInfo.getSname())
					.semail(oAuth2UserInfo.getSemail())
					.role(RoleType.SOCIAL)
					.provider(oAuth2UserInfo.getProvider())
					.providerId(oAuth2UserInfo.getProviderId())
					.build();
			socialRepository.save(socialMemberInfo);
		}

		return new PrincipalSocial(socialMemberInfo, oAuth2User.getAttributes());
	}
}