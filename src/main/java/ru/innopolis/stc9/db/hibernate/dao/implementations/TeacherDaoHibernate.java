package ru.innopolis.stc9.db.hibernate.dao.implementations;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.innopolis.stc9.db.hibernate.dao.interfaces.TeacherDao;

@Repository
public class TeacherDaoHibernate implements TeacherDao {
    private static final Logger logger = Logger.getLogger(TeacherDaoHibernate.class);
    private static final String DEBUG_BEFORE = "First  line of method. Argument(s): ";
    private static final String WARN_NPE = "Null objest : ";
    private static final String DEBUC_AFTER = "Before exit.";
    @Autowired
    private SessionFactory factory;
}