package com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.authentication.MyDBAuthenticationService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	@Qualifier("myDBAuthenticationService")
	private MyDBAuthenticationService myDBAauthenticationService;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
	    return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();//ko có dòng này sẽ luôn nhảy vào /403
		
		http.authorizeRequests().antMatchers("/orderList", "/order", "/accountInfo").access("hasAnyRole('USER', 'ADMIN', 'SUPERADMIN')");

		http.authorizeRequests().antMatchers("/manageAccount").access("hasRole('SUPERADMIN')");
		
		http.authorizeRequests().antMatchers("/product").access("hasAnyRole('SUPERADMIN', 'ADMIN')");
		
		//http.authorizeRequests().antMatchers("/product").access("hasRole('MANAGER')");

		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");

		http.authorizeRequests().and().formLogin()
			.loginProcessingUrl("/j_spring_security_check")
			.loginPage("/login")
			.defaultSuccessUrl("/productList")
			.failureUrl("/login?error=true")
			.usernameParameter("userName")
			.passwordParameter("password")
			.and().logout()
			.logoutUrl("/logout")
			.logoutSuccessUrl("/productList");
	}
	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(myDBAauthenticationService).passwordEncoder(bCryptPasswordEncoder());
	}
}
