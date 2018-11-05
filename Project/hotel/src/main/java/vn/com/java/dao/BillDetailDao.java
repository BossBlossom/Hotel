package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.BillDetail;

@Repository
public class BillDetailDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<BillDetail> findAll()
	{
		TypedQuery<BillDetail> query = getSession().createQuery("FROM BillDetail", BillDetail.class);
		List<BillDetail> billDetails = query.getResultList();
		return billDetails;
	}
	
	public List<BillDetail> findAllById(int id)
	{
		return new ArrayList<>();
	}
	
	public BillDetail findById(int id)
	{
		BillDetail billDetail = getSession().find(BillDetail.class, id);
		return billDetail;
	}
	
	public BillDetail findByRoom(int roomNo)
	{
		TypedQuery<BillDetail> query = getSession().createQuery("FROM BillDetail WHERE room.roomNo = :roomNo", BillDetail.class);
		query.setParameter("roomNo", roomNo);
		BillDetail billDetail = query.getSingleResult();
		return billDetail;
	}
	
	public BillDetail findByProduct(String product)
	{
		TypedQuery<BillDetail> query = getSession().createQuery("FROM BillDetail WHERE product.product = :product", BillDetail.class);
		query.setParameter("product", product);
		BillDetail billDetail = query.getSingleResult();
		return billDetail;
	}
	
	public BillDetail create(BillDetail billDetail)
	{
		getSession().save(billDetail);
		return billDetail;
	}
	
	public BillDetail update(BillDetail billDetail)
	{
		getSession().update(billDetail);
		return billDetail;
	}
}
