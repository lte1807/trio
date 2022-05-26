package com.project.trio.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.trio.model.AdminMemberInfo;
import com.project.trio.model.NormalMemberInfo;
import com.project.trio.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AdminPageService {
    private final UserRepository userRepository;

    public NormalMemberInfo findNormalMemberInfo(Integer nid){
        return userRepository.findById(nid).get();
    }

    public List<NormalMemberInfo> userList(){
        return userRepository.findAll();
    }

    public void userUpdate(Integer nid,NormalMemberInfo normalMemberInfo){
    	NormalMemberInfo tempUser = userRepository.findById(nid).get();
        tempUser.setRole(normalMemberInfo.getRole());

        userRepository.save(tempUser);
    }

}
