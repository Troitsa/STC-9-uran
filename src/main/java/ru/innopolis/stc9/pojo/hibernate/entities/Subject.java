package ru.innopolis.stc9.pojo.hibernate.entities;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Component
@Entity
@Table(name = "subject")
public class Subject {

    private long id;

    @Column(nullable = false)
    private String name;

    private Set<Speciality> specialtySet = new HashSet<>();


    private Set<Lesson> lessonList = new HashSet<>();

    public Subject() {
    }

    public Subject(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Subject(String name) {
        this.name = name;
    }

    @Id
    @SequenceGenerator(name = "subjectSeq", sequenceName = "subject_SEQUENCE", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "subjectSeq")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToMany(mappedBy = "subject", fetch = FetchType.LAZY)
    public Set<Lesson> getLessonList() {
        return lessonList;
    }

    public void setLessonList(Set<Lesson> lessonList) {
        this.lessonList = lessonList;
    }

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "specialty_subject",
            joinColumns = @JoinColumn(name = "subject_id"),
            inverseJoinColumns = @JoinColumn(name = "specialty_id"))
    public Set<Speciality> getSpecialtySet() {
        return specialtySet;
    }

    public void setSpecialtySet(Set<Speciality> specialtySet) {
        this.specialtySet = specialtySet;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Subject subject = (Subject) o;

        if (id != subject.id) return false;
        return name != null ? name.equals(subject.name) : subject.name == null;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
