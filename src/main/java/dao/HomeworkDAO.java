package dao;

import model.Homework;

import javax.persistence.*;
import java.util.List;

public class HomeworkDAO {

    private EntityManagerFactory emf;

    public HomeworkDAO() {
        emf = Persistence.createEntityManagerFactory("portfolioPU");
    }

    public Homework create(Homework hw) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            em.persist(hw);
            tx.commit();
            return hw;
        } catch (RuntimeException ex) {
            if (tx.isActive()) tx.rollback();
            throw ex;
        } finally {
            em.close();
        }
    }

    public List<Homework> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            TypedQuery<Homework> q = em.createQuery("SELECT h FROM Homework h ORDER BY h.createdAt DESC", Homework.class);
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public void delete(Long id) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Homework hw = em.find(Homework.class, id);
            if (hw != null) {
                em.remove(hw);
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

}
