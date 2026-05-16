package com.dugout.user.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.dugout.user.mapper.UserMapper;
import com.dugout.user.dto.UserDTO;


@Controller
@RequestMapping("/Users")
public class UserController {

	@Autowired
	private UserMapper userMapper;
	
	
	@RequestMapping("/List")
	public ModelAndView list() {
		List<UserDTO> userList = userMapper.getUserList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/list");
		mv.addObject("userList", userList);
		return mv;
	}
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/write");
		
		return mv;
	}
	
	@RequestMapping("/Write")
	public ModelAndView write(UserDTO userDto) {
		System.out.println(userDto);
		userMapper.insertUser(userDto);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		return mv;
	}
	
	@GetMapping("/IdCheck")
	@ResponseBody
	public String idCheck(
			@RequestParam("userId") String userId
			) {
		UserDTO user = userMapper.getIdDupCheck(userId);
		
		if(user == null) {
			return "ok";
		} else {
			return "dup";
		}
	}
	
	@RequestMapping("/UpdateForm")
	public ModelAndView updateForm(UserDTO userDto) {
		
		UserDTO user = userMapper.getUser(userDto);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/update");
		mv.addObject("user",user);
		return mv;
		
	}
	
	@RequestMapping("/Update")
	public ModelAndView update(
			@RequestParam Map<String, Object> map
			) {
		userMapper.updateUser(map);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		
		return mv;
	}
	
	@RequestMapping("/Delete")
	public ModelAndView delete(UserDTO userDto) {
		userMapper.deleteUser(userDto);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Users/List");
		System.out.println("삭제되었습니다");
		return mv;
	}
	

}