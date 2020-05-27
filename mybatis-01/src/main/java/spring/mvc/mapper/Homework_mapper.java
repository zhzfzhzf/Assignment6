package spring.mvc.mapper;

import spring.mvc.Bean.Homework;

import java.util.List;

public interface Homework_mapper {

    public List<Homework> Query_homework();
    public void addHomework(Homework hw);
}
