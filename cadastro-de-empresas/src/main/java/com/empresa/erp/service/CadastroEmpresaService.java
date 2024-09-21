package com.empresa.erp.service;

import java.io.Serializable;

import javax.inject.Inject;

import com.empresa.erp.model.Empresa;
import com.empresa.erp.repository.EmpresaRepository;
import com.empresa.erp.util.Transacional;

public class CadastroEmpresaService implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Inject
	private EmpresaRepository empresaRepository;
	
	@Transacional
	public void salvar(Empresa empresa) {
		empresaRepository.guardar(empresa);
	}
	
	@Transacional
	public void excluir(Empresa empresa) {
		empresaRepository.remover(empresa);
	}

}
