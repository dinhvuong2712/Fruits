package Demo.Configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    DataSource dataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("Execute SP_Account_Select_SingleByUsernameOrEmail ?")
                .passwordEncoder(getPasswordEncoder())
                .authoritiesByUsernameQuery("Execute SP_Account_SelectRoleByUsername ?");
    }

//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//            .csrf().disable()
//            .authorizeRequests()
//            .antMatchers("/admin/**").hasRole("ADMIN")
//            .antMatchers("/anonymous*").anonymous()
//            .antMatchers("/account/login").permitAll()
//            .anyRequest().authenticated()
//            .and()
//                .formLogin()
//                .loginPage("/account/login").permitAll()
//                .loginProcessingUrl("/login")
//                .usernameParameter("username")
//                .passwordParameter("password")
//                .defaultSuccessUrl("/admin/home/index", true).permitAll()
//                .failureUrl("/account/login?error=true")
//                .failureHandler(loginFailureHandler())
//                .and()
//                .logout()
//                .logoutUrl("/logout")
//                .deleteCookies("JSESSIONID")
//                .logoutSuccessHandler(logoutSuccessHandler());
//
//    }


    private AuthenticationSuccessHandler loginSuccessHandler() {
        return (request, response, authentication) ->{
            response.sendRedirect("/admin/home/index");
        };
    }

    private AuthenticationFailureHandler loginFailureHandler() {
        return (request, response, exception) -> {
            response.sendRedirect("/account/login?error=failed");
        };
    }

    private LogoutSuccessHandler logoutSuccessHandler() {
        return (request, response, authentication) ->{
            response.sendRedirect("/account/login");
        };
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable().authorizeRequests()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .anyRequest().authenticated()
                .and()
            .formLogin()
                .loginPage("/account/login").permitAll()
//                .loginProcessingUrl("/account/login")
//                .usernameParameter("username").passwordParameter("password")
                .defaultSuccessUrl("/admin/home/index",true)
                .failureForwardUrl("/account/login?error=failed")
                .and()
            .exceptionHandling()
                .accessDeniedPage("/account/accessdeny");
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }

    @Bean
    public PasswordEncoder getPasswordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }
}
