package vn.com.java.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.com.java.dao.AccountDao;
import vn.com.java.entity.Account;

@Service
public class UserDetailsServiceImpl implements UserDetailsService
{
	
	@Autowired
	private AccountDao accountDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println(username);
		Account account = accountDao.find(username);
		if(account==null)
			throw new UsernameNotFoundException(username + " not found!");
		
		List<GrantedAuthority> authorities = new ArrayList<>();
		
		UserDetails user = new User(account.getUsername(), account.getPassword(), authorities);
		return user;
	}
	
}
