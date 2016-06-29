package com.org.mgws.dto;

import java.util.List;

public class CourseInfoDto {

	private String coursename;

	private List<String> coursepic;

	private String coursedetails;

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public List<String> getCoursepic() {
		return coursepic;
	}

	public void setCoursepic(List<String> coursepic) {
		this.coursepic = coursepic;
	}

	public String getCoursedetails() {
		return coursedetails;
	}

	public void setCoursedetails(String coursedetails) {
		this.coursedetails = coursedetails;
	}

}
