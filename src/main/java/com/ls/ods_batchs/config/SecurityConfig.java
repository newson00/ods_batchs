package com.ls.ods_batchs.config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/login", "/resources/**", "/static/**").permitAll() // 允许所有人访问登录页
                .anyRequest().authenticated() // 其他页面需要登录
                .and()
                .formLogin()
                .loginPage("/login") // 自定义登录页面
                .defaultSuccessUrl("/menu",true) // 登录成功后跳转的页面
                .permitAll()
                .and()
                .logout()
                .permitAll();

        return http.build();
    }

    @Bean
    public UserDetailsService userDetailsService() {
        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
        manager.createUser(User.withDefaultPasswordEncoder()
                .username("admin")
                .password("admin1234!@#$")
                .roles("USER")
                .build());
        return manager;
    }
}

