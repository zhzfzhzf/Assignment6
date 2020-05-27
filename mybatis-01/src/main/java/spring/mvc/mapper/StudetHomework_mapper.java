package spring.mvc.mapper;

import spring.mvc.Bean.Student_Homework;

import java.util.List;

public interface StudetHomework_mapper {
    public List<Student_Homework> selectAll();
    public void addStudentHomework(Student_Homework sh);
}
