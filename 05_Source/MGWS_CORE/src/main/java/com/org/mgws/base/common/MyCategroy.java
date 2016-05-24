package com.org.mgws.base.common;

import java.util.List;

/**
 * 菜单（因为这个的访问是最最频繁的所有需要用内存管理起来）
 * @author linliuan
 *
 */
public class MyCategroy {
	
	private List<MyCategroy> childrenClass;

	public List<MyCategroy> getChildrenClass() {
		return childrenClass;
	}

	public void setChildrenClass(List<MyCategroy> childrenClass) {
		this.childrenClass = childrenClass;
	}
	
	public MyCategroy() {
	}

}
