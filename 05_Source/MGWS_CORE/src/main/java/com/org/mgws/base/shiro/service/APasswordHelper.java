/**
 * 
 */
package com.org.mgws.base.shiro.service;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.org.mgws.entity.TAdminLoginInfo;

/**
 * @author x-wang
 *
 */
@Service
public class APasswordHelper {
	
	private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

    @Value("${password.algorithmName}")
    private String algorithmName = "md5";
    @Value("${password.hashIterations}")
    private int hashIterations = 2;

    public void setRandomNumberGenerator(RandomNumberGenerator randomNumberGenerator) {
        this.randomNumberGenerator = randomNumberGenerator;
    }

    public void setAlgorithmName(String algorithmName) {
        this.algorithmName = algorithmName;
    }

    public void setHashIterations(int hashIterations) {
        this.hashIterations = hashIterations;
    }

    public void encryptPassword(TAdminLoginInfo adminInfo) {

    	adminInfo.setSalt(randomNumberGenerator.nextBytes().toHex());

        String newPassword = new SimpleHash(
                algorithmName,
                adminInfo.getLoginpass(),
                ByteSource.Util.bytes(adminInfo.getCredentialsSalt()),
                hashIterations).toHex();

        adminInfo.setLoginpass(newPassword);
    }
}
