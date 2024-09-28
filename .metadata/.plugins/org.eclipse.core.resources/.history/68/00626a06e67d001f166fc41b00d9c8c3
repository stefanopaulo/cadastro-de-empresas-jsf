package com.empresa.erp.controller;

import java.io.Serializable;
import java.util.List;

import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

import com.empresa.erp.model.Empresa;
import com.empresa.erp.repository.Empresas;

@Named
@ViewScoped
public class GestaoEmpresasBean implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Inject
    private Empresas empresas;
    
    private List<Empresa> listaEmpresas;
    
    public void todasEmpresas() {
        if (empresas != null) {
            listaEmpresas = empresas.todas(); // Inicializa a lista
            if (listaEmpresas != null) {
                System.out.println("Empresas carregadas: " + listaEmpresas.size());
            } else {
                System.out.println("Nenhuma empresa foi carregada.");
            }
        } else {
            System.out.println("O repositório 'empresas' está nulo!");
        }
    }
    
    public List<Empresa> getListaEmpresas() {
        return listaEmpresas;
    }
}
