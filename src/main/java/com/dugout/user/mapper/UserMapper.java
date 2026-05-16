package com.dugout.user.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.dugout.user.dto.UserDTO;

@Mapper
public interface UserMapper {

	List<UserDTO> getUserList();

	void insertUser(UserDTO userDto);

	UserDTO getIdDupCheck();

	UserDTO getIdDupCheck(String userId);

	UserDTO getUser(UserDTO userDto);

	void updateUser(Map<String, Object> map);

	void deleteUser(UserDTO userDto);


}
