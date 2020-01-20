package edu.hogwarts.hogwartsreg.vo;


import java.util.Objects;


public class SubjectVO {
	
	/*�����ڵ� */
	private int sub_code;
	/*�����*/
	private String sub_name;
	/*������ */
	private String professor;
	/*���� �� �ð� */
	private String daytime;
	/*���� */
	private int grade;
	/*��û �ο� */
	private int reg_num;
	/*���� �ο� */
	private int limit_num;
	
	
	/**
	 * �⺻ ������
	 */
	public SubjectVO() {
		
	}
	
	/**
	 * ��� �ʵ� �ʱ�ȭ : ������
	 * 
	 * @param sub_code �����ڵ�
	 * @param sub_name �����̸�
	 * @param professor ������
	 * @param daytime ���Ͻð�
	 * @param grade ����
	 * @param reg_num ��û�ο�
	 * @param limit_num �����ο�
	 */
	public SubjectVO(int sub_code, String sub_name, String professor, String daytime, 
					 int grade, int reg_num, int limit_num) {
		
		this.sub_code=sub_code; 
		this.sub_name=sub_name;
		this.professor=professor;
		this.daytime=daytime; 
		this.grade=grade;
		this.reg_num=reg_num;
		this.limit_num=limit_num;
	
	}
	

	public int getSubjectCode() {
		return sub_code;
	}	

	public void setSubjectCode(int sub_code) {
		this.sub_code=sub_code;
	}
	
	public String getSubjectname() {
		return sub_name;
	}
	
	public void setSubjectname(String sub_name) {
		this.sub_name=sub_name;
	}
	
	public String getSubjectProfessor(){
		return professor;	
	}
	
	public void setSubjectProfessor(String professor){
		this.professor=professor;
	}
	
	public String getSubjectDaytime(){
		return daytime;
	}
	
	public void setSubjectDaytime(String daytime){
		this.daytime=daytime;
	}
	
	public int getSubjectGrade(){
		return grade;
	}
	
	public void setSubjectGrade(int grade){
		this.grade=grade;
	}
	
	public int getRegNum(){
		return reg_num;
	}
	
	public void setRegNum(int reg_num){
		this.reg_num=reg_num;
	}
	
	public int getLimitNum(){
		return limit_num;
	}
	
	public void setLimitNum(int limit_num){
		this.limit_num=limit_num;
	}
	
	
	@Override
	public String toString() {
		return String.format(
				"MemberVO [sub_code=%d, sub_name=%s, professor=%s, daytime=%s, grade=%d, reg_num=%d, limit_num=%d]",
				sub_code, sub_name, professor, daytime, grade, reg_num, limit_num
				);
	}

	
	@Override
	public int hashCode() {
		return Objects.hash(sub_code, sub_name, professor, daytime, grade, reg_num, limit_num);
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!(obj instanceof SubjectVO)) {
			return false;
		}
		SubjectVO other = (SubjectVO) obj;       
		return Objects.equals(sub_code, other.sub_code)
				&& Objects.equals(sub_name, other.sub_name)
				&& Objects.equals(professor, other.professor) && Objects.equals(daytime, other.daytime)
				&& Objects.equals(grade, other.grade) && Objects.equals(reg_num, other.reg_num)
				&& Objects.equals(limit_num, other.limit_num);
	}

}