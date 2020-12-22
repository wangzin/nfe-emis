package bt.gov.moe.nfe.newedge.services.userservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bt.gov.moe.nfe.newedge.dao.userdao.UserDao;
import bt.gov.moe.nfe.newedge.dto.UserDto;
import bt.gov.moe.nfe.newedge.modals.UserModal;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao dao;
	
	@Override
	public UserDto getUserDetails(String userId) {
		UserModal user=dao.getUserDetails(userId);
		
		UserDto dto=new UserDto();
		
		dto.setCid(user.getCid());
		dto.setContact(user.getPhoneNo());
		dto.setEmail(user.getEmail());
		dto.setFullName(user.getName());
		dto.setGender(user.getGender().getGender());
		dto.setUserId(user.getId());
		
		return dto;
	}
	
}
