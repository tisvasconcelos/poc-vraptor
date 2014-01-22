package br.com.sistema.controller;

import java.util.List;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.sistema.dao.ProdutosDao;
import br.com.sistema.entities.Produto;

@Resource
public class ProdutosController {

	private ProdutosDao dao;
	private Result result;
	
	public ProdutosController(ProdutosDao dao, Result result) {
		this.dao = dao;
		this.result = result;
	}
	
	public void novo(){
		result.forwardTo(ProdutosController.class).form();
	}
	
	@Get("/produtos/editar/{produto.id}")
	public void editar(Produto produto){
		Produto p = dao.get(produto);
		result.include("produto", p);
		result.forwardTo(ProdutosController.class).form();
	}
	
	public void form(){
		
	}

	public void lista(){
		List<Produto> produtos = dao.lista();
		result.include("produtos", produtos);
	}
	
	
	@Post
	public void salvar(Produto produto){
		dao.salvar(produto);
		result.forwardTo(ProdutosController.class).lista();
	}
	
	@Post
	public void atualizar(Produto produto){
		Produto p = dao.atualizar(produto);
		result.forwardTo(ProdutosController.class).editar(p);
	}
	
	@Get("/produtos/excluir/{produto.id}")
	public void excluir(Produto produto){
		dao.excluir(produto);
		result.forwardTo(ProdutosController.class).lista();
	}
}
