package com.example.board;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String name;
    private String age;
    private String semester;
    private String department;
    private String part;
    private String MF;
    private String motive;
    private Date regdate;
    private int cnt;

    public int getSeq() { return seq; }
    public void setSeq(int seq) { this.seq = seq; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getAge() { return age; }
    public void setAge(String age) { this.age = age; }
    public String getSemester() { return semester; }
    public void setSemester(String semester) { this.semester = semester; }
    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }
    public String getPart() { return part; }
    public void setPart(String part) { this.part = part; }
    public String getMF() { return MF; }
    public void setMF(String MF) { this.MF = MF; }
    public String getMotive() { return motive; }
    public void setMotive(String motive) { this.motive = motive; }
    public Date getRegdate() { return regdate; }
    public void setRegdate(Date regdate) { this.regdate = regdate; }
    public int getCnt() { return cnt; }
    public void setCnt(int cnt) { this.cnt = cnt; }
}