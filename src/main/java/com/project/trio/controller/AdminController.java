package com.project.trio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.trio.config.auth.PrincipalDetail;
import com.project.trio.model.AdminMemberInfo;
import com.project.trio.model.NormalMemberInfo;
import com.project.trio.service.AdminPageService;

@Controller
public class AdminController {
	
	@Autowired
	AdminPageService adminPageService;
	
	@GetMapping("/auth/adminlogin")
	public String adminlogin() {
		return "admin/adminlogin";
	}
	
	@GetMapping("/admin/adminPage")
	public String adminPage() {
		return "admin/adminPage";
	}
	
	// 관리자 유저관리
	@GetMapping("/user/{nid}/admin")
    public String adminPage(@PathVariable("nid") Integer nid, Model model, @AuthenticationPrincipal PrincipalDetail principalDetails){
		NormalMemberInfo admin = adminPageService.findNormalMemberInfo(nid);
        if(admin.getRole().equals("ROLE_ADMIN")){
            List<NormalMemberInfo> userList = adminPageService.userList();
            model.addAttribute("user",admin);
            model.addAttribute("userList",userList);
            return "/admin/adminpage";
        }else{
            return "redirect:/";
        }
    }
	
	// 관리자유저 정보수정 처리
	@PostMapping("/user/change/{nid}")
    public String userChange(@PathVariable("nid") Integer nid, NormalMemberInfo normalMemberInfo){
		adminPageService.userUpdate(nid,normalMemberInfo);

        return "redirect:/";
    }
	
}
