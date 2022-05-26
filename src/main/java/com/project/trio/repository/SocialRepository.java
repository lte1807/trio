package com.project.trio.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.trio.model.SocialMemberInfo;

public interface SocialRepository extends JpaRepository<SocialMemberInfo, Integer> {

	SocialMemberInfo findBySid(String sid);

	Optional<SocialMemberInfo> findByProviderAndProviderId(String provider, String providerId);
}
