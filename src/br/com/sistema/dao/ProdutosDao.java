package br.com.sistema.dao;

import java.util.List;
import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.sistema.entities.Produto;

@Component
public class ProdutosDao {

	private Session session;
	
	public ProdutosDao() {
		this.session = new SessionFactoryVraptor().getSession();
	}
	
	public Produto get(Produto p){
		Produto produto = (Produto) session.load(Produto.class, p.getId());
		
		return produto;
	}
	
	public Produto salvar(Produto produto){
		session.beginTransaction();
		session.save(produto);
		session.getTransaction().commit();
		
		return produto;
	}

	public Produto atualizar(Produto produto){
		session.beginTransaction();
		session.update(produto);
		session.getTransaction().commit();
		
		return produto;
	}
	
	public void excluir(Produto produto){
		session.beginTransaction();
		session.delete(produto);
		session.getTransaction().commit();
	}
	
	public List<Produto> lista(){
		List<Produto> produtos = session.createCriteria(Produto.class).list();
		
		return produtos;
	}
	
	public void destroy(){
		session.close();		
	}
}
