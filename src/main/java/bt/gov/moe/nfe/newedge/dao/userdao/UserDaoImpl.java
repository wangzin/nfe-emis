package bt.gov.moe.nfe.newedge.dao.userdao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import bt.gov.moe.nfe.newedge.dto.UserDto;
import bt.gov.moe.nfe.newedge.modals.UserModal;

import org.hibernate.Session;
import org.hibernate.transform.AliasToBeanResultTransformer;

@Repository
@Transactional
public class UserDaoImpl implements UserDao{
	@PersistenceContext
	private EntityManager entityManager;
	
	protected Session getCurrentSession() {
        return entityManager.unwrap(Session.class);
    }
	protected org.hibernate.query.Query sqlQuery(String query, Class dtoClazz) {
        return getCurrentSession().createSQLQuery(query).setResultTransformer(new AliasToBeanResultTransformer(dtoClazz));
    }
	protected org.hibernate.query.Query sqlQuery(String query) {
        return getCurrentSession().createSQLQuery(query);
    }
	
	@Override
	public UserModal getUserDetails(String userId) {
		try {
			String sql = "select p from UserModal p where p.id="+userId;
			UserModal output = null;
			Query query = entityManager.createQuery(sql);
			output = (UserModal) query.getSingleResult();
		return output;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
