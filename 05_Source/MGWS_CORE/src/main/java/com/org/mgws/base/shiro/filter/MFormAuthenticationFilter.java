package com.org.mgws.base.shiro.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

public class MFormAuthenticationFilter extends FormAuthenticationFilter {

	String langParam;

	protected boolean onAccessDenied(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		if (request.getAttribute(getFailureKeyAttribute()) != null) {
			return true;
		}
		return super.onAccessDenied(request, response, mappedValue);
	}

	@Override
	protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,
			ServletResponse response) throws Exception {
		String successUrl = null;
		boolean contextRelative = true;

		if (successUrl == null) {
			successUrl = this.getSuccessUrl();
		}

		if (successUrl == null) {
			throw new IllegalStateException("Success URL not available via saved request or via the "
					+ "successUrlFallback method parameter. One of these must be non-null for "
					+ "issueSuccessRedirect() to work.");
		}
		String lang = getLang(request);

		WebUtils.issueRedirect(request, response, successUrl + "?lang=" + lang, null, contextRelative);
		return false;
	}

	protected String getLang(ServletRequest request) {
		return WebUtils.getCleanParam(request, getLangParam());
	}

	public String getLangParam() {
		return langParam;
	}

	public void setLangParam(String langParam) {
		this.langParam = langParam;
	}

}
