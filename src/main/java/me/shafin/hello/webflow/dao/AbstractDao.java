package me.shafin.hello.webflow.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * @author shafin
 * @since 11/13/16
 */
@SuppressWarnings("unchecked")
public abstract class AbstractDao<T extends Serializable> {

    private Class<T> clazz;

    @PersistenceContext
    public EntityManager em;

    public AbstractDao() {
        clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass())
                .getActualTypeArguments()[0];
    }

    public T findOne(long id) {
        return em.find(clazz, id);
    }

    public T findOneByField(String fieldName, Object value) {
        List<T> list = (List<T>) em.createQuery("FROM " + clazz.getName() + " WHERE " + fieldName + " = :val")
                .setParameter("val", value)
                .getResultList();

        if (!list.isEmpty()) {
            return list.get(0);
        }

        return null;
    }

    public List<T> findAll() {
        return em.createQuery("FROM " + clazz.getName())
                .getResultList();
    }

    public void save(T entity) {
        em.persist(entity);
    }

    public void update(T entity) {
        em.merge(entity);
    }

    public void delete(T entity) {
        em.remove(entity);
    }

    public void deleteById(long entityId) {
        T entity = findOne(entityId);
        delete(entity);
    }
}
