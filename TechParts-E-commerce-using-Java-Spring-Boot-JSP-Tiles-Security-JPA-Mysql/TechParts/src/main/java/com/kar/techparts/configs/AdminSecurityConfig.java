package com.kar.techparts.configs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kar.techparts.services.implementations.MyUserDetailsService;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Order(2)
public class AdminSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private MyUserDetailsService userDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.cors().and().csrf().disable();
		http.authorizeRequests()

				.antMatchers("/**","/home/**","/index/**","/resources/**","/error/**","/shop/**","/**/register","/images/**").permitAll()
				.antMatchers("/admin", "/admin/**", "/resources/admin/**").access("hasRole('ROLE_ADMIN')")
				.anyRequest().authenticated().and()
				
				// authorizeRequests().antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')").and().

				.formLogin().loginPage("/account/login").permitAll().defaultSuccessUrl("/home")
				.failureUrl("/account/login?error").and().logout().deleteCookies("JSESSIONID").permitAll().and()
				.exceptionHandling().accessDeniedPage("/access-denied").and().rememberMe().tokenValiditySeconds(120);

	}

}
